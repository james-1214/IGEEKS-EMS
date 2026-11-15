import { useEffect, useMemo, useState } from 'react'
import { sb } from '../lib'
import { Chip, Confirm, Loading, toast } from './ui'
import { DIFFS, TYPES } from './utils'

const blankTemplate = () => ({ id: null, title: '', description: '', category: 'domain', domain_id: '', difficulty: 'beginner', mode: 'total', total_min: 30, per_sec: 60, pass_pct: 50, max_attempts: 1, max_switches: 2, negative_marking: 0, shuffle: true, shuffle_options: true, show_solutions: 'never', question_ids: [] })
const localValue = v => v ? new Date(new Date(v).getTime() - new Date(v).getTimezoneOffset() * 60000).toISOString().slice(0, 16) : ''
const utcValue = v => v ? new Date(v).toISOString() : null
const toSnapshot = (questions, tests) => Object.fromEntries(questions.map(q => [q.id, { ...q, tests: tests.filter(t => t.question_id === q.id).map(t => ({ in: t.input, out: t.expected, hidden: t.is_hidden })) }]))

function TemplateEditor({ domains, initial, onClose, onSaved }) {
  const [f, setF] = useState(() => { const c = initial?.config || {}; return { ...blankTemplate(), ...(initial || {}), domain_id: initial?.domain_id || '', mode: c.mode || 'total', total_min: c.total_min || 30, per_sec: c.per_sec || 60, pass_pct: c.pass_pct || 50, max_attempts: c.max_attempts || 1, max_switches: c.max_switches ?? 2, negative_marking: c.negative_marking || 0, shuffle: c.shuffle ?? true, shuffle_options: c.shuffle_options ?? true, show_solutions: c.show_solutions || 'never', question_ids: initial?.question_ids || [] } })
  const [sectionMap, setSectionMap] = useState(initial?.config?.section_map || {}), [questions, setQuestions] = useState([]), [search, setSearch] = useState(''), [filterDomain, setFilterDomain] = useState(''), [filterDifficulty, setFilterDifficulty] = useState(''), [loading, setLoading] = useState(true), [busy, setBusy] = useState(false)
  const up = p => setF(x => ({ ...x, ...p }))
  useEffect(() => { let alive = true; (async () => { setLoading(true); const { data, error } = await sb.from('questions').select('*').order('created_at', { ascending: false }).limit(5000); if (!alive) return; if (error) toast(error.message, 1); setQuestions(data || []); setLoading(false) })(); return () => { alive = false } }, [])
  const filtered = useMemo(() => questions.filter(q => (!filterDomain || q.domain_id === filterDomain) && (!filterDifficulty || q.difficulty === filterDifficulty) && (!search || q.text?.toLowerCase().includes(search.toLowerCase()))), [questions, filterDomain, filterDifficulty, search])
  const selected = questions.filter(q => f.question_ids.includes(q.id))
  const marks = selected.reduce((n, q) => n + Number(q.marks || 0), 0)
  const toggle = id => up({ question_ids: f.question_ids.includes(id) ? f.question_ids.filter(x => x !== id) : [...f.question_ids, id] })
  const save = async () => {
    if (!f.title.trim()) return toast('Enter a template title', 1)
    if (!f.question_ids.length) return toast('Select at least one question', 1)
    if (!(+f.total_min > 0)) return toast('Duration must be greater than zero', 1)
    if (!(+f.pass_pct >= 1 && +f.pass_pct <= 100)) return toast('Passing percentage must be 1–100', 1)
    if (!(+f.max_attempts >= 1 && +f.max_attempts <= 50)) return toast('Attempts must be between 1 and 50', 1)
    setBusy(true)
    try {
      const ids = f.question_ids
      const qs = questions.filter(q => ids.includes(q.id))
      const codeIds = qs.filter(q => q.type === 'code').map(q => q.id)
      let tests = []
      if (codeIds.length) { const r = await sb.from('coding_tests').select('*').in('question_id', codeIds).order('position'); if (r.error) throw r.error; tests = r.data || [] }
      const snapshot = toSnapshot(qs, tests)
      for (const q of qs) snapshot[q.id].section = sectionMap[q.id] || (f.category === 'common_entrance' ? 'General' : '')
      const domain = domains.find(d => d.id === f.domain_id)
      const row = { title: f.title.trim(), description: f.description.trim() || null, category: f.category, domain: domain?.name || (f.category === 'common_entrance' ? 'Common Entrance' : 'Mixed domains'), domain_id: f.domain_id || null, difficulty: f.difficulty,
        config: { mode: f.mode, total_min: +f.total_min, per_sec: +f.per_sec, pass_pct: +f.pass_pct, max_attempts: +f.max_attempts, max_switches: +f.max_switches, negative_marking: +f.negative_marking, shuffle: !!f.shuffle, shuffle_options: !!f.shuffle_options, show_solutions: f.show_solutions, section_map: sectionMap },
        question_ids: ids, question_snapshot: snapshot, updated_at: new Date().toISOString() }
      const result = f.id ? await sb.from('exam_templates').update(row).eq('id', f.id) : await sb.from('exam_templates').insert({ ...row, created_by: (await sb.auth.getUser()).data.user?.id })
      if (result.error) throw result.error
      toast(f.id ? 'Template updated' : 'Template saved to Exam Library')
      onSaved()
    } catch (e) { toast(e.message || 'Could not save template', 1) }
    setBusy(false)
  }
  return <div className="card" style={{ marginBottom: 16 }}>
    <div className="row"><div><h2>{f.id ? 'Edit exam template' : 'Create exam template'}</h2><p className="sub">Templates are reusable blueprints. They do not become visible to students until hosted.</p></div><button className="btn s alt" onClick={onClose}>Close</button></div>
    <div className="grid g2">
      <div><label className="f">Template title</label><input value={f.title} onChange={e => up({ title: e.target.value })} placeholder="HTML Beginner Assessment" /></div>
      <div><label className="f">Template category</label><select value={f.category} onChange={e => up({ category: e.target.value, domain_id: e.target.value === 'common_entrance' ? '' : f.domain_id })}><option value="domain">Domain assessment</option><option value="common_entrance">Common entrance examination</option><option value="aptitude">Aptitude / placement</option><option value="custom">Other assessment</option></select></div>
      <div><label className="f">Domain (optional for mixed-domain exams)</label><select value={f.domain_id} onChange={e => up({ domain_id: e.target.value })}><option value="">All domains / mixed</option>{domains.map(d => <option key={d.id} value={d.id}>{d.name}</option>)}</select></div>
      <div><label className="f">Difficulty</label><select value={f.difficulty} onChange={e => up({ difficulty: e.target.value })}>{[...DIFFS, 'mixed'].map(x => <option key={x} value={x}>{x[0].toUpperCase() + x.slice(1)}</option>)}</select></div>
    </div>
    <label className="f">Description</label><textarea value={f.description} onChange={e => up({ description: e.target.value })} placeholder="What this assessment measures" />
    <h3 style={{ marginTop: 18 }}>Default examination configuration</h3>
    <div className="grid g4">
      <div><label className="f">Timer</label><select value={f.mode} onChange={e => up({ mode: e.target.value })}><option value="total">Overall timer</option><option value="perq">Per question</option><option value="both">Overall + per question</option></select></div>
      {f.mode !== 'perq' && <div><label className="f">Duration (minutes)</label><input type="number" min="1" value={f.total_min} onChange={e => up({ total_min: e.target.value })} /></div>}
      {f.mode !== 'total' && <div><label className="f">Seconds per question</label><input type="number" min="5" value={f.per_sec} onChange={e => up({ per_sec: e.target.value })} /></div>}
      <div><label className="f">Passing %</label><input type="number" min="1" max="100" value={f.pass_pct} onChange={e => up({ pass_pct: e.target.value })} /></div>
      <div><label className="f">Maximum attempts</label><input type="number" min="1" max="50" value={f.max_attempts} onChange={e => up({ max_attempts: e.target.value })} /></div>
      <div><label className="f">Tab switches allowed</label><input type="number" min="0" value={f.max_switches} onChange={e => up({ max_switches: e.target.value })} /></div>
      <div><label className="f">Negative marking</label><select value={f.negative_marking} onChange={e => up({ negative_marking: +e.target.value })}>{[0, .25, .33, .5, 1].map(v => <option key={v} value={v}>{v === 0 ? 'None' : v + ' × question marks'}</option>)}</select></div>
      <div><label className="f">Solutions</label><select value={f.show_solutions} onChange={e => up({ show_solutions: e.target.value })}><option value="never">Never</option><option value="after_submit">After submission</option><option value="after_end">After exam closes</option></select></div>
    </div>
    <div className="tiles" style={{ margin: '12px 0' }}><label className="qpick"><input type="checkbox" checked={f.shuffle} onChange={e => up({ shuffle: e.target.checked })} /> Randomize question order</label><label className="qpick"><input type="checkbox" checked={f.shuffle_options} onChange={e => up({ shuffle_options: e.target.checked })} /> Randomize options</label></div>
    <div className="row" style={{ marginTop: 18 }}><div><h3>Choose questions</h3><p className="sub">You can select questions across domains for a common entrance examination.</p></div><Chip c="g">{f.question_ids.length} selected · {marks} marks</Chip></div>
    <div className="grid g3" style={{ marginBottom: 10 }}><input value={search} onChange={e => setSearch(e.target.value)} placeholder="Search question text…" /><select value={filterDomain} onChange={e => setFilterDomain(e.target.value)}><option value="">All domains</option>{domains.map(d => <option key={d.id} value={d.id}>{d.name}</option>)}</select><select value={filterDifficulty} onChange={e => setFilterDifficulty(e.target.value)}><option value="">All difficulties</option>{DIFFS.map(d => <option key={d}>{d}</option>)}</select></div>
    <Loading on={loading} />
    <div style={{ maxHeight: 390, overflow: 'auto', border: '1px solid var(--bd)', borderRadius: 12, padding: '4px 12px' }}>
      {filtered.map(q => <div key={q.id} className="qpick" style={{ borderBottom: '1px solid var(--bd)', alignItems: 'center' }}><input type="checkbox" checked={f.question_ids.includes(q.id)} onChange={() => toggle(q.id)} /><span style={{ flex: 1 }}>{q.text?.slice(0, 150)}{q.text?.length > 150 ? '…' : ''}<br/><small style={{ color: 'var(--mu)' }}>{domains.find(d => d.id === q.domain_id)?.name || 'Unknown domain'} · {q.difficulty} · {TYPES[q.type] || q.type} · {q.marks} marks</small></span></div>)}
      {!filtered.length && !loading && <p className="sub">No questions match these filters. Add questions to the bank first.</p>}
    </div>
    {selected.length > 0 && <><h3 style={{ marginTop: 14 }}>Section mapping</h3><p className="sub">For Common Entrance exams, assign each question to its section. Other exams can leave this as General.</p><div style={{ maxHeight: 220, overflow: 'auto', border: '1px solid var(--bd)', borderRadius: 12, padding: '4px 12px' }}>{selected.map(q => <div className="row" key={q.id} style={{ padding: '7px 0', borderBottom: '1px solid var(--bd)' }}><span style={{ flex: 1, fontSize: 13 }}>{q.text?.slice(0, 75)}{q.text?.length > 75 ? '…' : ''}</span><select style={{ maxWidth: 210 }} value={sectionMap[q.id] || (f.category === 'common_entrance' ? 'General' : '')} onChange={e => setSectionMap(x => ({ ...x, [q.id]: e.target.value }))}><option value="">No section</option>{(f.category === 'common_entrance' ? ['Quantitative Aptitude','Logical Reasoning','Verbal Ability','Analytical Thinking','General'] : ['Core Concepts','Practical','Coding','General']).map(v => <option key={v}>{v}</option>)}</select></div>)}</div></>}
    <div className="note" style={{ marginTop: 12 }}>Selected: <b>{selected.length}</b> questions · Maximum score: <b>{marks}</b> · Questions and coding test cases are snapshotted when this template is saved.</div>
    <div style={{ display: 'flex', gap: 8, marginTop: 14 }}><button className="btn" disabled={busy || loading} onClick={save}>{busy ? 'Saving…' : f.id ? 'Update template' : 'Save template'}</button><button className="btn alt" onClick={onClose}>Cancel</button></div>
  </div>
}

function HostDialog({ template, domains, onClose, onHosted }) {
  const c = template.config || {}
  const [f, setF] = useState({ title: template.title, description: template.description || '', start_at: '', end_at: '', total_min: c.total_min || 30, pass_pct: c.pass_pct || 50, max_attempts: c.max_attempts || 1, max_switches: c.max_switches ?? 2, negative_marking: c.negative_marking || 0, shuffle: c.shuffle ?? true, shuffle_options: c.shuffle_options ?? true, target_type: 'all', branch: '', student_emails: '' })
  const [branches, setBranches] = useState([]), [busy, setBusy] = useState(false)
  const up = p => setF(x => ({ ...x, ...p }))
  useEffect(() => { sb.from('students').select('branch').not('branch', 'is', null).then(({ data }) => setBranches([...new Set((data || []).map(x => x.branch?.trim()).filter(Boolean))].sort())) }, [])
  const host = async () => {
    if (!f.title.trim()) return toast('Enter the hosted exam title', 1)
    if (!(+f.total_min > 0) || !(+f.pass_pct >= 1 && +f.pass_pct <= 100) || !(+f.max_attempts >= 1)) return toast('Check duration, passing percentage and attempts', 1)
    if (f.start_at && f.end_at && new Date(f.end_at) <= new Date(f.start_at)) return toast('End time must be after start time', 1)
    if (f.target_type === 'branch' && !f.branch) return toast('Choose a branch', 1)
    const emails = [...new Set(f.student_emails.split(/[\s,;]+/).map(x => x.trim().toLowerCase()).filter(Boolean))]
    if (f.target_type === 'student' && !emails.length) return toast('Enter at least one student email', 1)
    if (emails.some(x => !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(x))) return toast('One or more student email addresses are invalid', 1)
    const snapIds = Object.keys(template.question_snapshot || {})
    if (!template.question_ids?.length || template.question_ids.some(id => !snapIds.includes(id))) return toast('This template has an incomplete question snapshot. Edit and save the template again.', 1)
    if (f.target_type === 'student') { const check = await sb.from('students').select('email').in('email', emails); if (check.error) return toast(check.error.message, 1); const known = new Set((check.data || []).map(x => x.email.toLowerCase())); const missing = emails.filter(x => !known.has(x)); if (missing.length) return toast(`Student not found: ${missing.slice(0, 3).join(', ')}`, 1) }
    setBusy(true)
    try {
      const cfg = template.config || {}, domain = domains.find(d => d.id === template.domain_id)
      const row = { title: f.title.trim(), description: f.description.trim() || null, domain: template.domain || domain?.name || 'Common Entrance', domain_id: template.domain_id || null,
        category: template.category, template_id: template.id, mode: cfg.mode || 'total', total_min: +f.total_min, per_sec: +cfg.per_sec || 60, pass_pct: +f.pass_pct, max_switches: +f.max_switches || 0,
        max_attempts: +f.max_attempts, start_at: utcValue(f.start_at), end_at: utcValue(f.end_at), live: false, shuffle: !!f.shuffle, shuffle_options: !!f.shuffle_options,
        negative_marking: +f.negative_marking || 0, selection_mode: 'manual', difficulty_mix: {}, show_solutions: cfg.show_solutions || 'never', question_ids: template.question_ids,
        question_snapshot: template.question_snapshot || {}, proctoring_config: { enabled: false, planned_face_missing_seconds: 10, planned_multiple_faces_seconds: 3, planned_looking_away_seconds: 15, planned_admin_review_at: 3, planned_auto_submit_at: 5, recording: false, image_storage: false }, updated_at: new Date().toISOString() }
      const created = await sb.from('exams').insert(row).select('id').single()
      if (created.error) throw created.error
      const targets = f.target_type === 'all' ? [{ exam_id: created.data.id, target_type: 'all', target_value: '' }] : f.target_type === 'branch' ? [{ exam_id: created.data.id, target_type: 'branch', target_value: f.branch }] : emails.map(email => ({ exam_id: created.data.id, target_type: 'student', target_value: email }))
      const tr = await sb.from('exam_targets').insert(targets)
      if (tr.error) { await sb.from('exams').delete().eq('id', created.data.id); throw tr.error }
      const pub = await sb.from('exams').update({ live: true }).eq('id', created.data.id)
      if (pub.error) throw pub.error
      toast('Exam hosted successfully. It is now assigned to the selected audience.')
      onHosted()
    } catch (e) { toast(e.message || 'Could not host exam', 1) }
    setBusy(false)
  }
  return <div className="card" style={{ marginBottom: 16 }}>
    <div className="row"><div><h2>Host examination</h2><p className="sub">Create a scheduled student-facing exam from this saved template.</p></div><button className="btn s alt" onClick={onClose}>Close</button></div>
    <div className="note" style={{ marginBottom: 14 }}><b>Template:</b> {template.title} · {template.question_ids.length} questions · snapshot version will be used for this hosted exam.</div>
    <div className="grid g2"><div><label className="f">Hosted exam title (editable)</label><input value={f.title} onChange={e => up({ title: e.target.value })} /></div><div><label className="f">Duration (minutes)</label><input type="number" min="1" value={f.total_min} onChange={e => up({ total_min: e.target.value })} /></div><div><label className="f">Start date & time</label><input type="datetime-local" value={f.start_at} onChange={e => up({ start_at: e.target.value })} /></div><div><label className="f">End date & time</label><input type="datetime-local" value={f.end_at} onChange={e => up({ end_at: e.target.value })} /></div><div><label className="f">Passing percentage</label><input type="number" min="1" max="100" value={f.pass_pct} onChange={e => up({ pass_pct: e.target.value })} /></div><div><label className="f">Maximum attempts</label><input type="number" min="1" max="50" value={f.max_attempts} onChange={e => up({ max_attempts: e.target.value })} /></div><div><label className="f">Tab switches allowed</label><input type="number" min="0" value={f.max_switches} onChange={e => up({ max_switches: e.target.value })} /></div><div><label className="f">Negative marking</label><select value={f.negative_marking} onChange={e => up({ negative_marking: +e.target.value })}>{[0, .25, .33, .5, 1].map(v => <option key={v} value={v}>{v === 0 ? 'None' : v}</option>)}</select></div></div>
    <label className="f">Description</label><textarea value={f.description} onChange={e => up({ description: e.target.value })} />
    <div className="tiles" style={{ marginTop: 12 }}><label className="qpick"><input type="checkbox" checked={f.shuffle} onChange={e => up({ shuffle: e.target.checked })} /> Randomize question order</label><label className="qpick"><input type="checkbox" checked={f.shuffle_options} onChange={e => up({ shuffle_options: e.target.checked })} /> Randomize answer options</label></div>
    <h3 style={{ marginTop: 16 }}>Assign students</h3><div className="tiles"><label className="qpick"><input type="radio" name="target" checked={f.target_type === 'all'} onChange={() => up({ target_type: 'all' })} /> All students</label><label className="qpick"><input type="radio" name="target" checked={f.target_type === 'branch'} onChange={() => up({ target_type: 'branch' })} /> Branch-wise</label><label className="qpick"><input type="radio" name="target" checked={f.target_type === 'student'} onChange={() => up({ target_type: 'student' })} /> Selected students</label></div>
    {f.target_type === 'branch' && <div><label className="f">Eligible branch</label><select value={f.branch} onChange={e => up({ branch: e.target.value })}><option value="">Select branch</option>{branches.map(b => <option key={b}>{b}</option>)}</select>{!branches.length && <p className="sub">No branch values found in student records yet.</p>}</div>}
    {f.target_type === 'student' && <div><label className="f">Student email addresses</label><textarea value={f.student_emails} onChange={e => up({ student_emails: e.target.value })} placeholder="student1@example.com, student2@example.com" /><small className="sub">Separate addresses with commas, spaces or new lines.</small></div>}
    <div className="note" style={{ marginTop: 12 }}>AI webcam proctoring is a separate rollout and is not activated by hosting this exam yet. The approved thresholds are retained as planned settings; no camera processing starts in this release.</div>
    <div style={{ display: 'flex', gap: 8, marginTop: 16 }}><button className="btn" disabled={busy} onClick={host}>{busy ? 'Publishing…' : 'Host & publish exam'}</button><button className="btn alt" onClick={onClose}>Cancel</button></div>
  </div>
}

export default function ExamLibrary({ domains }) {
  const [tab, setTab] = useState('library'), [templates, setTemplates] = useState([]), [hosted, setHosted] = useState([]), [editing, setEditing] = useState(null), [hosting, setHosting] = useState(null), [loading, setLoading] = useState(true), [generating, setGenerating] = useState(false), [confirm, setConfirm] = useState(null)
  const load = async () => { setLoading(true); const [a, b] = await Promise.all([sb.from('exam_templates').select('*').eq('is_archived', false).order('updated_at', { ascending: false }), sb.from('exams').select('*').not('template_id', 'is', null).order('created_at', { ascending: false })]); if (a.error) toast('Exam Library: ' + a.error.message + ' (run migration_5_exam_library.sql first)', 1); if (b.error) toast(b.error.message, 1); setTemplates(a.data || []); setHosted(b.data || []); setLoading(false) }
  useEffect(() => { load() }, [])
  const archive = async () => { const { error } = await sb.from('exam_templates').update({ is_archived: true, updated_at: new Date().toISOString() }).eq('id', confirm.id); setConfirm(null); error ? toast(error.message, 1) : (toast('Template archived'), load()) }
  const duplicate = async t => { const { id, created_at, updated_at, ...r } = t; const { error } = await sb.from('exam_templates').insert({ ...r, title: t.title + ' (copy)', created_by: (await sb.auth.getUser()).data.user?.id }); error ? toast(error.message, 1) : (toast('Template duplicated'), load()) }
  const togglePublish = async x => { const { error } = await sb.from('exams').update({ live: !x.live }).eq('id', x.id); error ? toast(error.message, 1) : (toast(x.live ? 'Exam unpublished' : 'Exam published'), load()) }
  const generateDomainTemplates = async () => {
    setGenerating(true)
    try {
      const [{ data: qs, error: qe }, { data: existing, error: te }] = await Promise.all([sb.from('questions').select('*').not('domain_id', 'is', null).order('created_at'), sb.from('exam_templates').select('title').eq('is_archived', false)])
      if (qe) throw qe; if (te) throw te
      const groups = new Map()
      for (const q of qs || []) { const key = `${q.domain_id}:${q.difficulty}`; (groups.get(key) || (groups.set(key, []), groups.get(key))).push(q) }
      const names = new Map(domains.map(d => [d.id, d.name])), existingTitles = new Set((existing || []).map(x => x.title.toLowerCase()))
      const eligible = [...groups.entries()].filter(([, rows]) => rows.length >= 5)
      const codeIds = eligible.flatMap(([, rows]) => rows.filter(q => q.type === 'code').map(q => q.id))
      let tests = []
      if (codeIds.length) { const r = await sb.from('coding_tests').select('*').in('question_id', codeIds).order('position'); if (r.error) throw r.error; tests = r.data || [] }
      const rows = [], userId = (await sb.auth.getUser()).data.user?.id
      for (const [, group] of eligible) {
        const first = group[0], title = `${names.get(first.domain_id) || 'Domain'} ${first.difficulty[0].toUpperCase()}${first.difficulty.slice(1)}`
        if (existingTitles.has(title.toLowerCase())) continue
        const selected = group.slice(0, 15), ids = selected.map(q => q.id)
        rows.push({ title, description: `Starter ${first.difficulty} assessment generated from reviewed Question Bank entries. Edit and review before hosting.`, category: 'domain', domain: names.get(first.domain_id) || 'Domain', domain_id: first.domain_id, difficulty: first.difficulty,
          config: { mode: 'total', total_min: 30, per_sec: 60, pass_pct: 50, max_attempts: 1, max_switches: 2, negative_marking: 0, shuffle: true, shuffle_options: true, show_solutions: 'never', section_map: {} },
          question_ids: ids, question_snapshot: toSnapshot(selected, tests.filter(t => ids.includes(t.question_id))), created_by: userId })
      }
      if (!rows.length) { toast('No new domain templates to generate. Each domain/difficulty group needs at least 5 questions.', 1); setGenerating(false); return }
      const { error } = await sb.from('exam_templates').insert(rows); if (error) throw error
      toast(`${rows.length} starter templates generated. Review them before hosting.`); await load()
    } catch (e) { toast(e.message || 'Could not generate templates', 1) }
    setGenerating(false)
  }
  return <>
    <h1>Exam <em>Library & Hosting</em></h1><p className="sub">Prepare reusable assessments once, then host separate scheduled copies for different student groups.</p>
    <div className="tiles" style={{ marginBottom: 16 }}><button className={'btn s ' + (tab === 'library' ? '' : 'alt')} onClick={() => { setTab('library'); setEditing(null); setHosting(null) }}>Exam Library</button><button className={'btn s ' + (tab === 'hosted' ? '' : 'alt')} onClick={() => { setTab('hosted'); setEditing(null); setHosting(null) }}>Hosted Exams</button></div>
    {editing && <TemplateEditor domains={domains} initial={editing === 'new' ? null : editing} onClose={() => setEditing(null)} onSaved={() => { setEditing(null); load() }} />}
    {hosting && <HostDialog template={hosting} domains={domains} onClose={() => setHosting(null)} onHosted={() => { setHosting(null); setTab('hosted'); load() }} />}
    {tab === 'library' && <><div className="row" style={{ marginBottom: 12 }}><div><h2>Reusable templates</h2><p className="sub">HTML Beginner, Java Advanced, Common Entrance and other assessments belong here.</p></div><div style={{ display: 'flex', gap: 8, flexWrap: 'wrap' }}><button className="btn s alt" disabled={generating} onClick={generateDomainTemplates}>{generating ? 'Generating…' : 'Generate domain templates'}</button><button className="btn" onClick={() => setEditing('new')}>+ Create template</button></div></div><Loading on={loading} /><div className="grid g2">{templates.map(t => <div className="card" key={t.id}><div className="row"><h3>{t.title}</h3><Chip c="b">{t.category.replace('_', ' ')}</Chip></div><p className="sub">{t.description || t.domain || 'Reusable examination template'}</p><div className="tiles"><Chip>{t.difficulty || 'mixed'}</Chip><Chip>{t.question_ids?.length || 0} questions</Chip><Chip>{t.config?.total_min || 0} min</Chip><Chip>{t.question_ids?.reduce((sum, id) => sum + Number(t.question_snapshot?.[id]?.marks || 0), 0)} marks</Chip></div><div style={{ display: 'flex', gap: 6, flexWrap: 'wrap', marginTop: 12 }}><button className="btn s" onClick={() => setHosting(t)}>Host this exam</button><button className="btn s alt" onClick={() => setEditing(t)}>Edit</button><button className="btn s alt" onClick={() => duplicate(t)}>Duplicate</button><button className="btn s del" onClick={() => setConfirm(t)}>Archive</button></div></div>)}{!templates.length && !loading && <div className="card"><h3>No templates yet</h3><p className="sub">Create your first template from existing Question Bank questions. For a common entrance exam, add aptitude and reasoning questions to the bank first, then select across domains.</p><button className="btn" onClick={() => setEditing('new')}>Create first template</button></div>}</div></>}
    {tab === 'hosted' && <><div className="row" style={{ marginBottom: 12 }}><div><h2>Hosted examinations</h2><p className="sub">Published exam instances created from your templates.</p></div><span className="chip b">{hosted.length} hosted</span></div><Loading on={loading} /><div className="card">{hosted.map(x => { const now = Date.now(), status = !x.live ? 'Draft / unpublished' : x.start_at && now < new Date(x.start_at).getTime() ? 'Scheduled' : x.end_at && now > new Date(x.end_at).getTime() ? 'Completed' : 'Active'; return <div className="row" key={x.id} style={{ borderBottom: '1px solid var(--bd)', padding: '12px 0' }}><div style={{ flex: 1, minWidth: 220 }}><b>{x.title}</b><div className="sub">{x.domain} · {x.question_ids?.length || 0} questions · {x.total_min} min</div><div className="sub">{x.start_at ? new Date(x.start_at).toLocaleString() : 'Starts immediately'} → {x.end_at ? new Date(x.end_at).toLocaleString() : 'No closing time'}</div></div><Chip c={status === 'Active' ? 'g' : status === 'Completed' ? 'b' : 'y'}>{status}</Chip><button className="btn s alt" onClick={() => togglePublish(x)}>{x.live ? 'Unpublish' : 'Publish'}</button></div> })}{!hosted.length && !loading && <p className="sub">No hosted examinations yet. Open Exam Library and host a template.</p>}</div></>}
    {confirm && <Confirm text={`Archive template “${confirm.title}”? Existing hosted exams will remain unchanged.`} onYes={archive} onNo={() => setConfirm(null)} />}
  </>
}
