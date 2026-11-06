import * as XLSX from 'xlsx'
export const dKey=r=>new Date(r.submitted_at).toLocaleDateString('en-CA'),mKey=r=>dKey(r).slice(0,7)
const line=(r,i)=>({Rank:i+1,Name:r.students?.name,Email:r.student_email,USN:r.students?.usn,Phone:r.students?.phone,College:r.students?.college,Branch:r.students?.branch,Plan:r.students?.plan,Domain:r.students?.domain,Exam:r.exam_title,Score:`${r.score}/${r.max}`,Percent:r.pct,Result:r.passed?'Passed':'Not passed','Coding to review':r.pending,'Tab/window violations':r.violations,Date:dKey(r),Month:mKey(r),Time:new Date(r.submitted_at).toLocaleTimeString()})
const sheet=rows=>XLSX.utils.json_to_sheet([...rows].sort((a,b)=>b.pct-a.pct).map(line))
export function exportFiltered(rows,label){const wb=XLSX.utils.book_new();XLSX.utils.book_append_sheet(wb,sheet(rows),label.slice(0,31));XLSX.writeFile(wb,`igeeks-results-${label.replace(/\s/g,'-')}.xlsx`)}
export function exportAll(rows){const wb=XLSX.utils.book_new();XLSX.utils.book_append_sheet(wb,sheet(rows),'All results')
const grp=f=>rows.reduce((m,r)=>((m[f(r)]??=[]).push(r),m),{})
const M=grp(mKey),D=grp(dKey);Object.keys(M).sort().reverse().forEach(k=>XLSX.utils.book_append_sheet(wb,sheet(M[k]),'Month '+k))
Object.keys(D).sort().reverse().forEach(k=>XLSX.utils.book_append_sheet(wb,sheet(D[k]),'Date '+k));XLSX.writeFile(wb,'igeeks-results-full.xlsx')}
export function exportSheets(sheets, file, fmt = 'xlsx') {
  const wb = XLSX.utils.book_new()
  for (const [name, rows] of Object.entries(sheets)) { XLSX.utils.book_append_sheet(wb, XLSX.utils.json_to_sheet(rows), name.slice(0, 31)); if (fmt === 'csv') break }
  XLSX.writeFile(wb, file + '.' + fmt, { bookType: fmt })
}
