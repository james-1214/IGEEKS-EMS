import { createClient } from 'npm:@supabase/supabase-js@2'
import { check } from '../_shared/token.ts'
import { judge, LANG } from '../_shared/judge.ts'

const sb = createClient(Deno.env.get('SUPABASE_URL')!, Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!)
const cors = { 'Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type', 'Access-Control-Allow-Methods': 'POST, OPTIONS' }
const J = (d: unknown, s = 200) => new Response(JSON.stringify(d), { status: s, headers: { ...cors, 'Content-Type': 'application/json' } })
class Bad extends Error { code: number; constructor(m: string, code = 400) { super(m); this.code = code } }

const secsTo = (iso: string) => Math.max(0, Math.round((new Date(iso).getTime() - Date.now()) / 1000))
const rnd = (n: number) => { const a = new Uint32Array(1); crypto.getRandomValues(a); return a[0] % n }
const shuffle = <T>(arr: T[]) => { const a = [...arr]; for (let i = a.length - 1; i > 0; i--) { const j = rnd(i + 1);[a[i], a[j]] = [a[j], a[i]] } return a }
const isChoice = (q: any) => q.type === 'mcq' || q.type === 'multi'
const isEmpty = (a: any) => a == null || a === '' || (Array.isArray(a) && !a.length) || (typeof a === 'object' && !Array.isArray(a) && !String(a.code ?? '').trim())

// Answers are stored in ORIGINAL option order. The student sees (and sends) DISPLAY order.
const toOrig = (q: any, order: number[] | undefined, a: any) => {
  if (!order || !isChoice(q)) return a
  const m = (i: any) => (Number.isInteger(i) && i >= 0 && i < order.length ? order[i] : undefined)
  if (q.type === 'mcq') return m(a)
  if (!Array.isArray(a)) return undefined
  const r = a.map(m); return r.includes(undefined) ? undefined : r
}
const toDisp = (q: any, order: number[] | undefined, a: any) => {
  if (!order || !isChoice(q) || a == null) return a
  return q.type === 'mcq' ? order.indexOf(a) : (Array.isArray(a) ? a.map((i: number) => order.indexOf(i)) : a)
}
const dispOptions = (q: any, order?: number[]) => (order && q.options ? order.map(i => q.options[i]) : q.options)
const allowedLangs = (q: any): string[] => (q.languages?.length ? q.languages : q.meta?.lang ? [q.meta.lang] : ['c', 'cpp', 'java', 'python', 'javascript', 'csharp']).filter((l: string) => LANG[l])
const ansText = (q: any, c: any) => q.type === 'mcq' ? q.options?.[c?.[0]] : q.type === 'multi' ? (c || []).map((i: number) => q.options?.[i]).join(', ') : q.type === 'code' ? '' : String(c ?? '')

function grade(q: any, a: any): number | null {
  if (isEmpty(a)) return 0
  if (q.type === 'mcq') return a === q.correct?.[0] ? 1 : 0
  if (q.type === 'multi') return Array.isArray(a) && [...a].sort().join() === [...(q.correct || [])].sort().join() ? 1 : 0
  if (q.type === 'tf') return String(a) === String(q.correct) ? 1 : 0
  if (q.type === 'short') return String(q.correct).split(',').some((x: string) => x.trim().toLowerCase() === String(a).trim().toLowerCase()) ? 1 : 0
  return null
}

async function loadTests(codeIds: string[], qs: any[]) {
  const map: Record<string, any[]> = {}
  if (codeIds.length) {
    const { data } = await sb.from('coding_tests').select('question_id,input,expected,is_hidden,position').in('question_id', codeIds).order('position')
    for (const t of data || []) (map[t.question_id] ||= []).push({ in: t.input, out: t.expected, hidden: t.is_hidden })
  }
  for (const q of qs) if (q.type === 'code' && !map[q.id]?.length) { // older questions kept tests in meta
    const m = q.meta?.tests || [], half = Math.ceil(m.length / 2)
    map[q.id] = m.map((t: any, i: number) => ({ in: t.in, out: t.out, hidden: i >= half }))
  }
  return map
}

// Run every test in Judge0. Returns null when the runner cannot be used, so the answer goes to manual review.
async function gradeCode(lang: string, code: string, tests: any[]) {
  if (!tests.length || !LANG[lang]) return null
  const res = await Promise.all(tests.map(async (t, i) => {
    try { const j = await judge(lang, code, t.in, t.out); return { position: i + 1, hidden: t.hidden, ok: j.status?.id === 3, status: j.status?.description, expected: t.out, got: j.stdout, err: j.stderr || j.compile_output, time: j.time, memory: j.memory } } catch (e) { console.error('Judge0:', e); return null }
  }))
  if (res.includes(null)) return null
  const r = res as any[]
  return { ok: r.filter(x => x.ok).length, total: r.length, tests: r,
    time_ms: Math.round(Math.max(0, ...r.map(x => Number(x.time) || 0)) * 1000), memory_kb: Math.max(0, ...r.map(x => Number(x.memory) || 0)) }
}

async function getSession(id: string, email: string) {
  const { data } = await sb.from('exam_sessions').select('*').eq('id', id).eq('email', email).maybeSingle()
  if (!data) throw new Bad('Attempt not found.', 404)
  return data
}
const solutionsVisible = (ex: any) => ex.show_solutions === 'after_submit' || (ex.show_solutions === 'after_end' && ex.end_at && Date.now() > new Date(ex.end_at).getTime())

async function pickQuestions(ex: any): Promise<string[]> {
  if (ex.selection_mode !== 'auto') return ex.shuffle ? shuffle(ex.question_ids) : ex.question_ids
  const out: string[] = []
  for (const d of ['beginner', 'intermediate', 'advanced']) {
    const k = Number(ex.difficulty_mix?.[d] || 0); if (!k) continue
    const { data } = await sb.from('questions').select('id').eq('domain_id', ex.domain_id).eq('difficulty', d)
    if ((data?.length || 0) < k) throw new Bad(`This exam needs ${k} ${d} questions but the domain has ${data?.length || 0}.`)
    out.push(...shuffle(data!.map((x: any) => x.id)).slice(0, k))
  }
  return ex.shuffle ? shuffle(out) : out
}

// ---- score an attempt on the server and store it (used for manual and automatic submit)
async function submitSession(s: any, status: 'submitted' | 'auto_submitted', current?: { question_id: string; answer: any }) {
  const { data: ex } = await sb.from('exams').select('*').eq('id', s.exam_id).single()
  const { data: qrows } = await sb.from('questions').select('*').in('id', s.question_ids)
  const qm = new Map((qrows || []).map((q: any) => [q.id, q]))
  const late = Date.now() > new Date(s.deadline_at).getTime() + 30000
  const ans: Record<string, any> = { ...s.answers }
  if (!late && current && s.question_ids.includes(current.question_id)) {
    const o = toOrig(qm.get(current.question_id), s.option_orders?.[current.question_id], current.answer)
    if (o !== undefined && !isEmpty(o)) ans[current.question_id] = o
  }
  const tmap = await loadTests((qrows || []).filter((q: any) => q.type === 'code').map((q: any) => q.id), qrows || [])
  let score = 0, max = 0, pending = 0, correct = 0, wrong = 0, unans = 0
  const rows: any[] = [], codes: any[] = [], det: any[] = [], show = solutionsVisible(ex)
  for (let i = 0; i < s.question_ids.length; i++) {
    const qid = s.question_ids[i], q: any = qm.get(qid); if (!q) continue
    const a = ans[qid], snap = { type: q.type, category: q.category, difficulty: q.difficulty, text: q.text, options: q.options, correct: q.correct, explanation: q.explanation, marks: q.marks, statement: q.statement }
    let ok: boolean | null = null, marks = 0, mx = q.marks, note = '', cr: any = null, v = ''
    if (isEmpty(a)) { unans++; v = 'Unanswered' }
    else if (q.type === 'code') {
      const lang = a.language || q.meta?.lang, code = String(a.code ?? a), r = await gradeCode(lang, code, tmap[qid] || [])
      if (!r) { pending++; mx = 0; v = 'Pending review' }
      else {
        marks = Math.floor(q.marks * r.ok / r.total + 1e-9); ok = r.ok === r.total; note = `${r.ok} of ${r.total} tests passed`
        ok ? correct++ : wrong++; v = ok ? 'Correct' : r.ok ? 'Partly correct' : 'Wrong'; cr = { language: lang, tests: r.tests, passed: r.ok, total: r.total }
        codes.push({ question_id: qid, language: lang, code, passed: r.ok, total: r.total, results: r.tests, time_ms: r.time_ms, memory_kb: r.memory_kb })
      }
    } else {
      ok = grade(q, a) === 1; marks = ok ? q.marks : -Number(ex.negative_marking) * q.marks; ok ? correct++ : wrong++; v = ok ? 'Correct' : 'Wrong'
    }
    score += marks; max += mx
    rows.push({ question_id: qid, position: i + 1, snapshot: snap, answer: a ?? null, is_correct: ok, marks_awarded: marks, max_marks: mx, flagged: !!s.flags?.[qid], code_result: cr })
    det.push({ text: q.text, v, note, marks, max: mx, ...(show ? { explanation: q.explanation, correct: ansText(q, q.correct) } : {}) })
  }
  score = Math.max(0, Math.round(score * 100) / 100)
  const pct = max ? Math.round(score / max * 100) : 0, passed = pct >= ex.pass_pct
  const took = Math.max(0, Math.round((Math.min(Date.now(), new Date(s.deadline_at).getTime()) - new Date(s.started_at).getTime()) / 1000))
  const { error } = await sb.rpc('finalize_attempt', { p_session: s.id, p_status: status, p_answers: rows, p_code: codes,
    p_attempt: { exam_title: ex.title, score, max, pct, passed, pending, correct, wrong, unanswered: unans, total: s.question_ids.length, time_taken: took, late, violations: 0 } })
  if (error) { if (String(error.message).includes('ALREADY_SUBMITTED')) throw new Bad('This attempt was already submitted.', 409); console.error(error); throw new Error('finalize') }
  const { count: hi } = await sb.from('attempts').select('*', { count: 'exact', head: true }).eq('exam_id', ex.id).gt('pct', pct)
  const { count: all } = await sb.from('attempts').select('*', { count: 'exact', head: true }).eq('exam_id', ex.id)
  return { score, max, pct, passed, pending, need: ex.pass_pct, correct, wrong, unanswered: unans, time_taken: took, late, attempt_no: s.attempt_no,
    attempts_left: Math.max(0, ex.max_attempts - s.attempt_no), rank: (hi || 0) + 1, of: all, auto: status === 'auto_submitted', det }
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: cors })
  if (req.method !== 'POST') return J({ error: 'Method not allowed' }, 405)
  try {
    const b = await req.json(), email = await check(b.token)
    if (!email) return J({ error: 'Session expired. Verify your email again.' }, 401)

    // ---------- exams the student can see, with attempts used and left
    if (b.action === 'list_exams') {
      const [{ data: exams }, { data: sess }, { data: atts }, { data: doms }] = await Promise.all([
        sb.from('exams').select('id,title,description,domain,domain_id,mode,total_min,per_sec,pass_pct,max_switches,max_attempts,start_at,end_at,question_ids,selection_mode,difficulty_mix,show_solutions').eq('live', true),
        sb.from('exam_sessions').select('exam_id,status,attempt_no').eq('email', email),
        sb.from('attempts').select('id,exam_id,attempt_no,pct,passed,submitted_at').eq('student_email', email),
        sb.from('domains').select('id,name')])
      const dn = new Map((doms || []).map((d: any) => [d.id, d.name]))
      return J({ exams: (exams || []).map((e: any) => {
        const my = (atts || []).filter((a: any) => a.exam_id === e.id), ss = (sess || []).filter((x: any) => x.exam_id === e.id)
        const used = Math.max(...ss.map((x: any) => x.attempt_no), ...my.map((a: any) => a.attempt_no), 0), now = Date.now()
        const window = e.start_at && now < new Date(e.start_at).getTime() ? 'upcoming' : e.end_at && now > new Date(e.end_at).getTime() ? 'ended' : 'open'
        const { question_ids, selection_mode, difficulty_mix, ...pub } = e
        return { ...pub, domain: dn.get(e.domain_id) || e.domain, window, attempts_used: used, attempts_left: Math.max(0, e.max_attempts - used),
          in_progress: ss.some((x: any) => x.status === 'in_progress'), best_pct: my.length ? Math.max(...my.map((a: any) => a.pct)) : null,
          total_questions: selection_mode === 'auto' ? Object.values(difficulty_mix || {}).reduce((t: number, n: any) => t + Number(n || 0), 0) : question_ids.length }
      }) })
    }

    // ---------- start a new attempt, or resume the one in progress (same questions, same server deadline)
    if (b.action === 'start_exam') {
      const { data: ex } = await sb.from('exams').select('*').eq('id', b.exam_id).eq('live', true).maybeSingle()
      if (!ex) throw new Bad('Exam not found.', 404)
      const { data: stu } = await sb.from('students').select('email').eq('email', email).maybeSingle()
      if (!stu) throw new Bad('Save your details before starting an exam.')
      const { data: act } = await sb.from('exam_sessions').select('*').eq('email', email).eq('exam_id', ex.id).eq('status', 'in_progress').maybeSingle()
      if (act && Date.now() > new Date(act.deadline_at).getTime()) { // time ran out while the student was away
        return J({ auto_submitted: true, result: await submitSession(act, 'auto_submitted') })
      }
      let qids: string[] = [], orders: Record<string, number[]> = {}
      if (!act) {
        qids = await pickQuestions(ex)
        if (ex.shuffle_options) {
          const { data: qt } = await sb.from('questions').select('id,type,options').in('id', qids)
          for (const q of qt || []) if (isChoice(q) && q.options?.length) orders[q.id] = shuffle([...Array(q.options.length).keys()])
        }
      }
      const { data: s, error } = await sb.rpc('start_attempt', { p_email: email, p_exam: ex.id, p_qids: qids, p_orders: orders })
      if (error) {
        const m = String(error.message), map: Record<string, string> = { NO_ATTEMPTS_LEFT: 'You have used all attempts for this exam.', EXAM_NOT_STARTED: 'This exam has not opened yet.', EXAM_ENDED: 'This exam has closed.', EXAM_NOT_AVAILABLE: 'Exam not available.', EXAM_HAS_NO_QUESTIONS: 'This exam has no questions yet.' }
        const k = Object.keys(map).find(x => m.includes(x)); if (k) throw new Bad(map[k], 403); console.error(error); throw new Error('start')
      }
      const { data: qrows } = await sb.from('questions').select('*').in('id', s.question_ids)
      const qm = new Map((qrows || []).map((q: any) => [q.id, q]))
      const tmap = await loadTests((qrows || []).filter((q: any) => q.type === 'code').map((q: any) => q.id), qrows || [])
      const questions = s.question_ids.map((id: string) => qm.get(id)).filter(Boolean).map((q: any) => ({
        id: q.id, type: q.type, category: q.category, difficulty: q.difficulty, title: q.title, text: q.text, marks: q.marks,
        options: dispOptions(q, s.option_orders?.[q.id]), statement: q.statement,
        ...(q.type === 'code' ? { languages: allowedLangs(q), starter: q.meta?.starter, samples: (tmap[q.id] || []).filter((t: any) => !t.hidden).map((t: any) => ({ in: t.in, out: t.out })) } : {}) }))
      const answers: Record<string, any> = {}
      for (const [qid, a] of Object.entries(s.answers || {})) answers[qid] = toDisp(qm.get(qid), s.option_orders?.[qid], a)
      return J({ session_id: s.id, attempt_no: s.attempt_no, attempts_left: Math.max(0, ex.max_attempts - s.attempt_no), resumed: !!act,
        remaining: secsTo(s.deadline_at), deadline_at: s.deadline_at, server_now: new Date().toISOString(),
        exam: { id: ex.id, title: ex.title, mode: ex.mode, per_sec: ex.per_sec, total_min: ex.total_min, pass_pct: ex.pass_pct, max_switches: ex.max_switches, negative_marking: ex.negative_marking },
        questions, answers, flags: s.flags, visited: s.visited })
    }

    // ---------- autosave one answer / review flag / visit
    if (b.action === 'save_progress') {
      const s = await getSession(b.session_id, email), q: any = (await sb.from('questions').select('id,type,options').eq('id', b.question_id).maybeSingle()).data
      if (!q || !s.question_ids.includes(b.question_id)) throw new Bad('Question not in this attempt.')
      let ans = null
      if (b.answer !== undefined && b.answer !== null && !b.clear) {
        ans = toOrig(q, s.option_orders?.[q.id], b.answer)
        if (ans === undefined) throw new Bad('Invalid answer.')
        if (JSON.stringify(ans).length > 30000) throw new Bad('Answer is too long.')
      }
      const { data, error } = await sb.rpc('save_progress', { p_session: s.id, p_email: email, p_qid: b.question_id, p_answer: ans,
        p_flag: typeof b.flag === 'boolean' ? b.flag : null, p_visited: !!b.visited, p_clear: !!b.clear })
      if (error) { console.error(error); throw new Error('save') }
      if (!data || !(data as any).id) throw new Bad('Time is over for this attempt.', 409)
      return J({ ok: true, remaining: secsTo(s.deadline_at) })
    }

    // ---------- submit (manual) or auto-submit (timer / violations); scored only on the server
    if (b.action === 'submit_exam') {
      const s = await getSession(b.session_id, email)
      if (s.status !== 'in_progress') throw new Bad('This attempt was already submitted.', 409)
      const timeUp = Date.now() >= new Date(s.deadline_at).getTime() - 1000
      const result = await submitSession(s, b.auto || timeUp ? 'auto_submitted' : 'submitted', b.current)
      if (typeof b.violations === 'number' && b.violations > 0) await sb.from('attempts').update({ violations: Math.min(99, Math.floor(b.violations)) }).eq('session_id', s.id)
      return J(result)
    }

    // ---------- run code while the exam is going on (sample tests or custom input only)
    if (b.action === 'run_code') {
      const s = await getSession(b.session_id, email)
      if (s.status !== 'in_progress' || Date.now() > new Date(s.deadline_at).getTime() + 30000) throw new Bad('The exam time is over.')
      if (!s.question_ids.includes(b.question_id)) throw new Bad('Question not in this attempt.')
      const { data: q } = await sb.from('questions').select('*').eq('id', b.question_id).single()
      if (q.type !== 'code') throw new Bad('Not a coding question.')
      const lang = String(b.language || allowedLangs(q)[0]); if (!allowedLangs(q).includes(lang)) throw new Bad('Language not allowed for this question.')
      const code = String(b.code ?? ''); if (!code.trim()) throw new Bad('Write some code first.'); if (code.length > 20000) throw new Bad('Code is too long.')
      try {
        if (b.custom) {
          const j = await judge(lang, code, String(b.stdin ?? '').slice(0, 5000))
          return J({ custom: true, status: j.status?.description, stdout: j.stdout, stderr: j.stderr, compile_output: j.compile_output, time: j.time, memory: j.memory })
        }
        const samples = ((await loadTests([q.id], [q]))[q.id] || []).filter((t: any) => !t.hidden)
        if (!samples.length) throw new Bad('This question has no sample tests. Use Run with my input.')
        const results = await Promise.all(samples.map(async (t: any) => { const j = await judge(lang, code, t.in, t.out)
          return { in: t.in, expected: t.out, got: j.stdout, ok: j.status?.id === 3, status: j.status?.description, err: j.stderr || j.compile_output } }))
        return J({ results, passed: results.filter((r: any) => r.ok).length, total: results.length })
      } catch (e) { if (e instanceof Bad) throw e; console.error('Run:', e); throw new Bad('The code runner is busy or unreachable. Try again.', 502) }
    }

    // ---------- student's own history and charts
    if (b.action === 'my_dashboard') {
      const { data: atts } = await sb.from('attempts').select('id,exam_id,exam_title,attempt_no,score,max,pct,passed,correct,wrong,unanswered,time_taken_sec,submitted_at,status').eq('student_email', email).order('submitted_at', { ascending: false })
      const A = atts || [], exIds = [...new Set(A.map((a: any) => a.exam_id).filter(Boolean))]
      const [{ data: exs }, { data: doms }] = await Promise.all([exIds.length ? sb.from('exams').select('id,domain_id').in('id', exIds) : { data: [] }, sb.from('domains').select('id,name')])
      const dn = new Map((doms || []).map((d: any) => [d.id, d.name])), ed = new Map((exs || []).map((e: any) => [e.id, dn.get(e.domain_id) || 'Other']))
      const byDomain: Record<string, number[]> = {}, byExam: Record<string, any[]> = {}
      for (const a of A as any[]) { (byDomain[ed.get(a.exam_id) || 'Other'] ||= []).push(a.pct); (byExam[a.exam_title] ||= []).push({ attempt_no: a.attempt_no, pct: a.pct }) }
      const type = { objective: { earned: 0, max: 0 }, coding: { earned: 0, max: 0 } }
      if (A.length) { const { data: rows } = await sb.from('attempt_answers').select('attempt_id,marks_awarded,max_marks,qtype:question_snapshot->>type').in('attempt_id', A.map((a: any) => a.id))
        for (const r of (rows || []) as any[]) { const t = r.qtype === 'code' ? type.coding : type.objective; t.earned += Number(r.marks_awarded); t.max += Number(r.max_marks) } }
      return J({ attempts: A, byDomain: Object.entries(byDomain).map(([domain, p]) => ({ domain, avg: Math.round(p.reduce((x, y) => x + y, 0) / p.length), best: Math.max(...p), attempts: p.length })),
        byExam: Object.entries(byExam).map(([exam, pts]) => ({ exam, points: pts.sort((x: any, y: any) => x.attempt_no - y.attempt_no) })),
        totals: { correct: A.reduce((t: number, a: any) => t + (a.correct || 0), 0), wrong: A.reduce((t: number, a: any) => t + (a.wrong || 0), 0) }, type })
    }

    // ---------- one finished attempt, solutions only when the admin allows them
    if (b.action === 'my_attempt') {
      const { data: at } = await sb.from('attempts').select('*').eq('id', b.attempt_id).eq('student_email', email).maybeSingle()
      if (!at) throw new Bad('Attempt not found.', 404)
      const { data: ex } = await sb.from('exams').select('show_solutions,end_at').eq('id', at.exam_id).maybeSingle()
      const show = !!ex && solutionsVisible(ex)
      const { data: rows } = await sb.from('attempt_answers').select('position,question_snapshot,answer,is_correct,marks_awarded,max_marks,code_result').eq('attempt_id', at.id).order('position')
      return J({ attempt: { attempt_no: at.attempt_no, score: at.score, max: at.max, pct: at.pct, passed: at.passed, correct: at.correct, wrong: at.wrong, unanswered: at.unanswered, time_taken_sec: at.time_taken_sec, submitted_at: at.submitted_at }, solutions_visible: show,
        answers: (rows || []).map((r: any) => { const q = r.question_snapshot || {}
          return { position: r.position, text: q.text, type: q.type, options: q.options, your_answer: r.answer, is_correct: r.is_correct, marks: r.marks_awarded, max: r.max_marks,
            tests: r.code_result?.tests?.map((t: any) => t.hidden ? { hidden: true, ok: t.ok } : { ok: t.ok, expected: t.expected, got: t.got }),
            ...(show ? { correct: ansText(q, q.correct), explanation: q.explanation } : {}) } }) })
    }

    return J({ error: 'Unknown action' }, 400)
  } catch (e) {
    if (e instanceof Bad) return J({ error: e.message }, e.code)
    console.error('exam function error:', e)
    return J({ error: 'Something went wrong. Please try again.' }, 500)
  }
})
