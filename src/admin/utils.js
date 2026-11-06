export const TYPES = { mcq: 'Single choice', multi: 'Multi select', tf: 'True / False', short: 'Short answer', code: 'Coding' }
export const DIFFS = ['beginner', 'intermediate', 'advanced']
export const CATS = ['conceptual', 'output', 'debugging', 'scenario']
export const LANGS = { c: 'C', cpp: 'C++', java: 'Java', python: 'Python', javascript: 'JavaScript', csharp: 'C#' }
export const MIN_PER_DOMAIN = 25
export const MARKS = { beginner: 1, intermediate: 2, advanced: 3 }
const L = 'ABCDEF'

export const fmtTime = s => (s == null ? '-' : `${Math.floor(s / 60)}m ${String(s % 60).padStart(2, '0')}s`)
export const dateKey = iso => new Date(iso).toLocaleDateString('en-CA')

export const ansText = (q, a) => {
  if (a == null || a === '') return 'Not answered'
  if (q.type === 'mcq') return q.options?.[a] ?? String(a)
  if (q.type === 'multi') return Array.isArray(a) ? a.map(i => q.options?.[i]).join(', ') : String(a)
  if (q.type === 'code') return a?.code ?? String(a)
  return String(a)
}
export const correctText = q => q.type === 'mcq' ? q.options?.[q.correct?.[0]] : q.type === 'multi' ? (q.correct || []).map(i => q.options?.[i]).join(', ')
  : q.type === 'code' ? '(checked with test cases)' : String(q.correct ?? '')

export function kpis(rows) {
  const n = rows.length, sum = f => rows.reduce((t, r) => t + (Number(f(r)) || 0), 0)
  const timed = rows.filter(r => r.time_taken_sec != null)
  return {
    students: new Set(rows.map(r => r.student_email)).size, attempts: n,
    avgScore: n ? sum(r => r.score) / n : 0, highest: n ? Math.max(...rows.map(r => +r.score)) : 0, lowest: n ? Math.min(...rows.map(r => +r.score)) : 0,
    avgPct: n ? sum(r => r.pct) / n : 0, passPct: n ? rows.filter(r => r.passed).length / n * 100 : 0, failPct: n ? rows.filter(r => !r.passed).length / n * 100 : 0,
    correct: sum(r => r.correct), wrong: sum(r => r.wrong), unanswered: sum(r => r.unanswered),
    avgTime: timed.length ? Math.round(timed.reduce((t, r) => t + r.time_taken_sec, 0) / timed.length) : null
  }
}

// ---- Excel/CSV export and import of questions (coding questions are managed in the form)
export const correctLetters = q => q.type === 'mcq' || q.type === 'multi' ? (q.correct || []).map(i => L[i]).join(',') : q.type === 'tf' ? (q.correct === 'true' ? 'True' : 'False') : q.type === 'short' ? String(q.correct ?? '') : '(coding)'
export const toSheetRows = (qs, dn) => qs.map(q => {
  const o = { Domain: dn.get(q.domain_id) || '', Type: q.type, Category: q.category, Difficulty: q.difficulty, Marks: q.marks, Question: q.text }
  for (let i = 0; i < 6; i++) o['Option ' + L[i]] = q.options?.[i] ?? ''
  return { ...o, Correct: correctLetters(q), Explanation: q.explanation || '' }
})
export const TEMPLATE = [
  { Domain: 'HTML', Type: 'mcq', Category: 'conceptual', Difficulty: 'beginner', Marks: 1, Question: 'Which tag makes a link?', 'Option A': '<a>', 'Option B': '<link>', 'Option C': '<href>', 'Option D': '<url>', 'Option E': '', 'Option F': '', Correct: 'A', Explanation: 'The a element creates hyperlinks.' },
  { Domain: 'CSS', Type: 'multi', Category: 'conceptual', Difficulty: 'intermediate', Marks: 3, Question: 'Which are valid color formats?', 'Option A': '#fff', 'Option B': 'rgb(0,0,0)', 'Option C': 'hsl(0,0%,0%)', 'Option D': 'color(x)', 'Option E': '', 'Option F': '', Correct: 'A,B,C', Explanation: 'Hex, rgb and hsl are valid.' },
  { Domain: 'JavaScript', Type: 'tf', Category: 'conceptual', Difficulty: 'beginner', Marks: 1, Question: 'JavaScript is the same as Java.', 'Option A': '', 'Option B': '', 'Option C': '', 'Option D': '', 'Option E': '', 'Option F': '', Correct: 'False', Explanation: 'They are different languages.' }]

export function parseImport(rows, domains) {
  const byName = new Map(); domains.forEach(d => { byName.set(d.name.toLowerCase(), d.id); byName.set(d.slug, d.id) })
  const valid = [], errors = []
  rows.forEach((r, idx) => {
    const n = idx + 2, bad = m => errors.push({ row: n, msg: m }), g = k => String(r[k] ?? '').trim()
    const domain_id = byName.get(g('Domain').toLowerCase()); if (!domain_id) return bad(`Unknown domain "${g('Domain')}"`)
    const type = g('Type').toLowerCase(); if (!['mcq', 'multi', 'tf', 'short'].includes(type)) return bad(`Type must be mcq, multi, tf or short (got "${g('Type')}")`)
    const difficulty = (g('Difficulty') || 'beginner').toLowerCase(); if (!DIFFS.includes(difficulty)) return bad(`Difficulty must be beginner, intermediate or advanced`)
    const category = (g('Category') || 'conceptual').toLowerCase(); if (!CATS.includes(category)) return bad(`Category must be ${CATS.join(', ')}`)
    const text = g('Question'); if (!text) return bad('Question text is empty')
    const marks = Number(g('Marks') || MARKS[difficulty]); if (!(marks > 0)) return bad('Marks must be a positive number')
    const row = { domain_id, type, category, difficulty, text, marks, explanation: g('Explanation') || null, options: null, correct: null, statement: {}, languages: [], meta: {} }
    const c = g('Correct')
    if (type === 'mcq' || type === 'multi') {
      const opts = [...L].map((ch, i) => [i, g('Option ' + ch)]).filter(x => x[1]); if (opts.length < 2) return bad('Needs at least 2 options')
      const idx2 = c.toUpperCase().split(/[\s,;]+/).filter(Boolean).map(x => L.indexOf(x)); if (!idx2.length || idx2.some(i => i < 0)) return bad(`Correct must be letters like A or A,C (got "${c}")`)
      const mapped = idx2.map(i => opts.findIndex(o => o[0] === i)); if (mapped.some(i => i < 0)) return bad('Correct points to an empty option')
      if (type === 'mcq' && mapped.length !== 1) return bad('Single choice needs exactly one correct letter')
      if (type === 'multi' && mapped.length < 2) return bad('Multi select needs two or more correct letters')
      if (new Set(opts.map(o => o[1].toLowerCase())).size !== opts.length) return bad('Options must be different')
      row.options = opts.map(o => o[1]); row.correct = [...new Set(mapped)].sort((a, b) => a - b)
    } else if (type === 'tf') {
      const v = c.toLowerCase(); if (!['true', 'false', 't', 'f'].includes(v)) return bad('Correct must be True or False'); row.correct = v[0] === 't' ? 'true' : 'false'
    } else { if (!c) return bad('Correct (accepted answers) is empty'); row.correct = c }
    valid.push(row)
  })
  return { valid, errors }
}

export const analyticsRow = r => ({ Student: r.students?.name || '', USN: r.students?.usn || '', Email: r.student_email, Domain: r.dom || '', Exam: r.exam_title, 'Attempt Number': r.attempt_no, Score: +r.score, 'Total Marks': +r.max, Percentage: r.pct,
  Correct: r.correct ?? '', Wrong: r.wrong ?? '', Unanswered: r.unanswered ?? '', 'Time Taken': fmtTime(r.time_taken_sec), Status: r.passed ? 'Pass' : 'Fail', Violations: r.violations ?? 0, Date: dateKey(r.submitted_at), Submitted: new Date(r.submitted_at).toLocaleString() })
export const kpiRows = k => [['Students who attempted', k.students], ['Completed attempts', k.attempts], ['Average score', +k.avgScore.toFixed(2)], ['Highest score', k.highest], ['Lowest score', k.lowest], ['Average percentage', +k.avgPct.toFixed(1)],
  ['Pass percentage', +k.passPct.toFixed(1)], ['Fail percentage', +k.failPct.toFixed(1)], ['Total correct answers', k.correct], ['Total wrong answers', k.wrong], ['Total unanswered', k.unanswered], ['Average time taken', fmtTime(k.avgTime)], ['Attempts used', k.attempts]].map(([Metric, Value]) => ({ Metric, Value }))
