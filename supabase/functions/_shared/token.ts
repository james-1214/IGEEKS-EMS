// Verifies the signed login token created by the `api` function (same secret, same format).
const key = await crypto.subtle.importKey('raw', new TextEncoder().encode(Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!),
  { name: 'HMAC', hash: 'SHA-256' }, false, ['sign'])
const b64u = (s: string) => btoa(s).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '')
const unb64u = (s: string) => atob(s.replace(/-/g, '+').replace(/_/g, '/'))
const sign = async (p: string) => b64u(String.fromCharCode(...new Uint8Array(await crypto.subtle.sign('HMAC', key, new TextEncoder().encode(p)))))
export async function check(t: unknown): Promise<string | null> {
  const [p, sig] = String(t || '').split('.')
  if (!p || !sig || await sign(p) !== sig) return null
  try { const d = JSON.parse(decodeURIComponent(unb64u(p))); return d.x > Date.now() ? String(d.e) : null } catch { return null }
}
