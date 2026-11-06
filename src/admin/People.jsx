import {useState,useEffect,useMemo} from 'react'
import {sb} from '../lib'
import {Chip,Kpi,Bars,Loading} from './ui'
import {kpis,fmtTime} from './utils'
import {useAttempts,AttemptDetail} from './Analytics'

function Perf({ st, rows, all, onBack }) {
  const [sel, setSel] = useState(null), k = kpis(rows)
  if (sel) return <AttemptDetail a={sel} rows={all} onBack={() => setSel(null)} />
  const byExam = [...new Set(rows.map(r => r.exam_title))], byDom = [...new Set(rows.map(r => r.dom || 'Other'))]
  return <>{onBack && <button className="btn s alt" onClick={onBack}>← All students</button>}<h1 style={{ marginTop: 14 }}>{st.name || st.email} <em>performance</em></h1><p className="sub">{st.usn} · {st.email} · {st.college} · {st.branch} · {st.plan}</p>
    <div className="grid g4" style={{ marginBottom: 16 }}><Kpi label="Attempts" value={k.attempts} /><Kpi label="Average %" value={k.avgPct.toFixed(0) + '%'} /><Kpi label="Best score %" value={rows.length ? Math.max(...rows.map(r => r.pct)) + '%' : '-'} /><Kpi label="Passed attempts" value={rows.filter(r => r.passed).length} /></div>
    <div className="grid g2" style={{ marginBottom: 16 }}><div className="card"><h2>Improvement across attempts</h2>{byExam.map(t => <div key={t} style={{ marginBottom: 10 }}><b>{t}</b><Bars data={rows.filter(r => r.exam_title === t).sort((a, b) => a.attempt_no - b.attempt_no).map(r => ({ label: 'Attempt ' + r.attempt_no, value: r.pct, color: r.passed ? 'var(--g)' : 'var(--r)' }))} /></div>)}{!rows.length && <p className="sub">No attempts yet.</p>}</div>
      <div className="card"><h2>Average by domain</h2><Bars data={byDom.map(d => ({ label: d, value: rows.filter(r => (r.dom || 'Other') === d).reduce((t, r, _, a) => t + r.pct / a.length, 0) }))} /></div></div>
    <div className="card"><h2>All attempts</h2><div className="scroll"><table><thead><tr><th>Exam</th><th>Domain</th><th>Attempt</th><th>Score</th><th>%</th><th>Correct / Wrong / Unans.</th><th>Time</th><th>Status</th><th>Date</th></tr></thead><tbody>
      {rows.map(r => <tr key={r.id} style={{ cursor: 'pointer' }} onClick={() => setSel(r)}><td>{r.exam_title}</td><td>{r.dom}</td><td>{r.attempt_no}</td><td>{r.score}/{r.max}</td><td>{r.pct}%</td><td>{r.correct ?? '-'} / {r.wrong ?? '-'} / {r.unanswered ?? '-'}</td><td>{fmtTime(r.time_taken_sec)}</td><td><Chip c={r.passed ? 'g' : 'r'}>{r.passed ? 'Pass' : 'Fail'}</Chip></td><td>{new Date(r.submitted_at).toLocaleDateString()}</td></tr>)}</tbody></table></div></div></>
}

export default function People({ mode, ctx }) {
  const { rows, loading } = useAttempts(), [stu, setStu] = useState([]), [q, setQ] = useState(''), [em, setEm] = useState(ctx?.email || '')
  useEffect(() => { sb.from('students').select('email,name,usn,phone,college,branch,plan,domain').not('name', 'is', null).order('name').limit(5000).then(({ data }) => setStu(data || [])) }, [])
  const stat = e => { const r = rows.filter(x => x.student_email === e); return { n: r.length, avg: r.length ? Math.round(r.reduce((t, x) => t + x.pct, 0) / r.length) : null } }
  const list = useMemo(() => stu.filter(s => !q || (s.name + s.usn + s.email + s.college).toLowerCase().includes(q.toLowerCase())), [stu, q])
  const cur = stu.find(s => s.email === em)
  if (cur && mode === 'students') return <Perf st={cur} rows={rows.filter(r => r.student_email === em)} all={rows} onBack={() => setEm('')} />
  if (mode === 'performance') return <><h1>Student <em>performance</em></h1><p className="sub">Choose a student to see their attempts, improvement and domain scores.</p>
    <div className="card" style={{ marginBottom: 16 }}><label className="f">Student</label><select value={em} onChange={e => setEm(e.target.value)}><option value="">Select a student…</option>{stu.map(s => <option key={s.email} value={s.email}>{s.name} ({s.usn}) · {s.email}</option>)}</select></div>
    <Loading on={loading} />{cur && <Perf st={cur} rows={rows.filter(r => r.student_email === em)} all={rows} />}</>
  return <><h1><em>Students</em></h1><p className="sub">Everyone who has registered. Click a student to see all of their attempts.</p><div className="card"><input type="text" placeholder="Search by name, USN, email or college…" value={q} onChange={e => setQ(e.target.value)} />
    <div className="scroll"><table><thead><tr><th>Name</th><th>USN</th><th>Email</th><th>College</th><th>Domain</th><th>Plan</th><th>Attempts</th><th>Avg %</th></tr></thead><tbody>
      {list.map(s => { const t = stat(s.email); return <tr key={s.email} style={{ cursor: 'pointer' }} onClick={() => setEm(s.email)}><td>{s.name}</td><td>{s.usn}</td><td>{s.email}</td><td>{s.college}</td><td>{s.domain}</td><td>{s.plan}</td><td>{t.n}</td><td>{t.avg ?? '-'}</td></tr> })}
      {!list.length && <tr><td colSpan="8" style={{ color: 'var(--mu)' }}>No students found.</td></tr>}</tbody></table></div></div></>
}
