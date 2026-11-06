import {useState} from 'react'
import {sb,exportAll,exportFiltered,dKey,mKey} from '../lib'
export function Review({rows,Q,X,reload}){
const [m,setM]=useState({}),todo=rows.filter(r=>r.pending>0)
const save=async(r,q)=>{const k=r.id+q.id,a=Math.min(q.marks,Math.max(0,parseFloat(m[k])));if(isNaN(a))return alert('Enter the marks first');const ex=X.find(x=>x.id===r.exam_id)
const score=+r.score+a,max=+r.max+q.marks,pct=Math.round(score/max*100)
const {error}=await sb.from('attempts').update({score,max,pct,pending:r.pending-1,passed:pct>=(ex?.pass_pct??50),grading:{...(r.grading||{}),[q.id]:{awarded:a}}}).eq('id',r.id);if(error)return alert(error.message);reload()}
const items=todo.flatMap(r=>{const ex=X.find(x=>x.id===r.exam_id);return(ex?.question_ids||[]).map(id=>Q.find(q=>q.id===id)).filter(q=>q&&q.type==='code'&&r.grading?.[q.id]==null).map(q=>({r,q}))})
return<div className="card"><h2>Coding answers to review</h2>{!items.length&&<p className="sub">Nothing is waiting for review.</p>}
{items.map(({r,q})=><div className="row" key={r.id+q.id} style={{alignItems:'flex-start'}}><div style={{flex:1,minWidth:260}}><b>{r.students?.name}</b> <span className="chip">{r.exam_title}</span><p>{q.text}</p><pre style={{background:'var(--in)',border:'1px solid var(--bd)',borderRadius:12,padding:12,overflow:'auto',margin:0}}>{r.answers?.[q.id]||'(no answer)'}</pre>{q.meta?.expected&&<small style={{color:'var(--mu)'}}>Expected: {q.meta.expected}</small>}</div>
<div style={{display:'flex',gap:8}}><input type="number" min="0" max={q.marks} step="0.5" placeholder={'0 to '+q.marks} style={{width:110}} value={m[r.id+q.id]??''} onChange={e=>setM({...m,[r.id+q.id]:e.target.value})}/><button className="btn s" onClick={()=>save(r,q)}>Save marks</button></div></div>)}</div>}
export function Results({rows}){
const [sort,setSort]=useState('score'),[mode,setMode]=useState('all'),[val,setVal]=useState('')
const list=rows.filter(r=>mode==='all'||!val||(mode==='month'?mKey(r)===val:dKey(r)===val))
const rk=[...list].sort((a,b)=>sort==='score'?b.pct-a.pct:sort==='date'?new Date(b.submitted_at)-new Date(a.submitted_at):mKey(b).localeCompare(mKey(a))||b.pct-a.pct)
const label=mode==='all'||!val?'All results':(mode==='month'?'Month ':'Date ')+val
return<div className="card"><h2>Student results</h2><div className="bar2" style={{marginBottom:16}}>
<div><label className="f" style={{margin:0}}>Sort by</label><select value={sort} onChange={e=>setSort(e.target.value)}><option value="score">Highest score first</option><option value="date">Date, newest first</option><option value="month">Month wise, then score</option></select></div>
<div><label className="f" style={{margin:0}}>Filter</label><select value={mode} onChange={e=>{setMode(e.target.value);setVal('')}}><option value="all">All time</option><option value="month">One month</option><option value="date">One date</option></select></div>
{mode!=='all'&&<div><label className="f" style={{margin:0}}>{mode==='month'?'Month':'Date'}</label><input type={mode==='month'?'month':'date'} value={val} onChange={e=>setVal(e.target.value)}/></div>}
<button className="btn s" disabled={!list.length} onClick={()=>exportFiltered(list,label)}>Download this view</button><button className="btn s alt" disabled={!rows.length} onClick={()=>exportAll(rows)}>Download full workbook</button></div>
<div className="scroll"><table><thead><tr><th>#</th><th>Student</th><th>USN</th><th>College</th><th>Exam</th><th>Score</th><th>Result</th><th>Violations</th><th>Month</th><th>Date</th></tr></thead><tbody>{rk.map((r,i)=><tr key={r.id}><td><b>{i+1}</b></td><td>{r.students?.name}<br/><span style={{color:'var(--mu)'}}>{r.student_email}</span></td><td>{r.students?.usn}</td><td>{r.students?.college}</td><td>{r.exam_title}</td><td>{r.score}/{r.max} ({r.pct}%)</td><td><span className={'chip '+(r.passed?'g':'r')}>{r.passed?'Passed':'Not passed'}</span>{r.pending>0&&<span className="chip y">{r.pending} to review</span>}</td><td>{r.violations}</td><td>{mKey(r)}</td><td>{dKey(r)}</td></tr>)}{!rk.length&&<tr><td colSpan="10" style={{color:'var(--mu)'}}>No results for this view.</td></tr>}</tbody></table></div>
<p className="sub" style={{marginTop:14}}>The full workbook has one sheet for all results, one for each month, and one for each date. Each sheet is ranked by score.</p></div>}
