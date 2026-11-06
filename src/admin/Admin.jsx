import {useState,useEffect} from 'react'
import {sb} from '../lib'
import {Chip,Kpi,Loading} from './ui'
import {MIN_PER_DOMAIN,TYPES,fmtTime} from './utils'
import QuestionBank from './QuestionBank'
import {ExamForm,ExamList} from './Exams'
import Analytics from './Analytics'
import People from './People'
import {Results,Review} from './Legacy'

const NAV = [['dash', 'Dashboard'], ['students', 'Students'], ['domains', 'Domains'], ['qbank', 'Question Bank'], ['create', 'Create Exam'], ['exams', 'Manage Exams'], ['analytics', 'Exam Analytics'], ['perf', 'Student Performance'], ['results', 'Results & Excel'], ['review', 'Code Review'], ['settings', 'Settings']]

function useStats() {
  const [d, setD] = useState({ loading: true, doms: [], qs: [], exams: 0, students: 0, attempts: [], })
  useEffect(() => { Promise.all([sb.from('domains').select('*').order('sort'), sb.from('questions').select('domain_id,type,difficulty').not('domain_id', 'is', null).limit(10000), sb.from('exams').select('id', { count: 'exact', head: true }), sb.from('students').select('email', { count: 'exact', head: true }).not('name', 'is', null),
    sb.from('attempts').select('id,student_email,exam_title,attempt_no,score,max,pct,passed,submitted_at,students(name)').order('submitted_at', { ascending: false }).limit(5000)])
    .then(([a, b, c, e, f]) => setD({ loading: false, doms: a.data || [], qs: b.data || [], exams: c.count || 0, students: e.count || 0, attempts: f.data || [] })) }, [])
  return d
}

function Dashboard({ go }) {
  const d = useStats(), n = d.attempts.length, avg = n ? Math.round(d.attempts.reduce((t, r) => t + r.pct, 0) / n) : 0
  return <><h1>Admin <em>dashboard</em></h1><p className="sub">A quick look at your platform.</p><Loading on={d.loading} />
    <div className="grid g4" style={{ marginBottom: 20 }}><Kpi label="Students" value={d.students} /><Kpi label="Exams" value={d.exams} /><Kpi label="Questions" value={d.qs.length} /><Kpi label="Attempts" value={n} /><Kpi label="Average score" value={avg + '%'} /><Kpi label="Pass rate" value={(n ? Math.round(d.attempts.filter(r => r.passed).length / n * 100) : 0) + '%'} /></div>
    <div className="grid g2"><div className="card"><h2>Question bank coverage</h2>{d.doms.map(x => { const c = d.qs.filter(q => q.domain_id === x.id).length; return <div className="row" key={x.id} style={{ padding: '8px 0' }}><span>{x.name}</span><span><Chip c={c >= MIN_PER_DOMAIN ? 'g' : 'r'}>{c} / {MIN_PER_DOMAIN}</Chip></span></div> })}</div>
      <div className="card"><h2>Recent attempts</h2>{d.attempts.slice(0, 10).map(r => <div className="row" key={r.id} style={{ padding: '8px 0' }}><span>{r.students?.name || r.student_email}<br /><small style={{ color: 'var(--mu)' }}>{r.exam_title} · attempt {r.attempt_no}</small></span><span><Chip c={r.passed ? 'g' : 'r'}>{r.pct}%</Chip></span></div>)}{!n && !d.loading && <p className="sub">No attempts yet.</p>}
        <button className="btn s alt" style={{ marginTop: 10 }} onClick={() => go('analytics')}>Open analytics</button></div></div></>
}

function Domains({ go }) {
  const d = useStats(), by = (id, f) => d.qs.filter(q => q.domain_id === id && f(q)).length
  return <><h1><em>Domains</em></h1><p className="sub">Questions in each domain. Each domain should have at least {MIN_PER_DOMAIN}.</p><Loading on={d.loading} />
    <div className="card"><div className="scroll"><table><thead><tr><th>Domain</th><th>Total</th><th>Objective</th><th>Coding</th><th>Beginner</th><th>Intermediate</th><th>Advanced</th><th>Status</th><th /></tr></thead><tbody>
      {d.doms.map(x => { const t = by(x.id, () => true); return <tr key={x.id}><td><b>{x.name}</b></td><td>{t}</td><td>{by(x.id, q => q.type !== 'code')}</td><td>{by(x.id, q => q.type === 'code')}</td><td>{by(x.id, q => q.difficulty === 'beginner')}</td><td>{by(x.id, q => q.difficulty === 'intermediate')}</td><td>{by(x.id, q => q.difficulty === 'advanced')}</td>
        <td><Chip c={t >= MIN_PER_DOMAIN ? 'g' : 'r'}>{t >= MIN_PER_DOMAIN ? 'OK' : `Needs ${MIN_PER_DOMAIN - t} more`}</Chip></td><td><button className="btn s alt" onClick={() => go('qbank', { domain: x.id })}>Open</button></td></tr> })}</tbody></table></div></div></>
}

function Settings({ user, out }) {
  return <><h1><em>Settings</em></h1><div className="card"><h2>Account</h2><p>Signed in as <b>{user.email}</b></p><button className="btn s alt" onClick={out}>Sign out</button></div>
    <div className="card" style={{ marginTop: 16 }}><h2>Platform rules</h2><p className="sub" style={{ marginBottom: 6 }}>Minimum questions per domain: {MIN_PER_DOMAIN}. Attempt limits, timers, negative marking and solution visibility are set for each exam on the Create Exam page.</p>
      <p className="sub" style={{ marginBottom: 0 }}>Email OTP uses SMTP secrets and code running uses the Judge0 secrets on your Supabase project. See the README for the settings.</p></div></>
}

export default function Admin() {
  const [user, setUser] = useState(null), [ok, setOk] = useState(null), [em, setEm] = useState(''), [pw, setPw] = useState(''), [err, setErr] = useState(''), [page, setPage] = useState('dash'), [ctx, setCtx] = useState({}), [edit, setEdit] = useState(null), [doms, setDoms] = useState([])
  useEffect(() => { sb.auth.getSession().then(({ data }) => setUser(data.session?.user || null)) }, [])
  useEffect(() => { if (!user) return; sb.rpc('is_admin').then(({ data }) => setOk(!!data)); sb.from('domains').select('*').order('sort').then(({ data }) => setDoms(data || [])) }, [user])
  const login = async () => { setErr(''); const { data, error } = await sb.auth.signInWithPassword({ email: em, password: pw }); error ? setErr(error.message) : setUser(data.user) }
  const out = () => sb.auth.signOut().then(() => { setUser(null); setOk(null) })
  const go = (p, c = {}) => { setPage(p); setCtx(c); if (p !== 'create') setEdit(null) }
  if (!user) return <div className="narrow card"><h1>Admin <em>sign in</em></h1><label className="f">Email</label><input type="email" value={em} onChange={e => setEm(e.target.value)} /><label className="f">Password</label><input type="password" value={pw} onChange={e => setPw(e.target.value)} onKeyDown={e => e.key === 'Enter' && login()} />{err && <div className="err">{err}</div>}<button className="btn" onClick={login}>Sign in</button></div>
  if (ok === false) return <div className="narrow card"><h1>No <em>access</em></h1><p className="sub">{user.email} is not an admin. Add this user to the admins table in Supabase, then sign in again.</p><button className="btn alt" onClick={out}>Sign out</button></div>
  const view = { dash: <Dashboard go={go} />, students: <People mode="students" ctx={ctx} />, domains: <Domains go={go} />, qbank: <QuestionBank ctx={ctx} />, create: <ExamForm key={edit?.id || 'new'} domains={doms} edit={edit} onDone={() => go('exams')} />, exams: <ExamList domains={doms} onEdit={x => { setEdit(x); setPage('create') }} />,
    analytics: <Analytics ctx={ctx} />, perf: <People mode="performance" ctx={ctx} />, results: <><h1>Results & <em>Excel</em></h1><p className="sub">Every attempt, sorted by score, date or month, with the full workbook download.</p><LegacyResults /></>, review: <LegacyReview />, settings: <Settings user={user} out={out} /> }[page]
  return <div className="adm"><nav className="side" aria-label="Admin">{NAV.map(([k, l]) => <button key={k} className={page === k ? 'on' : ''} onClick={() => go(k)}>{l}</button>)}</nav><div style={{ minWidth: 0 }}>{view}</div></div>
}

function useLegacy() {
  const [d, setD] = useState({ R: [], Q: [], X: [], ld: true }), [n, setN] = useState(0)
  useEffect(() => { Promise.all([sb.from('attempts').select('*, students(name,usn,phone,college,branch,plan,domain)').order('submitted_at', { ascending: false }).limit(10000), sb.from('questions').select('*').limit(5000), sb.from('exams').select('*')]).then(([r, q, x]) => setD({ R: r.data || [], Q: q.data || [], X: x.data || [], ld: false })) }, [n])
  return { ...d, reload: () => setN(n + 1) }
}
const LegacyResults = () => { const l = useLegacy(); return l.ld ? <Loading on /> : <Results rows={l.R} /> }
const LegacyReview = () => { const l = useLegacy(); return l.ld ? <Loading on /> : <Review rows={l.R} Q={l.Q} X={l.X} reload={l.reload} /> }
