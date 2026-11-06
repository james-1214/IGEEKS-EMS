import {useEffect} from 'react'
export function toast(msg, bad) {
  const d = document.createElement('div'); d.textContent = msg; d.className = 'toast' + (bad ? ' bad' : ''); d.setAttribute('role', 'status')
  document.body.appendChild(d); setTimeout(() => d.remove(), 3200)
}
export function Modal({ title, onClose, children, wide }) {
  useEffect(() => { const f = e => e.key === 'Escape' && onClose(); document.addEventListener('keydown', f); return () => document.removeEventListener('keydown', f) }, [])
  return <div className="modal" onMouseDown={e => e.target === e.currentTarget && onClose()}><div className="card" style={wide ? { maxWidth: 820 } : null}>
    <div style={{ display: 'flex', justifyContent: 'space-between', gap: 12 }}><h2>{title}</h2><button className="btn s alt" onClick={onClose}>Close</button></div>{children}</div></div>
}
export const Confirm = ({ text, onYes, onNo, yes = 'Delete' }) => <Modal title="Are you sure?" onClose={onNo}><p className="sub">{text}</p><div style={{ display: 'flex', gap: 10 }}><button className="btn alt" onClick={onNo}>Cancel</button><button className="btn" style={{ background: 'var(--r)', color: '#fff' }} onClick={onYes}>{yes}</button></div></Modal>
export const Chip = ({ c = '', children }) => <span className={'chip ' + c}>{children}</span>
export const dChip = d => ({ beginner: 'g', intermediate: 'b', advanced: 'y' }[d] || '')
export const Bars = ({ data, max = 100, unit = '%' }) => <div>{data.map((d, i) => <div key={i} style={{ display: 'flex', alignItems: 'center', gap: 10, margin: '6px 0' }}>
  <span style={{ width: 130, fontSize: 13, color: 'var(--mu)', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }} title={d.label}>{d.label}</span>
  <div style={{ flex: 1, height: 14, background: 'var(--bd)', borderRadius: 9 }}><div style={{ width: Math.min(100, d.value / max * 100) + '%', height: '100%', background: d.color || 'var(--g)', borderRadius: 9 }} /></div>
  <b style={{ width: 52, textAlign: 'right', fontSize: 13 }}>{Math.round(d.value * 10) / 10}{unit}</b></div>)}</div>
export const Kpi = ({ label, value }) => <div className="card stat"><b>{value}</b><span>{label}</span></div>
export const Loading = ({ on }) => on ? <p className="sub">Loading…</p> : null
