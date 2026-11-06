// Judge0 language ids (Judge0 CE). Change here if your Judge0 server uses other versions.
export const LANG: Record<string, number> = { c: 50, cpp: 54, java: 62, python: 71, javascript: 63, csharp: 51, sql: 82 }
export async function judge(lang: string, code: string, stdin: string, expected?: string) {
  const url = Deno.env.get('JUDGE0_URL') || 'https://ce.judge0.com'
  const headers: Record<string, string> = { 'Content-Type': 'application/json' }
  const tok = Deno.env.get('JUDGE0_TOKEN')
  if (tok) headers['X-Auth-Token'] = tok
  const body: Record<string, unknown> = { source_code: code, language_id: LANG[lang], stdin }
  if (expected !== undefined) body.expected_output = expected
  const r = await fetch(url + '/submissions?base64_encoded=false&wait=true', { method: 'POST', headers, body: JSON.stringify(body) })
  if (!r.ok) throw new Error('Judge0 ' + r.status)
  return await r.json()
}
