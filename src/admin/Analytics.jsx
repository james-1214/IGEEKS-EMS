import {useState,useEffect,useMemo} from 'react'
import {sb,exportSheets} from '../lib'
import {Chip,Kpi,Modal,Loading,toast} from './ui'
import {kpis,kpiRows,analyticsRow,ansText,correctText,fmtTime,dateKey,TYPES} from './utils'

export function useAttempts() {
  const [d, setD] = useState({ rows: [], exams: [], doms: [], loading: true })
  const load = async () => {
    const [a, e, m] = await Promise.all([sb.from('attempts').select('*, students(name,usn,phone,college,branch,plan,domain)').order('submitted_at', { ascending: false }).limit(10000), sb.from('exams').select('id,title,domain_id,pass_pct,max_attempts'), sb.from('domains').select('id,name').order('sort')])
    const dn = new Map((m.data || []).map(x => [x.id, x.name])), ex = new Map((e.data || []).map(x => [x.id, x]))
    setD({ rows: (a.data || []).map(r => ({ ...r, dom: dn.get(ex.get(r.exam_id)?.domain_id) || '' })), exams: e.data || [], doms: m.data || [], loading: false })
  }
  useEffect(() => { load() }, [])
  return { ...d, reload: load }
}

function Compare({ list, onClose }) {
  const [data, setData] = useState(null)
  useEffect(() => { sb.from('attempt_answers').select('attempt_id,position,question_snapshot,is_correct,marks_awarded,max_marks').in('attempt_id', list.map(a => a.id)).then(({ data }) => setData(data || [])) }, [])
  const asc = [...list].sort((a, b) => a.attempt_no - b.attempt_no)
  const texts = [...new Set((data || []).sort((a, b) => a.position - b.position).map(r => r.question_snapshot?.text))]
  const cell = (aid, t) => { const r = data.find(x => x.attempt_id === aid && x.question_snapshot?.text === t); return !r ? '-' : r.is_correct === null ? 'Review' : r.is_correct ? `✓ ${r.marks_awarded}/${r.max_marks}` : `✗ ${r.marks_awarded}/${r.max_marks}` }
  return <Modal title="Compare attempts" onClose={onClose} wide><div className="scroll"><table><thead><tr><th>Question</th>{asc.map(a => <th key={a.id}>Attempt {a.attempt_no}</th>)}</tr></thead><tbody>
    <tr><td><b>Score</b></td>{asc.map(a => <td key={a.id}><b>{a.score}/{a.max} ({a.pct}%)</b></td>)}</tr><tr><td>Time taken</td>{asc.map(a => <td key={a.id}>{fmtTime(a.time_taken_sec)}</td>)}</tr><tr><td>Correct / wrong / unanswered</td>{asc.map(a => <td key={a.id}>{a.correct ?? '-'} / {a.wrong ?? '-'} / {a.unanswered ?? '-'}</td>)}</tr>
    {data && texts.map(t => <tr key={t}><td style={{ maxWidth: 360 }}>{String(t).slice(0, 110)}</td>{asc.map(a => <td key={a.id}>{cell(a.id, t)}</td>)}</tr>)}</tbody></table></div>{!data && <Loading on />}
    {data && !data.length && <p className="sub">These attempts have no per-question data (they were taken with the older exam flow).</p>}</Modal>
}

export function AttemptDetail({ a, rows, onBack }) {
  const [ans, setAns] = useState(null), [code, setCode] = useState([]), [cmp, setCmp] = useState(false)
  useEffect(() => { Promise.all([sb.from('attempt_answers').select('*').eq('attempt_id', a.id).order('position'), sb.from('coding_submissions').select('*').eq('attempt_id', a.id)]).then(([x, y]) => { setAns(x.data || []); setCode(y.data || []) }) }, [a.id])
  const sibs = rows.filter(r => r.student_email === a.student_email && r.exam_id === a.exam_id)
  const st = a.students || {}
  return <><button className="btn s alt" onClick={onBack}>← Back</button><h1 style={{ marginTop: 14 }}>Attempt <em>analysis</em></h1>
    <div className="card" style={{ marginBottom: 16 }}><h3>{st.name} <span style={{ color: 'var(--mu)', fontWeight: 400 }}>{st.usn} · {a.student_email}</span></h3><p style={{ margin: '6px 0' }}>{a.exam_title} · {a.dom} · attempt {a.attempt_no} · {new Date(a.submitted_at).toLocaleString()}</p>
      <Chip c={a.passed ? 'g' : 'r'}>{a.passed ? 'Pass' : 'Fail'}</Chip><Chip>{a.score}/{a.max} ({a.pct}%)</Chip><Chip c="g">{a.correct ?? '-'} correct</Chip><Chip c="r">{a.wrong ?? '-'} wrong</Chip><Chip c="y">{a.unanswered ?? '-'} unanswered</Chip><Chip>{fmtTime(a.time_taken_sec)}</Chip><Chip>{a.violations ?? 0} violations</Chip><Chip>{a.status}</Chip>
      {sibs.length > 1 && <div style={{ marginTop: 10 }}><button className="btn s" onClick={() => setCmp(true)}>Compare all {sibs.length} attempts</button></div>}</div>
    <Loading on={!ans} />{ans && !ans.length && <div className="card"><p className="sub">No per-question answers were stored for this attempt. It was taken before the new exam engine, so only the totals are available.</p></div>}
    {ans?.map(r => { const q = r.question_snapshot || {}, cs = code.find(c => c.question_id === r.question_id), tests = r.code_result?.tests || cs?.results || []
      return <div className="card" key={r.id} style={{ marginBottom: 12 }}><div style={{ display: 'flex', justifyContent: 'space-between', flexWrap: 'wrap', gap: 8 }}><div><Chip>Q{r.position}</Chip><Chip c="b">{TYPES[q.type] || q.type}</Chip><Chip>{q.difficulty}</Chip>{r.flagged && <Chip c="y">flagged for review</Chip>}</div>
        <div><Chip c={r.is_correct === null ? 'y' : r.is_correct ? 'g' : r.answer == null ? 'y' : 'r'}>{r.is_correct === null ? 'Needs review' : r.is_correct ? 'Correct' : r.answer == null ? 'Unanswered' : 'Incorrect'}</Chip><b>{r.marks_awarded}/{r.max_marks}</b> marks</div></div>
        <p style={{ whiteSpace: 'pre-wrap', fontWeight: 600 }}>{q.text}</p>
        {q.type === 'code' ? <><Chip c="b">{r.code_result?.language || cs?.language}</Chip>{cs && <Chip>{cs.passed}/{cs.total} tests · {cs.time_ms ?? '-'} ms · {cs.memory_kb ?? '-'} KB</Chip>}<pre className="out">{ansText(q, r.answer)}</pre>
          {tests.map((t, i) => <div key={i} style={{ margin: '6px 0' }}><Chip c={t.ok ? 'g' : 'r'}>Test {t.position || i + 1}{t.hidden ? ' (hidden)' : ''}: {t.ok ? 'Passed' : 'Failed'}</Chip>{!t.ok && <pre className="out">{`Expected: ${t.expected ?? ''}\nActual: ${t.got ?? t.status ?? ''}${t.err ? '\n' + t.err : ''}`}</pre>}</div>)}</>
          : <div className="grid g2"><div className="note"><b>Student answer</b><div>{ansText(q, r.answer)}</div></div><div className="note" style={{ borderColor: 'var(--g)' }}><b>Correct answer</b><div>{correctText(q)}</div></div></div>}
        {q.explanation && <p style={{ color: 'var(--mu)' }}><b>Explanation:</b> {q.explanation}</p>}</div> })}
    {cmp && <Compare list={sibs} onClose={() => setCmp(false)} />}</>
}

export default function Analytics({ ctx }) {
  const { rows, exams, doms, loading } = useAttempts()
  const [f, setF] = useState({ exam: ctx?.exam || '', dom: '', stu: '', no: '', from: '', to: '', res: '' }), [sel, setSel] = useState(null), up = p => setF(x => ({ ...x, ...p }))
  const list = useMemo(() => rows.filter(r => (!f.exam || r.exam_id === f.exam) && (!f.dom || r.dom === f.dom) && (!f.no || r.attempt_no === +f.no) && (!f.res || (f.res === 'pass') === r.passed) && (!f.from || dateKey(r.submitted_at) >= f.from) && (!f.to || dateKey(r.submitted_at) <= f.to)
    && (!f.stu || (r.students?.name + ' ' + r.students?.usn + ' ' + r.student_email).toLowerCase().includes(f.stu.toLowerCase()))), [rows, f])
  const k = useMemo(() => kpis(list), [list])
  const ex = () => `igeeks-analytics-${exams.find(e => e.id === f.exam)?.title?.replace(/\W+/g, '-') || 'all-exams'}`
  const out = fmt => { if (!list.length) return toast('Nothing to export', 1); exportSheets({ 'Student analytics': list.map(analyticsRow), 'Exam summary': kpiRows(k) }, ex(), fmt) }
  if (sel) return <AttemptDetail a={sel} rows={rows} onBack={() => setSel(null)} />
  return <><h1>Exam Analytics & <em>Student Performance</em></h1><p className="sub">Pick an exam to see how every student did. Click a row for the full answer analysis.</p>
    <div className="card" style={{ marginBottom: 16 }}><div className="grid g4"><div><label className="f">Exam</label><select value={f.exam} onChange={e => up({ exam: e.target.value })}><option value="">All exams</option>{exams.map(e => <option key={e.id} value={e.id}>{e.title}</option>)}</select></div>
      <div><label className="f">Domain</label><select value={f.dom} onChange={e => up({ dom: e.target.value })}><option value="">All domains</option>{doms.map(d => <option key={d.id}>{d.name}</option>)}</select></div>
      <div><label className="f">Student (name, USN, email)</label><input type="text" value={f.stu} onChange={e => up({ stu: e.target.value })} /></div>
      <div><label className="f">Attempt number</label><select value={f.no} onChange={e => up({ no: e.target.value })}><option value="">Any</option>{[1, 2, 3, 4, 5].map(n => <option key={n}>{n}</option>)}</select></div>
      <div><label className="f">From</label><input type="date" value={f.from} onChange={e => up({ from: e.target.value })} /></div><div><label className="f">To</label><input type="date" value={f.to} onChange={e => up({ to: e.target.value })} /></div>
      <div><label className="f">Result</label><select value={f.res} onChange={e => up({ res: e.target.value })}><option value="">Pass and fail</option><option value="pass">Pass</option><option value="fail">Fail</option></select></div>
      <div style={{ alignSelf: 'end', display: 'flex', gap: 8 }}><button className="btn s" onClick={() => out('xlsx')}>Excel</button><button className="btn s alt" onClick={() => out('csv')}>CSV</button></div></div></div>
    <Loading on={loading} />
    <div className="grid g4" style={{ marginBottom: 16 }}><Kpi label="Students attempted" value={k.students} /><Kpi label="Completed attempts" value={k.attempts} /><Kpi label="Average score" value={k.avgScore.toFixed(1)} /><Kpi label="Average percentage" value={k.avgPct.toFixed(1) + '%'} />
      <Kpi label="Highest score" value={k.highest} /><Kpi label="Lowest score" value={k.lowest} /><Kpi label="Pass rate" value={k.passPct.toFixed(0) + '%'} /><Kpi label="Fail rate" value={k.failPct.toFixed(0) + '%'} />
      <Kpi label="Correct answers" value={k.correct} /><Kpi label="Wrong answers" value={k.wrong} /><Kpi label="Unanswered" value={k.unanswered} /><Kpi label="Average time" value={fmtTime(k.avgTime)} /></div>
    <div className="card"><div className="scroll"><table><thead><tr><th>Student</th><th>USN</th><th>Email</th><th>Domain</th><th>Attempt</th><th>Score</th><th>Total</th><th>%</th><th>Correct</th><th>Wrong</th><th>Unans.</th><th>Time</th><th>Status</th></tr></thead><tbody>
      {list.map(r => <tr key={r.id} onClick={() => setSel(r)} style={{ cursor: 'pointer' }}><td>{r.students?.name}</td><td>{r.students?.usn}</td><td>{r.student_email}</td><td>{r.dom}</td><td>{r.attempt_no}</td><td>{r.score}</td><td>{r.max}</td><td>{r.pct}%</td><td>{r.correct ?? '-'}</td><td>{r.wrong ?? '-'}</td><td>{r.unanswered ?? '-'}</td><td>{fmtTime(r.time_taken_sec)}</td><td><Chip c={r.passed ? 'g' : 'r'}>{r.passed ? 'Pass' : 'Fail'}</Chip></td></tr>)}
      {!list.length && !loading && <tr><td colSpan="13" style={{ color: 'var(--mu)' }}>No attempts match these filters.</td></tr>}</tbody></table></div></div></>
}
