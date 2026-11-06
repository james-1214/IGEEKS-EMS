import {useState,useEffect,useMemo} from 'react'
import {sb} from '../lib'
import {Chip,dChip,Confirm,toast,Loading} from './ui'
import {Preview} from './QuestionBank'
import {TYPES,DIFFS} from './utils'

const toLocal = iso => iso ? new Date(new Date(iso).getTime() - new Date(iso).getTimezoneOffset() * 60000).toISOString().slice(0, 16) : ''
const fromLocal = v => v ? new Date(v).toISOString() : null
const blank = () => ({ id: null, title: '', description: '', domain_id: '', mode: 'total', total_min: 30, per_sec: 60, pass_pct: 50, max_switches: 2, attempts: '3', max_attempts: 3, start_at: '', end_at: '', live: true,
  shuffle: false, shuffle_options: false, negative_marking: 0, selection_mode: 'manual', mix: { beginner: 0, intermediate: 0, advanced: 0 }, show_solutions: 'never', question_ids: [] })

export function ExamForm({ domains, edit, onDone }) {
  const [e, setE] = useState(() => edit ? { ...blank(), ...edit, attempts: [1, 2, 3, 4, 5].includes(edit.max_attempts) ? String(edit.max_attempts) : 'custom', start_at: toLocal(edit.start_at), end_at: toLocal(edit.end_at), mix: { beginner: 0, intermediate: 0, advanced: 0, ...(edit.difficulty_mix || {}) }, question_ids: edit.question_ids || [] } : blank())
  const [dq, setDq] = useState([]), [s, setS] = useState(''), [df, setDf] = useState(''), [ty, setTy] = useState(''), [prev, setPrev] = useState(null), [busy, setBusy] = useState(false), [ld, setLd] = useState(false)
  const up = p => setE(x => ({ ...x, ...p }))
  useEffect(() => { if (!e.domain_id) { setDq([]); return } setLd(true); sb.from('questions').select('*').eq('domain_id', e.domain_id).order('difficulty').limit(2000).then(({ data }) => { setDq(data || []); setLd(false) }) }, [e.domain_id])
  const filtered = useMemo(() => dq.filter(q => (!df || q.difficulty === df) && (!ty || q.type === ty) && (!s || q.text.toLowerCase().includes(s.toLowerCase()))), [dq, s, df, ty])
  const sel = new Set(e.question_ids), chosen = dq.filter(q => sel.has(q.id))
  const avail = d => dq.filter(q => q.difficulty === d).length, avg = d => { const a = dq.filter(q => q.difficulty === d); return a.length ? a.reduce((t, q) => t + q.marks, 0) / a.length : 0 }
  const total = e.selection_mode === 'manual' ? chosen.length : DIFFS.reduce((t, d) => t + (+e.mix[d] || 0), 0)
  const marks = e.selection_mode === 'manual' ? chosen.reduce((t, q) => t + q.marks, 0) : Math.round(DIFFS.reduce((t, d) => t + (+e.mix[d] || 0) * avg(d), 0))
  const tog = id => up({ question_ids: sel.has(id) ? e.question_ids.filter(x => x !== id) : [...e.question_ids, id] })
  const save = async () => {
    if (!e.title.trim()) return toast('Enter the exam title', 1); if (!e.domain_id) return toast('Choose a domain first', 1)
    if (!(+e.pass_pct >= 1 && +e.pass_pct <= 100)) return toast('Passing percentage must be 1 to 100', 1)
    if (e.mode !== 'perq' && !(+e.total_min > 0)) return toast('Enter the total minutes', 1); if (e.mode !== 'total' && !(+e.per_sec >= 5)) return toast('Seconds per question must be at least 5', 1)
    if (!(+e.max_attempts >= 1)) return toast('Maximum attempts must be at least 1', 1)
    if (e.start_at && e.end_at && new Date(e.end_at) <= new Date(e.start_at)) return toast('End date must be after the start date', 1)
    if (e.selection_mode === 'manual' && !chosen.length) return toast('Select at least one question', 1)
    if (e.selection_mode === 'auto') { if (!total) return toast('Set how many questions to pick for each difficulty', 1); const short = DIFFS.find(d => (+e.mix[d] || 0) > avail(d)); if (short) return toast(`Only ${avail(short)} ${short} questions exist in this domain`, 1) }
    const dom = domains.find(d => d.id === e.domain_id)
    const row = { title: e.title.trim(), description: e.description.trim() || null, domain: dom.name, domain_id: e.domain_id, mode: e.mode, total_min: +e.total_min || 0, per_sec: +e.per_sec || 0, pass_pct: +e.pass_pct, max_switches: +e.max_switches || 0, max_attempts: +e.max_attempts,
      start_at: fromLocal(e.start_at), end_at: fromLocal(e.end_at), live: e.live, shuffle: e.shuffle, shuffle_options: e.shuffle_options, negative_marking: +e.negative_marking || 0, selection_mode: e.selection_mode,
      difficulty_mix: e.selection_mode === 'auto' ? Object.fromEntries(DIFFS.map(d => [d, +e.mix[d] || 0])) : {}, show_solutions: e.show_solutions, question_ids: e.selection_mode === 'manual' ? e.question_ids : [], updated_at: new Date().toISOString() }
    setBusy(true); const { error } = e.id ? await sb.from('exams').update(row).eq('id', e.id) : await sb.from('exams').insert(row); setBusy(false)
    if (error) return toast(error.message, 1); toast(e.id ? 'Exam updated' : 'Exam created'); onDone()
  }
  const dn = new Map(domains.map(d => [d.id, d.name]))
  return <><h1>{e.id ? 'Edit' : 'Create'} <em>exam</em></h1><p className="sub">Choose the domain first. Questions from other domains stay hidden.</p>
    <div className="card" style={{ marginBottom: 16 }}><div className="grid g2"><div><label className="f">Domain</label><select value={e.domain_id} onChange={ev => up({ domain_id: ev.target.value, question_ids: [] })}><option value="">Select a domain…</option>{domains.map(d => <option key={d.id} value={d.id}>{d.name}</option>)}</select></div>
      <div><label className="f">Exam title</label><input type="text" value={e.title} onChange={ev => up({ title: ev.target.value })} /></div></div>
      <label className="f">Description</label><textarea style={{ minHeight: 60, fontFamily: 'inherit' }} value={e.description} onChange={ev => up({ description: ev.target.value })} /></div>
    <div className="card" style={{ marginBottom: 16 }}><h2>Configuration</h2><div className="grid g4">
      <div><label className="f">Timer</label><select value={e.mode} onChange={ev => up({ mode: ev.target.value })}><option value="total">Whole exam</option><option value="perq">Per question</option><option value="both">Both</option></select></div>
      {e.mode !== 'perq' && <div><label className="f">Duration (minutes)</label><input type="number" min="1" value={e.total_min} onChange={ev => up({ total_min: ev.target.value })} /></div>}
      {e.mode !== 'total' && <div><label className="f">Seconds per question</label><input type="number" min="5" value={e.per_sec} onChange={ev => up({ per_sec: ev.target.value })} /></div>}
      <div><label className="f">Passing percentage</label><input type="number" min="1" max="100" value={e.pass_pct} onChange={ev => up({ pass_pct: ev.target.value })} /></div>
      <div><label className="f">Maximum attempts</label><select value={e.attempts} onChange={ev => up({ attempts: ev.target.value, ...(ev.target.value !== 'custom' && { max_attempts: +ev.target.value }) })}>{[1, 2, 3, 4, 5].map(n => <option key={n} value={n}>{n} attempt{n > 1 ? 's' : ''}</option>)}<option value="custom">Custom…</option></select></div>
      {e.attempts === 'custom' && <div><label className="f">Custom attempts</label><input type="number" min="1" max="50" value={e.max_attempts} onChange={ev => up({ max_attempts: ev.target.value })} /></div>}
      <div><label className="f">Starts</label><input type="datetime-local" value={e.start_at} onChange={ev => up({ start_at: ev.target.value })} /></div>
      <div><label className="f">Ends</label><input type="datetime-local" value={e.end_at} onChange={ev => up({ end_at: ev.target.value })} /></div>
      <div><label className="f">Tab switches allowed</label><input type="number" min="0" value={e.max_switches} onChange={ev => up({ max_switches: ev.target.value })} /></div>
      <div><label className="f">Negative marking (fraction of marks)</label><select value={e.negative_marking} onChange={ev => up({ negative_marking: +ev.target.value })}>{[0, 0.25, 0.33, 0.5, 1].map(n => <option key={n} value={n}>{n === 0 ? 'None' : n}</option>)}</select></div>
      <div><label className="f">Show solutions to students</label><select value={e.show_solutions} onChange={ev => up({ show_solutions: ev.target.value })}><option value="never">Never</option><option value="after_submit">After they submit</option><option value="after_end">After the exam ends</option></select></div>
      <div><label className="f">Availability</label><select value={e.live ? '1' : '0'} onChange={ev => up({ live: ev.target.value === '1' })}><option value="1">Live</option><option value="0">Draft (hidden)</option></select></div></div>
      <div style={{ display: 'flex', gap: 24, flexWrap: 'wrap', marginTop: 10 }}><label className="qpick"><input type="checkbox" checked={e.shuffle} onChange={ev => up({ shuffle: ev.target.checked })} />Randomise question order</label><label className="qpick"><input type="checkbox" checked={e.shuffle_options} onChange={ev => up({ shuffle_options: ev.target.checked })} />Randomise answer options</label></div></div>
    <div className="card"><h2>Questions</h2><div className="tiles" style={{ marginBottom: 10 }}>{[['manual', 'Pick manually'], ['auto', 'Automatic by difficulty']].map(([k, l]) => <button key={k} className={'btn s ' + (e.selection_mode === k ? '' : 'alt')} onClick={() => up({ selection_mode: k })}>{l}</button>)}</div>
      {!e.domain_id && <p className="sub">Select a domain above to see its questions.</p>}<Loading on={ld} />
      {e.domain_id && e.selection_mode === 'auto' && <><p className="sub">Questions are drawn at random from {dn.get(e.domain_id)} when each student starts an attempt, and stay the same if the page is refreshed.</p>
        <div className="grid g4">{DIFFS.map(d => <div key={d}><label className="f">{d} (available {avail(d)})</label><input type="number" min="0" max={avail(d)} value={e.mix[d]} onChange={ev => up({ mix: { ...e.mix, [d]: ev.target.value } })} /></div>)}</div></>}
      {e.domain_id && e.selection_mode === 'manual' && <><div className="grid g4" style={{ marginBottom: 10 }}><input type="text" placeholder="Search questions…" value={s} onChange={ev => setS(ev.target.value)} /><select value={df} onChange={ev => setDf(ev.target.value)}><option value="">All difficulties</option>{DIFFS.map(d => <option key={d}>{d}</option>)}</select><select value={ty} onChange={ev => setTy(ev.target.value)}><option value="">All types</option>{Object.entries(TYPES).map(([k, v]) => <option key={k} value={k}>{v}</option>)}</select>
        <div style={{ display: 'flex', gap: 6 }}><button className="btn s alt" onClick={() => up({ question_ids: [...new Set([...e.question_ids, ...filtered.map(q => q.id)])] })}>Select all ({filtered.length})</button><button className="btn s del" onClick={() => up({ question_ids: [] })}>Clear</button></div></div>
        <div style={{ maxHeight: 360, overflow: 'auto', border: '1px solid var(--bd)', borderRadius: 12, padding: '4px 12px' }}>{filtered.map(q => <div className="qpick" key={q.id} style={{ alignItems: 'center', borderBottom: '1px solid var(--bd)' }}><input type="checkbox" checked={sel.has(q.id)} onChange={() => tog(q.id)} /><span style={{ flex: 1 }}>{q.text.length > 120 ? q.text.slice(0, 120) + '…' : q.text} <Chip c={dChip(q.difficulty)}>{q.difficulty}</Chip><Chip>{TYPES[q.type]}</Chip><Chip>{q.marks}m</Chip></span><button className="btn s alt" onClick={() => setPrev(q)}>Preview</button></div>)}{!filtered.length && !ld && <p className="sub">No questions match.</p>}</div>
        {chosen.length > 0 && <><h3 style={{ marginTop: 14 }}>Selected ({chosen.length})</h3><div className="tiles">{chosen.map(q => <Chip key={q.id} c="g">{q.text.slice(0, 36)}… <a href="#x" onClick={ev => { ev.preventDefault(); tog(q.id) }} aria-label="Remove">✕</a></Chip>)}</div></>}</>}
      <div className="note" style={{ marginTop: 14 }}><b>{total}</b> questions · about <b>{marks}</b> marks · pass at <b>{e.pass_pct}%</b> · <b>{e.max_attempts}</b> attempt{+e.max_attempts > 1 ? 's' : ''} per student</div>
      <div style={{ display: 'flex', gap: 10 }}>{e.id && <button className="btn alt" onClick={onDone}>Cancel</button>}<button className="btn" disabled={busy} onClick={save}>{busy ? 'Saving…' : e.id ? 'Update exam' : 'Create exam'}</button></div></div>
    {prev && <Preview q={prev} dn={dn} onClose={() => setPrev(null)} />}</>
}

export function ExamList({ domains, onEdit }) {
  const [ex, setEx] = useState([]), [at, setAt] = useState([]), [busy, setBusy] = useState(true), [del, setDel] = useState(null)
  const load = async () => { setBusy(true); const [a, b] = await Promise.all([sb.from('exams').select('*').order('created_at', { ascending: false }), sb.from('attempts').select('exam_id,student_email')]); setEx(a.data || []); setAt(b.data || []); setBusy(false) }
  useEffect(() => { load() }, [])
  const dn = new Map(domains.map(d => [d.id, d.name]))
  const dup = async x => { const { id, created_at, ...r } = x; const { error } = await sb.from('exams').insert({ ...r, title: x.title + ' (copy)', live: false }); error ? toast(error.message, 1) : (toast('Exam duplicated as a draft'), load()) }
  const remove = async () => { const { error } = await sb.from('exams').delete().eq('id', del.id); setDel(null); error ? toast(error.message, 1) : (toast('Exam deleted'), load()) }
  const win = x => !x.start_at && !x.end_at ? 'Always open' : `${x.start_at ? new Date(x.start_at).toLocaleString() : 'now'} → ${x.end_at ? new Date(x.end_at).toLocaleString() : 'no end'}`
  return <><h1>Manage <em>exams</em></h1><p className="sub">Edit, publish, duplicate or delete exams.</p><Loading on={busy} />
    <div className="card">{ex.map(x => { const mine = at.filter(a => a.exam_id === x.id); return <div className="row" key={x.id}><div style={{ flex: 1, minWidth: 260 }}><h3>{x.title}</h3>
      <Chip c="b">{dn.get(x.domain_id) || x.domain || 'No domain'}</Chip><Chip c="g">{x.selection_mode === 'auto' ? 'Auto ' + Object.values(x.difficulty_mix || {}).reduce((t, n) => t + n, 0) : (x.question_ids || []).length} questions</Chip><Chip>{x.max_attempts} attempts</Chip><Chip>{x.mode === 'total' ? x.total_min + ' min' : x.mode === 'perq' ? x.per_sec + ' s each' : x.total_min + ' min + ' + x.per_sec + ' s'}</Chip><Chip c={x.live ? 'g' : 'y'}>{x.live ? 'Live' : 'Draft'}</Chip>
      <div style={{ color: 'var(--mu)', fontSize: 13, marginTop: 4 }}>{win(x)} · {mine.length} attempts by {new Set(mine.map(a => a.student_email)).size} students</div></div>
      <div style={{ display: 'flex', gap: 6, flexWrap: 'wrap' }}><button className="btn s alt" onClick={() => onEdit(x)}>Edit</button><button className="btn s alt" onClick={async () => { await sb.from('exams').update({ live: !x.live }).eq('id', x.id); load() }}>{x.live ? 'Unpublish' : 'Publish'}</button><button className="btn s alt" onClick={() => dup(x)}>Duplicate</button><button className="btn s del" onClick={() => setDel(x)}>Delete</button></div></div> })}
      {!ex.length && !busy && <p className="sub">No exams yet.</p>}</div>
    {del && <Confirm text={`Delete "${del.title}"? Results already stored stay in the database, but the exam can no longer be taken.`} onYes={remove} onNo={() => setDel(null)} />}</>
}
