import { useState, useEffect, useMemo } from 'react'
import { sb } from '../lib'
import { Chip, dChip, Confirm, Modal, toast, Loading } from './ui'
import { TYPES } from './utils'

const CATS = { web: 'Web Development', language: 'Programming Languages', database: 'Database & Backend', entrance: 'Common Entrance' }
const DIFF_LABEL = { beginner: 'Beginner', intermediate: 'Intermediate', advanced: 'Advanced', mixed: 'Mixed' }
const toLocal = iso => iso ? new Date(new Date(iso).getTime() - new Date(iso).getTimezoneOffset() * 60000).toISOString().slice(0, 16) : ''
const fromLocal = v => v ? new Date(v).toISOString() : null
const MSG = { NO_STUDENTS_SELECTED: 'Select at least one student.', NO_BRANCH_SELECTED: 'Select at least one branch.', NO_REGISTERED_STUDENTS_SELECTED: 'None of the selected students have registered yet.', FORBIDDEN: 'Only admins can do this.', LIBRARY_EXAM_NOT_READY: 'This package has not passed content validation, so it cannot be hosted.' }
const rpcMsg = e => { const m = String(e.message || ''), k = Object.keys(MSG).find(x => m.includes(x)); return k ? MSG[k] : m.replace(/^[A-Z_]{6,}:\s*/, '') }
export const effStatus = (h, started) => h.status === 'draft' || h.status === 'cancelled' ? h.status : h.end_at && Date.now() > new Date(h.end_at) ? 'completed' : h.start_at && Date.now() < new Date(h.start_at) ? 'scheduled' : started ? 'active' : 'published'
const STC = { draft: '', scheduled: 'b', published: 'g', active: 'g', completed: 'y', cancelled: 'r' }

// ------------------------------------------------------------------ library browser
export function Library({ onHost }) {
  const [rows, setRows] = useState([]), [doms, setDoms] = useState([]), [busy, setBusy] = useState(true), [err, setErr] = useState(''), [rv, setRv] = useState(false)
  const [s, setS] = useState(''), [dom, setDom] = useState(''), [quick, setQuick] = useState('all'), [prev, setPrev] = useState(null)
  const load = async () => {
    setBusy(true)
    const [a, b] = await Promise.all([sb.from('library_exams').select('*').order('category').order('title'), sb.from('domains').select('id,name,slug')])
    if (a.error) setErr(a.error.message.includes('library_exams') ? 'The Exam Library tables are missing. Run supabase/migration_5.sql, the seed files and library/01_exam_packages.sql (see DEPLOYMENT.md).' : a.error.message); else setErr('')
    setRows(a.data || []); setDoms(b.data || []); setBusy(false)
  }
  useEffect(() => { load() }, [])
  // Runs the real database validators (validate_all_library_exams) and reloads. Readiness always comes from the database, never from the UI.
  const revalidate = async () => {
    setRv(true); const { error } = await sb.rpc('revalidate_library_exams'); setRv(false)
    if (error) return toast(/FORBIDDEN/.test(error.message) ? 'Only admins can re-validate.' : /revalidate_library_exams/.test(error.message) ? 'Re-validate needs the latest migration_5.sql (see DEPLOYMENT.md).' : error.message, 1)
    await load(); toast('Validation re-run against the database')
  }
  const dn = new Map(doms.map(d => [d.id, d.name]))
  const technical = r => r.category !== 'entrance'
  const QUICK = [['all', 'All', () => true], ['ready', 'Ready to Host', r => r.status === 'ready'], ['blocked', 'Not Ready', r => r.status !== 'ready'], ['technical', 'Technical', technical], ['entrance', 'Common Entrance', r => !technical(r)],
    ['beginner', 'Beginner', r => r.difficulty === 'beginner'], ['intermediate', 'Intermediate', r => r.difficulty === 'intermediate'], ['advanced', 'Advanced', r => r.difficulty === 'advanced']]
  const count = f => rows.filter(f).length
  const act = QUICK.find(q => q[0] === quick)[2]
  const list = useMemo(() => rows.filter(r => act(r) && (!s || r.title.toLowerCase().includes(s.toLowerCase())) && (!dom || r.domain_id === dom)), [rows, s, dom, quick])
  const nReady = rows.filter(r => r.status === 'ready').length
  return <><h1>Exam <em>Library</em></h1><p className="sub">Ready-made examinations with questions, answers and explanations already included. Pick one, set it up and host it. Built-in content is read-only. A package shows <b>Ready to host</b> only when the database validator has passed it.</p>
    <Loading on={busy} />{err && <div className="err">{err}</div>}
    {!busy && !err && <div className="card" style={{ marginBottom: 14, display: 'flex', gap: 14, alignItems: 'center', flexWrap: 'wrap' }}>
      <div><b style={{ fontSize: 22 }}>{rows.length}</b> packages</div><div><b style={{ fontSize: 22, color: 'var(--ok)' }}>{nReady}</b> ready to host</div><div><b style={{ fontSize: 22, color: rows.length - nReady ? 'var(--err, #c0392b)' : 'inherit' }}>{rows.length - nReady}</b> not ready</div>
      <div style={{ flex: 1 }} /><button className="btn s alt" disabled={rv} onClick={revalidate}>{rv ? 'Validating…' : 'Re-validate all'}</button></div>}
    <div className="tiles" style={{ marginBottom: 12, flexWrap: 'wrap' }}>{QUICK.map(([k, l, f]) => <button key={k} className={'btn s ' + (quick === k ? '' : 'alt')} onClick={() => setQuick(k)}>{l} ({count(f)})</button>)}</div>
    <div className="card" style={{ marginBottom: 16 }}><div className="grid g4"><input type="text" placeholder="Search examinations…" value={s} onChange={e => setS(e.target.value)} />
      <select value={dom} onChange={e => setDom(e.target.value)}><option value="">All domains</option>{doms.filter(d => rows.some(r => r.domain_id === d.id)).map(d => <option key={d.id} value={d.id}>{d.name}</option>)}</select></div></div>
    <div className="grid g2">{list.map(r => { const issues = r.validation?.issues || [], ok = r.status === 'ready'; return <div className="card" key={r.id}><div style={{ display: 'flex', justifyContent: 'space-between', gap: 8 }}><h3 style={{ margin: 0 }}>{r.title}</h3><Chip c={ok ? 'g' : 'r'}>{ok ? 'Ready to host' : 'Not ready'}</Chip></div>
      <p style={{ color: 'var(--mu)', margin: '6px 0 10px' }}>{r.description}</p>
      <Chip c="b">{CATS[r.category]}</Chip>{r.domain_id && <Chip>{dn.get(r.domain_id)}</Chip>}<Chip c={dChip(r.difficulty)}>{DIFF_LABEL[r.difficulty]}</Chip><Chip>{r.exam_type === 'entrance' ? 'Entrance exam' : r.exam_type === 'section' ? 'Section test' : 'Subject exam'}</Chip>
      <div style={{ margin: '10px 0', fontSize: 14 }}>Questions <b>{r.question_count}</b> / target <b>{r.target_questions}</b> · <b>{+r.total_marks}</b> marks · <b>{r.duration_min}</b> min · pass {r.pass_pct}%</div>
      {r.sections?.length > 1 && <div style={{ marginBottom: 8 }}>{r.sections.map(x => <Chip key={x.name}>{x.name}: {x.questions}</Chip>)}</div>}
      {!ok && <div className="err" style={{ fontSize: 13 }}><b>Cannot be hosted:</b>{issues.length ? <ul style={{ margin: '4px 0 0 16px' }}>{issues.slice(0, 4).map((i, k) => <li key={k}>{i.detail}</li>)}{issues.length > 4 && <li>…and {issues.length - 4} more</li>}</ul> : ' not validated yet. Click Re-validate all.'}</div>}
      {r.validated_at && <div style={{ fontSize: 12, color: 'var(--mu)' }}>Validated {new Date(r.validated_at).toLocaleString()}</div>}
      <div style={{ display: 'flex', gap: 8, marginTop: 10 }}><button className="btn s alt" onClick={() => setPrev(r)}>Preview</button><button className="btn s" disabled={!ok} onClick={() => onHost(r)}>Host Exam</button></div></div> })}</div>
    {!list.length && !busy && !err && <div className="card">No examinations match these filters.</div>}
    {prev && <Preview lib={prev} onClose={() => setPrev(null)} onHost={() => { onHost(prev); setPrev(null) }} />}</>
}

function Preview({ lib, onClose, onHost }) {
  const [qs, setQs] = useState(null), [sec, setSec] = useState('')
  useEffect(() => { sb.from('library_exam_questions').select('position,section,questions(text,type,difficulty,topic,marks,options,correct,explanation,statement)').eq('library_exam_id', lib.id).order('position').then(({ data }) => { setQs(data || []); setSec((data || [])[0]?.section || '') }) }, [])
  const secs = [...new Set((qs || []).map(x => x.section))], shown = (qs || []).filter(x => x.section === sec)
  const ans = q => q.type === 'tf' ? (q.correct === 'true' ? 'True' : 'False') : q.type === 'short' ? String(q.correct) : q.type === 'code' ? 'Checked with hidden test cases' : (q.correct || []).map(i => q.options[i]).join(', ')
  return <Modal title={lib.title} onClose={onClose} wide>
    <p className="sub">{lib.description}</p><div style={{ marginBottom: 10 }}><Chip>{lib.question_count} questions</Chip><Chip>{+lib.total_marks} marks</Chip><Chip>{lib.duration_min} min</Chip><Chip>Pass {lib.pass_pct}%</Chip><Chip c="y">Read-only content · answers visible to admins only</Chip></div>
    {lib.status !== 'ready' && <div className="err">Not ready: {(lib.validation?.issues || []).slice(0, 3).map(i => i.detail).join(' · ') || 'not validated'}</div>}
    {secs.length > 1 && <div className="tiles" style={{ marginBottom: 10 }}>{secs.map(x => <button key={x} className={'btn s ' + (sec === x ? '' : 'alt')} onClick={() => setSec(x)}>{x}</button>)}</div>}
    <Loading on={!qs} />
    <div style={{ maxHeight: '52vh', overflow: 'auto' }}>{shown.map((x, i) => { const q = x.questions; return <div key={i} style={{ borderBottom: '1px solid var(--bd)', padding: '10px 0' }}>
      <b>{x.position}. {q.text}</b><div><Chip c={dChip(q.difficulty)}>{q.difficulty}</Chip><Chip>{TYPES[q.type]}</Chip><Chip>{q.marks} mark{q.marks > 1 ? 's' : ''}</Chip>{q.topic && <Chip>{q.topic}</Chip>}</div>
      {q.options && <ol type="A" style={{ margin: '6px 0 6px 18px' }}>{q.options.map((o, k) => <li key={k} style={{ fontWeight: (q.type === 'mcq' || q.type === 'multi') && q.correct.includes(k) ? 700 : 400, color: (q.type === 'mcq' || q.type === 'multi') && q.correct.includes(k) ? 'var(--ok)' : 'inherit' }}>{o}</li>)}</ol>}
      <div style={{ fontSize: 13, color: 'var(--mu)' }}><b>Answer:</b> {ans(q)}{q.explanation && <> · {q.explanation}</>}</div></div> })}</div>
    <div style={{ display: 'flex', gap: 10, marginTop: 12 }}><button className="btn alt" onClick={onClose}>Close</button><button className="btn" disabled={lib.status !== 'ready'} onClick={onHost}>Host Exam</button></div></Modal>
}

// ------------------------------------------------------------------ host wizard
const STEPS = ['Details', 'Settings', 'Schedule', 'Eligibility', 'Review']
export function HostWizard({ lib, onCancel, onDone }) {
  const [step, setStep] = useState(0), [busy, setBusy] = useState(false), [confirm, setConfirm] = useState(null)
  const [c, setC] = useState({ title: lib.title, description: lib.description || '', instructions: '', duration_min: lib.duration_min, pass_pct: lib.pass_pct, max_attempts: 1, negative_marking: 0, shuffle_questions: true, shuffle_options: true,
    max_switches: 2, require_fullscreen: true, require_camera: false, require_seb: false, coding_policy: lib.coding_policy || 'required_all', coding_branches: [], coding_min: lib.coding_min || 0, show_solutions: 'after_end', marks_multiplier: 1, start_at: '', end_at: '', target_mode: 'all', branches: [] })
  const [students, setStudents] = useState([]), [picked, setPicked] = useState(new Set()), [q, setQ] = useState('')
  const up = p => setC(x => ({ ...x, ...p }))
  const hasCoding = (lib.sections || []).some(x => x.name === 'Coding'), codingN = (lib.sections || []).find(x => x.name === 'Coding')?.questions || 0
  const [cls, setCls] = useState([])
  useEffect(() => { if (hasCoding && c.coding_policy === 'required_engineering') sb.rpc('classify_branches', { p_custom: c.coding_branches }).then(({ data }) => setCls(data || [])) }, [hasCoding, c.coding_policy, c.coding_branches.join('|')])
  useEffect(() => { sb.from('students').select('email,name,usn,branch,college').not('name', 'is', null).order('name').limit(5000).then(({ data }) => setStudents(data || [])) }, [])
  const branches = useMemo(() => { const m = new Map(); students.forEach(s => { const k = (s.branch || '').trim().toLowerCase(); if (k) m.set(k, { name: s.branch.trim(), n: (m.get(k)?.n || 0) + 1 }) }); return [...m.entries()].map(([k, v]) => ({ key: k, ...v })).sort((a, b) => b.n - a.n) }, [students])
  const eligibleCount = c.target_mode === 'all' ? students.length : c.target_mode === 'branch' ? students.filter(s => c.branches.some(b => b.toLowerCase() === (s.branch || '').trim().toLowerCase())).length : picked.size
  const marks = +(lib.total_marks * c.marks_multiplier).toFixed(2)
  const problems = () => {
    const p = []; if (!c.title.trim()) p.push('Enter an exam title.'); if (!(+c.duration_min > 0)) p.push('Duration must be above 0 minutes.')
    if (!(+c.pass_pct >= 1 && +c.pass_pct <= 100)) p.push('Passing percentage must be 1 to 100.'); if (!(+c.max_attempts >= 1)) p.push('Attempts must be at least 1.')
    if (c.start_at && c.end_at && new Date(c.end_at) <= new Date(c.start_at)) p.push('End time must be after the start time.'); if (c.end_at && new Date(c.end_at) <= new Date()) p.push('End time is in the past.')
    if (c.start_at && c.end_at && (new Date(c.end_at) - new Date(c.start_at)) / 60000 < +c.duration_min) p.push('The window between start and end is shorter than the duration, so late starters would be cut short.')
    if (c.target_mode === 'branch' && !c.branches.length) p.push('Select at least one branch.'); if (c.target_mode === 'selected' && !picked.size) p.push('Select at least one student.')
    if (!(+c.marks_multiplier >= 0.25)) p.push('Marks multiplier must be at least 0.25.')
    return p
  }
  const host = async publish => {
    setBusy(true)
    const cfg = { ...c, duration_min: +c.duration_min, pass_pct: +c.pass_pct, max_attempts: +c.max_attempts, negative_marking: +c.negative_marking, max_switches: +c.max_switches, marks_multiplier: +c.marks_multiplier, start_at: fromLocal(c.start_at), end_at: fromLocal(c.end_at), publish, proctoring: {}, coding_min: +c.coding_min }
    const { error } = await sb.rpc('host_exam', { p_library: lib.id, p_cfg: cfg, p_students: [...picked] })
    setBusy(false); setConfirm(null)
    if (error) return toast(rpcMsg(error), 1)
    toast(publish ? (c.start_at && new Date(c.start_at) > new Date() ? 'Exam scheduled' : 'Exam published') : 'Saved as draft'); onDone()
  }
  const next = () => { const p = problems(); if (step === 3 || step === 2 || step === 1) { const relevant = p.filter(m => step === 1 ? /title|Duration|Passing|Attempts|multiplier/.test(m) : step === 2 ? /time|window/.test(m) : /branch|student/.test(m)); if (relevant.length) return toast(relevant[0], 1) } setStep(step + 1) }
  const F = (k, l, t = 'number', extra = {}) => <div><label className="f">{l}</label><input type={t} value={c[k]} onChange={e => up({ [k]: e.target.value })} {...extra} /></div>
  const T = (k, l, hint) => <label className="qpick"><input type="checkbox" checked={c[k]} onChange={e => up({ [k]: e.target.checked })} /><span>{l}{hint && <small style={{ display: 'block', color: 'var(--mu)' }}>{hint}</small>}</span></label>
  const shown = students.filter(s => !q || (s.name + s.email + (s.usn || '')).toLowerCase().includes(q.toLowerCase()))
  return <><h1>Host <em>exam</em></h1><p className="sub">{lib.title} · {lib.question_count} questions · {+lib.total_marks} marks. The questions are fixed. Everything else is yours to set.</p>
    <div className="tiles" style={{ marginBottom: 14 }}>{STEPS.map((x, i) => <button key={x} className={'btn s ' + (i === step ? '' : 'alt')} onClick={() => i <= step && setStep(i)}>{i + 1}. {x}</button>)}</div>
    <div className="card">
      {step === 0 && <><label className="f">Exam title shown to students</label><input type="text" value={c.title} onChange={e => up({ title: e.target.value })} />
        <label className="f">Description</label><textarea style={{ minHeight: 70, fontFamily: 'inherit' }} value={c.description} onChange={e => up({ description: e.target.value })} />
        <label className="f">Extra instructions for students (optional)</label><textarea style={{ minHeight: 70, fontFamily: 'inherit' }} value={c.instructions} onChange={e => up({ instructions: e.target.value })} placeholder="For example: keep your ID card ready. Calculators are not allowed." />
        <div className="note" style={{ marginTop: 10 }}>This package is a frozen copy: <b>{lib.question_count} questions, {+lib.total_marks} marks</b>{lib.sections?.length > 1 && <> ({lib.sections.map(x => `${x.name} ${x.questions}`).join(', ')})</>}. Later changes to the library never affect an exam you host.</div></>}
      {step === 1 && <><div className="grid g4">{F('duration_min', 'Duration (minutes)', 'number', { min: 1 })}{F('pass_pct', 'Passing percentage', 'number', { min: 1, max: 100 })}{F('max_attempts', 'Maximum attempts', 'number', { min: 1, max: 50 })}
        <div><label className="f">Negative marking</label><select value={c.negative_marking} onChange={e => up({ negative_marking: e.target.value })}>{[0, 0.25, 0.33, 0.5, 1].map(v => <option key={v} value={v}>{v === 0 ? 'None' : `${v} of the question's marks`}</option>)}</select></div></div>
        <div className="grid g4" style={{ marginTop: 10 }}><div><label className="f">Marks scale</label><select value={c.marks_multiplier} onChange={e => up({ marks_multiplier: e.target.value })}>{[0.5, 1, 1.5, 2, 3, 4, 5].map(v => <option key={v} value={v}>× {v} → {+(lib.total_marks * v).toFixed(2)} marks</option>)}</select></div>
          {F('max_switches', 'Tab switches allowed', 'number', { min: 0, max: 20 })}<div><label className="f">Show solutions</label><select value={c.show_solutions} onChange={e => up({ show_solutions: e.target.value })}><option value="never">Never</option><option value="after_submit">After submitting</option><option value="after_end">After the exam closes</option></select></div></div>
        <div style={{ marginTop: 10 }}>{T('shuffle_questions', 'Randomise question order')}{T('shuffle_options', 'Randomise answer options')}{T('require_fullscreen', 'Require fullscreen', 'Leaving fullscreen counts as a violation.')}{T('require_camera', 'Require camera', 'Students must pass a camera check before starting. A small photo is stored about every 30 seconds for you to review under Hosted exams, Proctoring.')}{T('require_seb', 'Require Safe Exam Browser', 'Blocks browsers that do not identify themselves as Safe Exam Browser. This is a user-agent check: it stops normal browsers, but it can be faked.')}</div>
        {hasCoding && <div className="note" style={{ marginTop: 14 }}><b>Coding section ({codingN} questions)</b>
          <div className="grid g2" style={{ marginTop: 8 }}><div><label className="f">Who must attempt coding?</label><select value={c.coding_policy} onChange={e => up({ coding_policy: e.target.value })}><option value="required_engineering">Mandatory for engineering branches, optional for others</option><option value="optional">Optional for everyone</option><option value="required_all">Mandatory for everyone</option></select></div>
            {c.coding_policy !== 'optional' && <div><label className="f">Minimum coding questions to attempt (where mandatory)</label><input type="number" min="0" max={codingN} value={c.coding_min} onChange={e => up({ coding_min: e.target.value })} /></div>}</div>
          {c.coding_policy === 'required_engineering' && <><label className="f">Engineering branches (leave empty to detect automatically)</label><input type="text" placeholder="For example: CSE, ECE, Mechanical" value={(c.coding_branches || []).join(', ')} onChange={e => up({ coding_branches: e.target.value.split(',').map(x => x.trim().toLowerCase()).filter(Boolean) })} />
            <div style={{ marginTop: 8, fontSize: 13 }}>{cls.length ? cls.map(r => <span key={r.branch} className={'chip ' + (r.engineering ? 'b' : '')}>{r.branch} ({r.students}): {r.engineering ? 'coding mandatory' : 'coding optional'}</span>) : <span style={{ color: 'var(--mu)' }}>No student branches yet.</span>}</div></>}
          <div style={{ marginTop: 8, fontSize: 13, color: 'var(--mu)' }}>Students for whom coding is optional are scored only on the coding questions they attempt. Skipped ones do not lower their percentage.</div></div>}</>}
      {step === 2 && <><div className="grid g2">{F('start_at', 'Opens at (leave empty to open on publish)', 'datetime-local')}{F('end_at', 'Closes at (leave empty for no closing time)', 'datetime-local')}</div>
        <div className="note" style={{ marginTop: 10 }}>Students start any time inside this window and then get {c.duration_min} minutes. An attempt never runs past the closing time. Set a start in the future to schedule the exam.</div></>}
      {step === 3 && <><div className="tiles" style={{ marginBottom: 12 }}>{[['all', 'All eligible students'], ['branch', 'Branch-wise'], ['selected', 'Selected students']].map(([k, l]) => <button key={k} className={'btn s ' + (c.target_mode === k ? '' : 'alt')} onClick={() => up({ target_mode: k })}>{l}</button>)}</div>
        {c.target_mode === 'all' && <p className="sub">Every registered student can see and take this exam ({students.length} students).</p>}
        {c.target_mode === 'branch' && <><p className="sub">Branches come from the details students entered. Matching ignores capital letters and extra spaces.</p><div className="tiles" style={{ flexWrap: 'wrap' }}>{branches.map(b => { const on = c.branches.some(x => x.toLowerCase() === b.key); return <button key={b.key} className={'btn s ' + (on ? '' : 'alt')} onClick={() => up({ branches: on ? c.branches.filter(x => x.toLowerCase() !== b.key) : [...c.branches, b.name] })}>{b.name} ({b.n})</button> })}{!branches.length && <p className="sub">No students have registered yet.</p>}</div></>}
        {c.target_mode === 'selected' && <><div style={{ display: 'flex', gap: 8, marginBottom: 8 }}><input type="text" placeholder="Search name, email or USN…" value={q} onChange={e => setQ(e.target.value)} /><button className="btn s alt" onClick={() => setPicked(new Set([...picked, ...shown.map(s => s.email)]))}>Select shown ({shown.length})</button><button className="btn s del" onClick={() => setPicked(new Set())}>Clear</button></div>
          <div style={{ maxHeight: 320, overflow: 'auto', border: '1px solid var(--bd)', borderRadius: 12, padding: '4px 12px' }}>{shown.map(s => <label className="qpick" key={s.email} style={{ alignItems: 'center', borderBottom: '1px solid var(--bd)' }}><input type="checkbox" checked={picked.has(s.email)} onChange={() => { const n = new Set(picked); n.has(s.email) ? n.delete(s.email) : n.add(s.email); setPicked(n) }} /><span>{s.name} <small style={{ color: 'var(--mu)' }}>{s.usn} · {s.branch} · {s.email}</small></span></label>)}</div></>}
        <div className="note" style={{ marginTop: 12 }}><b>{eligibleCount}</b> student{eligibleCount === 1 ? '' : 's'} will be eligible.</div></>}
      {step === 4 && <><h2>Final check</h2><table><tbody>{[['Exam', c.title], ['Based on', lib.title], ['Questions / marks', `${lib.question_count} / ${marks}`], ['Duration', c.duration_min + ' min'], ['Pass mark', c.pass_pct + '%'], ['Attempts', c.max_attempts], ['Negative marking', +c.negative_marking ? c.negative_marking + ' of marks' : 'None'],
        ['Randomisation', [c.shuffle_questions && 'questions', c.shuffle_options && 'options'].filter(Boolean).join(' + ') || 'None'], ['Proctoring', [c.require_fullscreen && 'fullscreen', `${c.max_switches} tab switches`, c.require_camera && 'camera', c.require_seb && 'Safe Exam Browser'].filter(Boolean).join(', ')], ...(hasCoding ? [['Coding', c.coding_policy === 'required_engineering' ? `Mandatory for engineering branches (at least ${c.coding_min}), optional for others` : c.coding_policy === 'optional' ? 'Optional for everyone' : 'Mandatory for everyone']] : []),
        ['Window', `${c.start_at ? new Date(c.start_at).toLocaleString() : 'Opens on publish'} → ${c.end_at ? new Date(c.end_at).toLocaleString() : 'no closing time'}`], ['Eligible', c.target_mode === 'all' ? `All students (${eligibleCount})` : c.target_mode === 'branch' ? `Branches: ${c.branches.join(', ')} (${eligibleCount})` : `${eligibleCount} selected students`]].map(([k, v]) => <tr key={k}><td style={{ color: 'var(--mu)', width: 170 }}>{k}</td><td><b>{v}</b></td></tr>)}</tbody></table>
        {problems().map(m => <div className="err" key={m}>{m}</div>)}</>}
      <div style={{ display: 'flex', gap: 10, marginTop: 16, flexWrap: 'wrap' }}><button className="btn alt" onClick={step ? () => setStep(step - 1) : onCancel}>{step ? 'Back' : 'Cancel'}</button>
        {step < 4 && <button className="btn" onClick={next}>Next</button>}
        {step === 4 && <><button className="btn alt" disabled={busy || problems().length > 0} onClick={() => host(false)}>Save as draft</button><button className="btn" disabled={busy || problems().length > 0} onClick={() => setConfirm(true)}>{c.start_at && new Date(c.start_at) > new Date() ? 'Schedule exam' : 'Publish exam'}</button></>}</div></div>
    {confirm && <Confirm yes={c.start_at && new Date(c.start_at) > new Date() ? 'Schedule' : 'Publish'} text={`${c.start_at && new Date(c.start_at) > new Date() ? 'Schedule' : 'Publish'} "${c.title}" for ${eligibleCount} student${eligibleCount === 1 ? '' : 's'}? Questions are frozen at this point.`} onYes={() => host(true)} onNo={() => setConfirm(null)} />}</>
}

// ------------------------------------------------------------------ hosted exams
export function Hosted({ goLibrary }) {
  const [rows, setRows] = useState([]), [sess, setSess] = useState([]), [busy, setBusy] = useState(true), [cf, setCf] = useState(null), [edit, setEdit] = useState(null), [f, setF] = useState(''), [proc, setProc] = useState(null)
  const load = async () => { setBusy(true); const [a, b, c] = await Promise.all([sb.from('hosted_exams').select('*,library_exams(title,category,difficulty)').order('created_at', { ascending: false }), sb.from('exam_sessions').select('exam_id,status'), sb.from('hosted_exam_students').select('hosted_exam_id')]); setRows((a.data || []).map(h => ({ ...h, picked: (c.data || []).filter(x => x.hosted_exam_id === h.id).length }))); setSess(b.data || []); setBusy(false) }
  useEffect(() => { load() }, [])
  const act = async (h, a) => { const { error } = await sb.rpc('set_hosted_status', { p_id: h.id, p_action: a }); setCf(null); error ? toast(rpcMsg(error), 1) : (toast('Updated'), load()) }
  const list = rows.map(h => ({ ...h, eff: effStatus(h, sess.some(s => s.exam_id === h.exam_id)), n: sess.filter(s => s.exam_id === h.exam_id).length })).filter(h => !f || h.eff === f)
  return <><h1>Hosted <em>exams</em></h1><p className="sub">Exams you have hosted from the library. Questions are frozen; you can change schedule, targeting and, until students start, scoring settings.</p><Loading on={busy} />
    <div className="tiles" style={{ marginBottom: 12 }}>{['', 'draft', 'scheduled', 'published', 'active', 'completed', 'cancelled'].map(k => <button key={k} className={'btn s ' + (f === k ? '' : 'alt')} onClick={() => setF(k)}>{k ? k[0].toUpperCase() + k.slice(1) : 'All'}</button>)}</div>
    <div className="card">{list.map(h => <div className="row" key={h.id}><div style={{ flex: 1, minWidth: 260 }}><h3>{h.title}</h3><Chip c={STC[h.eff]}>{h.eff}</Chip><Chip>{h.library_exams?.title}</Chip><Chip>{h.question_count} questions · {+h.total_marks} marks</Chip><Chip>{h.duration_min} min</Chip>{h.require_camera && <Chip c="y">📷 camera</Chip>}{h.require_seb && <Chip c="y">SEB</Chip>}{h.coding_policy === 'required_engineering' && <Chip c="b">coding: engineering mandatory</Chip>}{h.coding_policy === 'optional' && <Chip c="b">coding optional</Chip>}<Chip>{h.target_mode === 'all' ? 'All students' : h.target_mode === 'branch' ? 'Branches: ' + h.branches.join(', ') : h.picked + ' selected'}</Chip>
      <div style={{ color: 'var(--mu)', fontSize: 13, marginTop: 4 }}>{h.start_at ? new Date(h.start_at).toLocaleString() : 'Opens on publish'} → {h.end_at ? new Date(h.end_at).toLocaleString() : 'no closing time'} · {h.n} attempt{h.n === 1 ? '' : 's'} started</div></div>
      <div style={{ display: 'flex', gap: 6, flexWrap: 'wrap' }}>{(h.require_camera || h.n > 0) && <button className="btn s alt" onClick={() => setProc(h)}>Proctoring</button>}{h.eff !== 'cancelled' && h.eff !== 'completed' && <button className="btn s alt" onClick={() => setEdit(h)}>Edit settings</button>}
        {h.eff === 'draft' && <button className="btn s" onClick={() => setCf({ h, a: 'publish', t: 'Publish this exam to students now?' })}>Publish</button>}
        {['scheduled', 'published'].includes(h.eff) && <button className="btn s alt" onClick={() => setCf({ h, a: 'unpublish', t: 'Move back to draft? Students will no longer see it.' })}>Unpublish</button>}
        {!['cancelled', 'completed', 'draft'].includes(h.eff) && <button className="btn s del" onClick={() => setCf({ h, a: 'cancel', t: 'Cancel this exam? Students can no longer start it. Results already stored are kept.' })}>Cancel</button>}</div></div>)}
      {!list.length && !busy && <p className="sub">Nothing here yet. Open the <a href="#x" onClick={e => { e.preventDefault(); goLibrary() }}>Exam Library</a> and click Host Exam.</p>}</div>
    {cf && <Confirm yes={{ publish: 'Publish', unpublish: 'Unpublish', cancel: 'Cancel exam' }[cf.a]} text={cf.t} onYes={() => act(cf.h, cf.a)} onNo={() => setCf(null)} />}
    {proc && <ProctorView h={proc} onClose={() => setProc(null)} />}
    {edit && <EditHosted h={edit} locked={sess.some(s => s.exam_id === edit.exam_id)} onClose={() => setEdit(null)} onSaved={() => { setEdit(null); load() }} />}</>
}

function EditHosted({ h, locked, onClose, onSaved }) {
  const [c, setC] = useState({ title: h.title, description: h.description || '', instructions: h.instructions || '', duration_min: h.duration_min, pass_pct: h.pass_pct, max_attempts: h.max_attempts, negative_marking: h.negative_marking, max_switches: h.max_switches, require_fullscreen: h.require_fullscreen, ai_proctoring: h.ai_proctoring, show_solutions: h.show_solutions, start_at: toLocal(h.start_at), end_at: toLocal(h.end_at), shuffle_questions: h.shuffle_questions, shuffle_options: h.shuffle_options, require_camera: h.require_camera, require_seb: h.require_seb, coding_policy: h.coding_policy, coding_min: h.coding_min })
  const [busy, setBusy] = useState(false); const up = p => setC(x => ({ ...x, ...p }))
  const save = async () => {
    if (c.start_at && c.end_at && new Date(c.end_at) <= new Date(c.start_at)) return toast('End time must be after the start time', 1)
    setBusy(true); const patch = { ...c, start_at: fromLocal(c.start_at), end_at: fromLocal(c.end_at), duration_min: +c.duration_min, pass_pct: +c.pass_pct, max_attempts: +c.max_attempts, negative_marking: +c.negative_marking, max_switches: +c.max_switches }
    if (locked) for (const k of ['duration_min', 'pass_pct', 'negative_marking', 'shuffle_questions', 'shuffle_options', 'require_camera', 'require_seb', 'coding_policy', 'coding_min']) delete patch[k]
    const { error } = await sb.rpc('update_hosted_exam', { p_id: h.id, p_patch: patch }); setBusy(false); error ? toast(rpcMsg(error), 1) : (toast('Settings saved'), onSaved())
  }
  return <Modal title={'Edit: ' + h.title} onClose={onClose} wide>{locked && <div className="note">Students have started. Duration, pass mark, negative marking and randomisation are locked so every attempt is scored the same way.</div>}
    <label className="f">Title</label><input type="text" value={c.title} onChange={e => up({ title: e.target.value })} /><label className="f">Description</label><textarea style={{ minHeight: 56, fontFamily: 'inherit' }} value={c.description} onChange={e => up({ description: e.target.value })} />
    <div className="grid g4"><div><label className="f">Duration (min)</label><input type="number" disabled={locked} value={c.duration_min} onChange={e => up({ duration_min: e.target.value })} /></div><div><label className="f">Pass %</label><input type="number" disabled={locked} value={c.pass_pct} onChange={e => up({ pass_pct: e.target.value })} /></div>
      <div><label className="f">Attempts</label><input type="number" value={c.max_attempts} onChange={e => up({ max_attempts: e.target.value })} /></div><div><label className="f">Negative marking</label><input type="number" step="0.05" min="0" max="1" disabled={locked} value={c.negative_marking} onChange={e => up({ negative_marking: e.target.value })} /></div></div>
    <div className="grid g4"><div><label className="f">Camera</label><select disabled={locked} value={c.require_camera ? '1' : '0'} onChange={e => up({ require_camera: e.target.value === '1' })}><option value="0">Not required</option><option value="1">Required</option></select></div><div><label className="f">Safe Exam Browser</label><select disabled={locked} value={c.require_seb ? '1' : '0'} onChange={e => up({ require_seb: e.target.value === '1' })}><option value="0">Not required</option><option value="1">Required</option></select></div><div><label className="f">Coding</label><select disabled={locked} value={c.coding_policy} onChange={e => up({ coding_policy: e.target.value })}><option value="required_all">Mandatory for all</option><option value="required_engineering">Mandatory for engineering</option><option value="optional">Optional</option></select></div><div><label className="f">Min coding</label><input type="number" disabled={locked} value={c.coding_min} onChange={e => up({ coding_min: e.target.value })} /></div></div>
    <div className="grid g2"><div><label className="f">Opens at</label><input type="datetime-local" value={c.start_at} onChange={e => up({ start_at: e.target.value })} /></div><div><label className="f">Closes at</label><input type="datetime-local" value={c.end_at} onChange={e => up({ end_at: e.target.value })} /></div></div>
    <div style={{ display: 'flex', gap: 10, marginTop: 14 }}><button className="btn alt" onClick={onClose}>Cancel</button><button className="btn" disabled={busy} onClick={save}>{busy ? 'Saving…' : 'Save settings'}</button></div></Modal>
}

// ------------------------------------------------------------------ proctoring review (admin only; images are read through RLS)
function ProctorView({ h, onClose }) {
  const [rows, setRows] = useState(null), [sel, setSel] = useState(null), [det, setDet] = useState(null), [names, setNames] = useState({})
  useEffect(() => {
    (async () => {
      const { data: ss } = await sb.from('exam_sessions').select('*').eq('exam_id', h.exam_id)
      const ids = (ss || []).map(x => x.id)
      const [{ data: sn }, { data: ev }, { data: st }] = ids.length ? await Promise.all([sb.from('proctor_snaps').select('session_id,dark,face').in('session_id', ids), sb.from('proctor_events').select('session_id,kind').in('session_id', ids), sb.from('students').select('email,name,usn,branch').in('email', [...new Set((ss || []).map(x => x.email))])]) : [{ data: [] }, { data: [] }, { data: [] }]
      setNames(Object.fromEntries((st || []).map(x => [x.email, x])))
      setRows((ss || []).map(s => ({ ...s, snaps: (sn || []).filter(x => x.session_id === s.id).length, dark: (sn || []).filter(x => x.session_id === s.id && x.dark).length, noface: (sn || []).filter(x => x.session_id === s.id && x.face === false).length, events: (ev || []).filter(x => x.session_id === s.id).length })))
    })()
  }, [])
  const open = async s => { setSel(s); setDet(null); const [a, b] = await Promise.all([sb.from('proctor_snaps').select('image,face,dark,created_at').eq('session_id', s.id).order('created_at').limit(150), sb.from('proctor_events').select('kind,detail,created_at').eq('session_id', s.id).order('created_at')]); setDet({ snaps: a.data || [], events: b.data || [] }) }
  return <Modal title={'Proctoring: ' + h.title} onClose={onClose} wide>
    {!h.require_camera && <div className="note">This exam did not require the camera, so there are no photos. Violation events are still listed.</div>}
    <Loading on={!rows} />
    {!sel && rows && <div style={{ maxHeight: '60vh', overflow: 'auto' }}>{rows.map(s => { const n = names[s.email]; return <div className="row" key={s.id}><div style={{ flex: 1 }}><b>{n?.name || s.email}</b> <small style={{ color: 'var(--mu)' }}>{n?.usn} · {n?.branch} · attempt {s.attempt_no} · {s.status}</small><div><Chip>{s.snaps} photos</Chip>{s.dark > 0 && <Chip c="y">{s.dark} dark</Chip>}{s.noface > 0 && <Chip c="y">{s.noface} no face</Chip>}{s.events > 0 && <Chip c="r">{s.events} violations</Chip>}</div></div><button className="btn s alt" onClick={() => open(s)}>Review</button></div> })}{!rows.length && <p className="sub">No attempts yet.</p>}</div>}
    {sel && <><button className="btn s alt" onClick={() => setSel(null)}>Back to attempts</button><h3 style={{ marginTop: 10 }}>{names[sel.email]?.name || sel.email}</h3><Loading on={!det} />
      {det && <div style={{ maxHeight: '58vh', overflow: 'auto' }}>{det.events.length > 0 && <div className="note"><b>Violations</b>{det.events.map((e, i) => <div key={i} style={{ fontSize: 13 }}>{new Date(e.created_at).toLocaleTimeString()} · {e.detail || e.kind}</div>)}</div>}
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill,minmax(130px,1fr))', gap: 8, marginTop: 10 }}>{det.snaps.map((p, i) => <div key={i} style={{ border: '2px solid ' + (p.dark || p.face === false ? '#d97706' : 'var(--bd)'), borderRadius: 8, overflow: 'hidden' }}><img src={p.image} alt="" style={{ width: '100%', display: 'block' }} /><div style={{ fontSize: 11, padding: '2px 6px' }}>{new Date(p.created_at).toLocaleTimeString()}{p.dark ? ' · dark' : ''}{p.face === false ? ' · no face' : ''}</div></div>)}</div>
        {!det.snaps.length && <p className="sub">No photos for this attempt.</p>}</div>}</>}
  </Modal>
}
