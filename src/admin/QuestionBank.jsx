import {useState,useEffect,useMemo,useRef} from 'react'
import * as XLSX from 'xlsx'
import {sb} from '../lib'
import {Modal,Confirm,Chip,dChip,toast,Loading} from './ui'
import {TYPES,DIFFS,CATS,LANGS,MARKS,MIN_PER_DOMAIN,toSheetRows,TEMPLATE,parseImport,correctText} from './utils'

const blank = d => ({ id: null, domain_id: d || '', type: 'mcq', category: 'conceptual', difficulty: 'beginner', marks: 1, text: '', title: '', explanation: '',
  opts: ['', '', '', ''], cor: [], tf: 'true', acc: '', desc: '', infmt: '', outfmt: '', cons: '', langs: ['python'], starter: '', tests: [{ input: '', expected: '', hidden: false }, { input: '', expected: '', hidden: true }] })

export function Preview({ q, onClose, dn }) {
  return <Modal title="Question preview" onClose={onClose} wide>
    <p><Chip c="b">{dn.get(q.domain_id)}</Chip><Chip c={dChip(q.difficulty)}>{q.difficulty}</Chip><Chip>{TYPES[q.type]}</Chip><Chip>{q.category}</Chip><Chip>{q.marks} mark{q.marks > 1 ? 's' : ''}</Chip></p>
    <h3 style={{ whiteSpace: 'pre-wrap', fontSize: 17 }}>{q.text}</h3>
    {q.options?.map((o, i) => <div key={i} className={'opt ' + (q.correct?.includes?.(i) ? 'on' : '')}>{'ABCDEF'[i]}. {o}{q.correct?.includes?.(i) && <Chip c="g">correct</Chip>}</div>)}
    {q.type === 'tf' && <p>Correct answer: <b>{q.correct}</b></p>}{q.type === 'short' && <p>Accepted answers: <b>{q.correct}</b></p>}
    {q.type === 'code' && <div className="note"><b>Statement</b><div>{q.statement?.description}</div><small>Input: {q.statement?.input_format} · Output: {q.statement?.output_format} · Constraints: {q.statement?.constraints}</small><div>Languages: {(q.languages || []).join(', ')}</div></div>}
    {q.explanation && <div className="note"><b>Explanation:</b> {q.explanation}</div>}
  </Modal>
}

function QForm({ init, domains, onClose, onSaved }) {
  const [f, setF] = useState(init), [busy, setBusy] = useState(false), up = p => setF(x => ({ ...x, ...p }))
  useEffect(() => { if (init.id && init.type === 'code') sb.from('coding_tests').select('*').eq('question_id', init.id).order('position').then(({ data }) => data?.length && up({ tests: data.map(t => ({ input: t.input, expected: t.expected, hidden: t.is_hidden })) })) }, [])
  const save = async () => {
    const t = f.type; if (!f.domain_id) return toast('Choose a domain', 1); if (!f.text.trim()) return toast('Write the question', 1)
    const row = { domain_id: f.domain_id, type: t, category: t === 'code' ? 'coding' : f.category, difficulty: f.difficulty, marks: Math.max(1, +f.marks || 1), text: f.text.trim(), explanation: f.explanation.trim() || null, options: null, correct: null, statement: {}, languages: [], meta: {}, title: null, updated_at: new Date().toISOString() }
    if (t === 'mcq' || t === 'multi') { const o = f.opts.map((v, i) => [v.trim(), i]).filter(a => a[0]), c = f.cor.map(i => o.findIndex(a => a[1] === i)).filter(i => i >= 0)
      if (o.length < 2) return toast('Add at least 2 options', 1); if (!c.length || (t === 'mcq' && c.length !== 1) || (t === 'multi' && c.length < 2)) return toast(t === 'mcq' ? 'Tick exactly one correct option' : 'Tick two or more correct options', 1)
      row.options = o.map(a => a[0]); row.correct = c }
    if (t === 'tf') row.correct = f.tf
    if (t === 'short') { if (!f.acc.trim()) return toast('Add accepted answers', 1); row.correct = f.acc.trim() }
    const tests = f.tests.filter(x => x.expected.trim() !== '')
    if (t === 'code') { if (!f.langs.length) return toast('Choose at least one language', 1); if (!tests.length) return toast('Add at least one test case', 1); if (!f.desc.trim()) return toast('Add the problem description', 1)
      row.title = f.title.trim() || f.text.trim(); row.languages = f.langs; row.meta = { lang: f.langs[0], starter: f.starter }
      row.statement = { description: f.desc, input_format: f.infmt, output_format: f.outfmt, constraints: f.cons, examples: tests.filter(x => !x.hidden).slice(0, 2).map(x => ({ input: x.input, output: x.expected })) } }
    setBusy(true)
    try {
      let id = f.id, e
      if (id) ({ error: e } = await sb.from('questions').update(row).eq('id', id)); else { const r = await sb.from('questions').insert(row).select('id').single(); e = r.error; id = r.data?.id }
      if (e) throw e
      if (t === 'code') { await sb.from('coding_tests').delete().eq('question_id', id); const { error } = await sb.from('coding_tests').insert(tests.map((x, i) => ({ question_id: id, input: x.input, expected: x.expected, is_hidden: !!x.hidden, position: i + 1 }))); if (error) throw error }
      toast(f.id ? 'Question updated' : 'Question added'); onSaved()
    } catch (e) { toast(/duplicate|unique/i.test(e.message) ? 'This question already exists in that domain' : e.message, 1) } setBusy(false)
  }
  const t = f.type
  return <Modal title={f.id ? 'Edit question' : 'Add question'} onClose={onClose} wide>
    <div className="grid g2"><div><label className="f">Domain</label><select value={f.domain_id} onChange={e => up({ domain_id: e.target.value })}><option value="">Select…</option>{domains.map(d => <option key={d.id} value={d.id}>{d.name}</option>)}</select></div>
      <div><label className="f">Difficulty</label><select value={f.difficulty} onChange={e => up({ difficulty: e.target.value, marks: MARKS[e.target.value] })}>{DIFFS.map(d => <option key={d}>{d}</option>)}</select></div></div>
    <label className="f">Type</label><div className="tiles">{Object.entries(TYPES).map(([k, v]) => <button key={k} className={'btn s ' + (t === k ? '' : 'alt')} onClick={() => up({ type: k })}>{v}</button>)}</div>
    <div className="grid g2">{t !== 'code' && <div><label className="f">Category</label><select value={f.category} onChange={e => up({ category: e.target.value })}>{CATS.map(d => <option key={d}>{d}</option>)}</select></div>}<div><label className="f">Marks</label><input type="number" min="1" value={f.marks} onChange={e => up({ marks: e.target.value })} /></div></div>
    <label className="f">{t === 'code' ? 'Problem title' : 'Question'}</label><textarea style={{ minHeight: 80, fontFamily: 'inherit' }} value={f.text} onChange={e => up({ text: e.target.value })} />
    {(t === 'mcq' || t === 'multi') && <><label className="f">Options. Tick the correct {t === 'mcq' ? 'one' : 'ones'}.</label>{f.opts.map((o, i) => <div key={i} style={{ display: 'flex', gap: 10, alignItems: 'center', marginTop: 8 }}>
      <input className="qpick" style={{ width: 18, height: 18 }} type={t === 'mcq' ? 'radio' : 'checkbox'} name="c" checked={f.cor.includes(i)} onChange={() => up({ cor: t === 'mcq' ? [i] : f.cor.includes(i) ? f.cor.filter(x => x !== i) : [...f.cor, i] })} />
      <input type="text" value={o} placeholder={'Option ' + 'ABCDEF'[i]} onChange={e => { const n = [...f.opts]; n[i] = e.target.value; up({ opts: n }) }} /></div>)}
      {f.opts.length < 6 && <button className="btn s alt" style={{ marginTop: 10 }} onClick={() => up({ opts: [...f.opts, ''] })}>Add option</button>}</>}
    {t === 'tf' && <><label className="f">Correct answer</label><select value={f.tf} onChange={e => up({ tf: e.target.value })}><option value="true">True</option><option value="false">False</option></select></>}
    {t === 'short' && <><label className="f">Accepted answers, comma separated</label><input type="text" value={f.acc} onChange={e => up({ acc: e.target.value })} /></>}
    {t === 'code' && <><label className="f">Problem description</label><textarea style={{ fontFamily: 'inherit' }} value={f.desc} onChange={e => up({ desc: e.target.value })} />
      <div className="grid g2"><div><label className="f">Input format</label><input type="text" value={f.infmt} onChange={e => up({ infmt: e.target.value })} /></div><div><label className="f">Output format</label><input type="text" value={f.outfmt} onChange={e => up({ outfmt: e.target.value })} /></div></div>
      <label className="f">Constraints</label><input type="text" value={f.cons} onChange={e => up({ cons: e.target.value })} />
      <label className="f">Allowed languages</label><div className="tiles">{Object.entries(LANGS).map(([k, v]) => <label key={k} className="qpick"><input type="checkbox" checked={f.langs.includes(k)} onChange={() => up({ langs: f.langs.includes(k) ? f.langs.filter(x => x !== k) : [...f.langs, k] })} />{v}</label>)}</div>
      <label className="f">Starter code</label><textarea value={f.starter} onChange={e => up({ starter: e.target.value })} spellCheck={false} />
      <label className="f">Test cases (tick Hidden to keep a test secret from students; the first two visible tests are shown as examples)</label>
      {f.tests.map((x, i) => <div key={i} className="grid g2" style={{ marginTop: 8, alignItems: 'start' }}><textarea style={{ minHeight: 50 }} placeholder="Input" value={x.input} onChange={e => { const n = [...f.tests]; n[i] = { ...x, input: e.target.value }; up({ tests: n }) }} />
        <div style={{ display: 'flex', gap: 8 }}><textarea style={{ minHeight: 50 }} placeholder="Expected output" value={x.expected} onChange={e => { const n = [...f.tests]; n[i] = { ...x, expected: e.target.value }; up({ tests: n }) }} />
          <div><label className="qpick"><input type="checkbox" checked={x.hidden} onChange={e => { const n = [...f.tests]; n[i] = { ...x, hidden: e.target.checked }; up({ tests: n }) }} />Hidden</label><button className="btn s del" onClick={() => up({ tests: f.tests.filter((_, k) => k !== i) })}>Remove</button></div></div></div>)}
      <button className="btn s alt" style={{ marginTop: 10 }} onClick={() => up({ tests: [...f.tests, { input: '', expected: '', hidden: true }] })}>Add test case</button></>}
    <label className="f">Explanation (shown to students only when you allow solutions)</label><textarea style={{ minHeight: 70, fontFamily: 'inherit' }} value={f.explanation} onChange={e => up({ explanation: e.target.value })} />
    <button className="btn" disabled={busy} onClick={save}>{busy ? 'Saving…' : f.id ? 'Update question' : 'Save question'}</button>
  </Modal>
}

export default function QuestionBank({ ctx }) {
  const [domains, setDomains] = useState([]), [qs, setQs] = useState([]), [busy, setBusy] = useState(true)
  const [dom, setDom] = useState(ctx?.domain || 'all'), [s, setS] = useState(''), [df, setDf] = useState(''), [ty, setTy] = useState(''), [page, setPage] = useState(0)
  const [form, setForm] = useState(null), [prev, setPrev] = useState(null), [del, setDel] = useState(null), [imp, setImp] = useState(null)
  const file = useRef()
  const load = async () => { setBusy(true); const [d, q] = await Promise.all([sb.from('domains').select('*').order('sort'), sb.from('questions').select('*').not('domain_id', 'is', null).order('created_at', { ascending: false }).limit(5000)]); setDomains(d.data || []); setQs(q.data || []); setBusy(false) }
  useEffect(() => { load() }, [])
  const dn = useMemo(() => new Map(domains.map(d => [d.id, d.name])), [domains])
  const list = useMemo(() => qs.filter(q => (dom === 'all' || q.domain_id === dom) && (!df || q.difficulty === df) && (!ty || q.type === ty) && (!s || (q.text + ' ' + (q.explanation || '')).toLowerCase().includes(s.toLowerCase()))), [qs, dom, s, df, ty])
  const cnt = id => qs.filter(q => q.domain_id === id).length, pages = Math.max(1, Math.ceil(list.length / 15)), shown = list.slice(page * 15, page * 15 + 15)
  useEffect(() => setPage(0), [dom, s, df, ty])
  const edit = q => setForm({ ...blank(q.domain_id), id: q.id, domain_id: q.domain_id, type: q.type, category: q.category === 'coding' ? 'conceptual' : q.category, difficulty: q.difficulty, marks: q.marks, text: q.text, title: q.title || '', explanation: q.explanation || '',
    opts: q.options ? [...q.options] : ['', '', '', ''], cor: q.type === 'mcq' || q.type === 'multi' ? q.correct || [] : [], tf: q.type === 'tf' ? q.correct : 'true', acc: q.type === 'short' ? q.correct : '',
    desc: q.statement?.description || '', infmt: q.statement?.input_format || '', outfmt: q.statement?.output_format || '', cons: q.statement?.constraints || '', langs: q.languages?.length ? q.languages : ['python'], starter: q.meta?.starter || '' })
  const loadBank = async () => {
    if (!domains.length) return toast('No domains found. Run supabase/migration_4.sql first.', 1)
    setBusy(true); let added = 0
    try {
      const bank = (await import('./bank.json')).default, ids = new Map(domains.map(d => [d.slug, d.id])), have = new Set(qs.map(q => q.domain_id + '|' + q.text.toLowerCase()))
      for (const [slug, { questions }] of Object.entries(bank)) {
        const did = ids.get(slug); if (!did) continue
        const fresh = questions.filter(q => !have.has(did + '|' + q.text.toLowerCase()))
        for (let i = 0; i < fresh.length; i += 40) {
          const part = fresh.slice(i, i + 40), { data, error } = await sb.from('questions').insert(part.map(({ tests, ...q }) => ({ ...q, domain_id: did }))).select('id,text'); if (error) throw error
          const rows = []; data.forEach(r => { const q = part.find(x => x.text === r.text); (q?.tests || []).forEach((t, k) => rows.push({ question_id: r.id, input: t.input, expected: t.expected, is_hidden: t.hidden, position: k + 1 })) })
          if (rows.length) { const { error: e2 } = await sb.from('coding_tests').insert(rows); if (e2) throw e2 }
          added += data.length
        }
      }
      toast(added ? `${added} questions added` : 'All starter questions are already loaded')
    } catch (e) { toast(e.message, 1) }
    setBusy(false); load()
  }
  const dup = async q => { const { id, created_at, ...r } = q; const { data, error } = await sb.from('questions').insert({ ...r, text: q.text + ' (copy)' }).select('id').single(); if (error) return toast(error.message, 1)
    if (q.type === 'code') { const { data: t } = await sb.from('coding_tests').select('*').eq('question_id', q.id); if (t?.length) await sb.from('coding_tests').insert(t.map(({ id: _i, question_id, ...x }) => ({ ...x, question_id: data.id }))) }
    toast('Question duplicated. Edit the copy.'); load() }
  const remove = async () => { const { error } = await sb.from('questions').delete().eq('id', del.id); setDel(null); if (error) return toast(error.message, 1); toast('Question deleted'); load() }
  const exportX = fmt => { const ws = XLSX.utils.json_to_sheet(toSheetRows(list, dn)), wb = XLSX.utils.book_new(); XLSX.utils.book_append_sheet(wb, ws, 'Questions'); XLSX.writeFile(wb, 'igeeks-questions.' + fmt, { bookType: fmt }) }
  const template = () => { const wb = XLSX.utils.book_new(); XLSX.utils.book_append_sheet(wb, XLSX.utils.json_to_sheet(TEMPLATE), 'Questions'); XLSX.writeFile(wb, 'igeeks-question-template.xlsx') }
  const pick = async e => { const f = e.target.files[0]; e.target.value = ''; if (!f) return; try { const wb = XLSX.read(await f.arrayBuffer()), rows = XLSX.utils.sheet_to_json(wb.Sheets[wb.SheetNames[0]], { defval: '' }); const r = parseImport(rows, domains)
    const have = new Set(qs.map(q => q.domain_id + '|' + q.text.toLowerCase())), seen = new Set(), fresh = [], dups = []
    r.valid.forEach(v => { const k = v.domain_id + '|' + v.text.toLowerCase(); (have.has(k) || seen.has(k) ? dups : fresh).push(v); seen.add(k) }); setImp({ fresh, dups: dups.length, errors: r.errors, total: rows.length }) } catch (er) { toast('Could not read that file: ' + er.message, 1) } }
  const doImport = async () => { setBusy(true); for (let i = 0; i < imp.fresh.length; i += 100) { const { error } = await sb.from('questions').insert(imp.fresh.slice(i, i + 100)); if (error) { toast(error.message, 1); break } } toast(`${imp.fresh.length} questions imported`); setImp(null); load() }

  return <><div style={{ display: 'flex', justifyContent: 'space-between', flexWrap: 'wrap', gap: 10 }}><div><h1>Question <em>Bank</em></h1><p className="sub">Browse by domain, search, filter and manage every question.</p></div>
    <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap', alignItems: 'start' }}><button className="btn s" onClick={() => setForm(blank(dom === 'all' ? '' : dom))}>+ Add question</button><button className="btn s alt" onClick={loadBank} disabled={busy}>Load starter questions</button><button className="btn s alt" onClick={() => file.current.click()}>Import Excel</button><button className="btn s alt" onClick={template}>Template</button><button className="btn s alt" onClick={() => exportX('xlsx')} disabled={!list.length}>Export Excel</button><button className="btn s alt" onClick={() => exportX('csv')} disabled={!list.length}>Export CSV</button>
      <input ref={file} type="file" accept=".xlsx,.xls,.csv" hidden onChange={pick} /></div></div>
    <div className="tiles" style={{ marginBottom: 14 }}><button className={'btn s ' + (dom === 'all' ? '' : 'alt')} onClick={() => setDom('all')}>All ({qs.length})</button>{domains.map(d => <button key={d.id} className={'btn s ' + (dom === d.id ? '' : 'alt')} onClick={() => setDom(d.id)}>{d.name} ({cnt(d.id)})</button>)}</div>
    <div className="grid g4" style={{ marginBottom: 14 }}><input type="text" placeholder="Search questions…" value={s} onChange={e => setS(e.target.value)} /><select value={df} onChange={e => setDf(e.target.value)}><option value="">All difficulties</option>{DIFFS.map(d => <option key={d}>{d}</option>)}</select><select value={ty} onChange={e => setTy(e.target.value)}><option value="">All types</option>{Object.entries(TYPES).map(([k, v]) => <option key={k} value={k}>{v}</option>)}</select><div style={{ alignSelf: 'center', color: 'var(--mu)' }}>{list.length} question{list.length === 1 ? '' : 's'}</div></div>
    <Loading on={busy} />
    <div className="card">{shown.map(q => <div className="row" key={q.id}><div style={{ flex: 1, minWidth: 240 }}><Chip c="b">{dn.get(q.domain_id)}</Chip><Chip c={dChip(q.difficulty)}>{q.difficulty}</Chip><Chip>{TYPES[q.type]}</Chip><Chip>{q.marks}m</Chip><div style={{ marginTop: 6, whiteSpace: 'pre-wrap' }}>{q.text.length > 160 ? q.text.slice(0, 160) + '…' : q.text}</div></div>
      <div style={{ display: 'flex', gap: 6, flexWrap: 'wrap' }}><button className="btn s alt" onClick={() => setPrev(q)}>Preview</button><button className="btn s alt" onClick={() => edit(q)}>Edit</button><button className="btn s alt" onClick={() => dup(q)}>Duplicate</button><button className="btn s del" onClick={() => setDel(q)}>Delete</button></div></div>)}
      {!shown.length && !busy && <p className="sub">{qs.length ? 'No questions match.' : 'No questions yet. Tap “Load starter questions” to add 339 ready questions (25+ per domain, with coding problems and test cases).'}</p>}
      {!qs.length && !busy && <button className="btn s" onClick={loadBank}>Load starter questions</button>}
      <div style={{ display: 'flex', gap: 10, alignItems: 'center', justifyContent: 'center', marginTop: 12 }}><button className="btn s alt" disabled={page === 0} onClick={() => setPage(page - 1)}>Previous</button><span>Page {page + 1} of {pages}</span><button className="btn s alt" disabled={page + 1 >= pages} onClick={() => setPage(page + 1)}>Next</button></div></div>
    {form && <QForm init={form} domains={domains} onClose={() => setForm(null)} onSaved={() => { setForm(null); load() }} />}
    {prev && <Preview q={prev} dn={dn} onClose={() => setPrev(null)} />}
    {del && <Confirm text={`Delete this question? Exams that use it will simply skip it. "${del.text.slice(0, 80)}"`} onYes={remove} onNo={() => setDel(null)} />}
    {imp && <Modal title="Import preview" onClose={() => setImp(null)}><p><Chip c="g">{imp.fresh.length} new</Chip><Chip c="y">{imp.dups} duplicates skipped</Chip><Chip c="r">{imp.errors.length} with errors</Chip></p>
      {imp.errors.length > 0 && <div className="out" style={{ maxHeight: 180 }}>{imp.errors.slice(0, 50).map(e => `Row ${e.row}: ${e.msg}`).join('\n')}</div>}
      <p className="sub">Rows with errors are skipped. Fix them in the file and import again.</p><button className="btn" disabled={!imp.fresh.length || busy} onClick={doImport}>Import {imp.fresh.length} questions</button></Modal>}
  </>
}
