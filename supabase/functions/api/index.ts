
import { createClient } from 'npm:@supabase/supabase-js@2'
import nodemailer from 'npm:nodemailer@6.9.14'

// ==========================================
// SUPABASE CONFIGURATION
// ==========================================

const supabaseUrl = Deno.env.get('SUPABASE_URL')
const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')

if (!supabaseUrl || !serviceRoleKey) {
  throw new Error('Missing Supabase environment configuration')
}

const sb = createClient(supabaseUrl, serviceRoleKey)

// ==========================================
// CORS CONFIGURATION
// ==========================================

const cors = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers':
    'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS'
}

const J = (data: unknown, status = 200) =>
  new Response(JSON.stringify(data), {
    status,
    headers: {
      ...cors,
      'Content-Type': 'application/json'
    }
  })

// ==========================================
// COMMON HELPERS
// ==========================================

const sha = async (value: string) => {
  const hash = await crypto.subtle.digest(
    'SHA-256',
    new TextEncoder().encode(value)
  )

  return [...new Uint8Array(hash)]
    .map(b => b.toString(16).padStart(2, '0'))
    .join('')
}

const now = () => new Date().toISOString()

// ==========================================
// STATELESS SESSION TOKENS (no database lookup)
// ==========================================

const hmacKey = await crypto.subtle.importKey('raw', new TextEncoder().encode(serviceRoleKey), { name: 'HMAC', hash: 'SHA-256' }, false, ['sign'])
const b64u = (s: string) => btoa(s).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '')
const unb64u = (s: string) => atob(s.replace(/-/g, '+').replace(/_/g, '/'))
const sign = async (p: string) => b64u(String.fromCharCode(...new Uint8Array(await crypto.subtle.sign('HMAC', hmacKey, new TextEncoder().encode(p)))))

const hashPw = async (pw: string, salt: string) => {
  const k = await crypto.subtle.importKey('raw', new TextEncoder().encode(pw), 'PBKDF2', false, ['deriveBits'])
  const bits = await crypto.subtle.deriveBits({ name: 'PBKDF2', hash: 'SHA-256', salt: new TextEncoder().encode(salt), iterations: 100000 }, k, 256)
  return [...new Uint8Array(bits)].map(b => b.toString(16).padStart(2, '0')).join('')
}
const strong = (p: string) => p.length >= 8 && /[a-z]/.test(p) && /[A-Z]/.test(p) && /\d/.test(p) && /[^A-Za-z0-9]/.test(p)
const EMAIL = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
const mint = async (email: string, k = 'login') => {
  const p = b64u(encodeURIComponent(JSON.stringify({ e: email, k, x: Date.now() + 3 * 60 * 60 * 1000 })))
  return p + '.' + await sign(p)
}
const check = async (t: string) => {
  const [p, sig] = t.split('.')
  if (!p || !sig || await sign(p) !== sig) return null
  try { const d = JSON.parse(decodeURIComponent(unb64u(p))); return d.x > Date.now() ? { email: String(d.e), kind: String(d.k) } : null } catch { return null }
}

const limit = (ex: any, n: number) =>
  ex.mode === 'total'
    ? ex.total_min * 60
    : ex.mode === 'perq'
      ? ex.per_sec * n
      : Math.min(ex.total_min * 60, ex.per_sec * n)

const LANG: any = {
  python: 71,
  javascript: 63,
  java: 62,
  c: 50,
  cpp: 54,
  sql: 82
}

// ==========================================
// OTP GENERATOR
// ==========================================

function generateOTP() {
  const random = new Uint32Array(1)
  const range = 900000

  const max = Math.floor(0x100000000 / range) * range

  let value: number

  do {
    crypto.getRandomValues(random)
    value = random[0]
  } while (value >= max)

  return String(100000 + (value % range))
}

// ==========================================
// JUDGE0 CODE EVALUATION
// ==========================================

async function judge(lang: string, code: string, stdin: string, expected?: string) {
  const url = Deno.env.get('JUDGE0_URL') || 'https://ce.judge0.com'
  const headers: any = { 'Content-Type': 'application/json' }
  const tok = Deno.env.get('JUDGE0_TOKEN')
  if (tok) headers['X-Auth-Token'] = tok
  const body: any = { source_code: code, language_id: LANG[lang], stdin }
  if (expected !== undefined) body.expected_output = expected
  const r = await fetch(url + '/submissions?base64_encoded=false&wait=true', { method: 'POST', headers, body: JSON.stringify(body) })
  if (!r.ok) throw new Error('Judge0 ' + r.status)
  return await r.json()
}

// Returns { ok, total } or null when the code runner cannot be used
async function gradeCode(q: any, a: any) {
  const tests = q.meta?.tests
  if (!tests?.length || !LANG[q.meta.lang]) return null
  const res = await Promise.all(tests.map(async (t: any) => {
    try { const j = await judge(q.meta.lang, String(a), t.in, t.out); return j.status?.id === 3 } catch (e) { console.error('Judge0 error:', e); return null }
  }))
  if (res.includes(null)) return null
  return { ok: res.filter(Boolean).length, total: tests.length }
}

// ==========================================
// OBJECTIVE QUESTION GRADING
// ==========================================

function grade(q: any, a: any) {
  if (
    a == null ||
    a === '' ||
    (Array.isArray(a) && !a.length)
  ) {
    return 0
  }

  if (q.type === 'mcq') {
    return a === q.correct[0] ? 1 : 0
  }

  if (q.type === 'multi') {
    return [...a].sort().join() ===
      [...q.correct].sort().join() ? 1 : 0
  }

  if (q.type === 'tf') {
    return a === q.correct ? 1 : 0
  }

  if (q.type === 'short') {
    return String(q.correct)
      .split(',')
      .some(
        (x: string) =>
          x.trim().toLowerCase() ===
          String(a).trim().toLowerCase()
      ) ? 1 : 0
  }

  return null
}

// ==========================================
// MAIN EDGE FUNCTION
// ==========================================

Deno.serve(async (req) => {

  // CORS preflight
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: cors })
  }

  if (req.method !== 'POST') {
    return J({ error: 'Method not allowed' }, 405)
  }

  try {

    const b = await req.json()

    const email = String(b.email || '')
      .toLowerCase()
      .trim()

    // ======================================
    // SEND OTP
    // ======================================

    if (b.action === 'send_otp') {

      if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        return J({ error: 'Invalid email address' }, 400)
      }

      const smtpHost = Deno.env.get('SMTP_HOST')
      const smtpUser = Deno.env.get('SMTP_USER')
      const smtpPass = (Deno.env.get('SMTP_PASS') || '').replace(/\s+/g, '')

      if (!smtpHost || !smtpUser || !smtpPass) {
        console.error('SMTP_HOST, SMTP_USER or SMTP_PASS is missing')

        return J({
          error: 'Email service is not configured. Set SMTP_HOST, SMTP_USER and SMTP_PASS secrets and redeploy the api function.'
        }, 500)
      }

      const code = generateOTP()

      const expiresAt = new Date(
        Date.now() + 5 * 60 * 1000
      ).toISOString()

      // Save OTP in database
      const { data: savedOtp, error: dbError } = await sb
        .from('otps')
        .upsert(
          {
            email,
            code_hash: await sha(code + email),
            expires_at: expiresAt,
            tries: 0
          },
          { onConflict: 'email' }
        )
        .select('email, expires_at')
        .single()

      if (dbError || !savedOtp) {
        console.error('OTP database save failed:', dbError)

        return J({
          error: 'Could not save OTP. Please try again.'
        }, 500)
      }

      // Send OTP with Nodemailer over SMTP.
      // Supabase Edge Functions block outbound ports 25 and 587, so use port 465 (SSL).
      const smtpPort = Number(Deno.env.get('SMTP_PORT') || 465)

      const transporter = nodemailer.createTransport({
        host: smtpHost,
        port: smtpPort,
        secure: smtpPort === 465,
        auth: { user: smtpUser, pass: smtpPass },
        connectionTimeout: 10000,
        socketTimeout: 15000
      })

      try {
        const info = await transporter.sendMail({
          from: Deno.env.get('MAIL_FROM') || smtpUser,
          to: email,
          subject: 'Your IGEEKS Test System code',
          text: `Your IGEEKS verification code is ${code}. It expires in 5 minutes. If you did not request it, ignore this email.`,
          html: `
            <div style="font-family: Arial, sans-serif;">
              <h2>IGEEKS Email Verification</h2>
              <p>Your one-time verification code is:</p>
              <h1 style="font-size: 32px; letter-spacing: 8px; color: #2563eb;">${code}</h1>
              <p>This code expires in 5 minutes.</p>
              <p>If you did not request this code, please ignore this email.</p>
            </div>
          `
        })

        console.log('OTP email sent:', info.messageId)

      } catch (error) {

        console.error('SMTP error:', error)

        // Remove the OTP if the email could not be delivered
        await sb
          .from('otps')
          .delete()
          .eq('email', email)

        const e = error as { code?: string; message?: string }
        return J({
          error: `Could not send the email (${e.code || 'SMTP'}: ${String(e.message || error).slice(0, 160)})`
        }, 500)
      }

      return J({
        ok: true,
        message: 'OTP sent successfully.',
        expires_in: 300
      })
    }

    // ======================================
    // VERIFY OTP
    // ======================================

    if (b.action === 'verify_otp') {

      if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        return J({ error: 'Invalid email address' }, 400)
      }

      if (!/^\d{6}$/.test(String(b.code || '').trim())) {
        return J({ error: 'Enter a valid 6-digit OTP.' }, 400)
      }

      // Get OTP record
      const { data: otp, error: dbError } = await sb
        .from('otps')
        .select('*')
        .eq('email', email)
        .maybeSingle()

      if (dbError) {
        console.error('OTP lookup error:', dbError)

        return J({
          error: 'Unable to verify OTP. Please try again.'
        }, 500)
      }

      if (!otp) {
        return J({
          error: 'OTP not found. Please request a new code.'
        }, 400)
      }

      // Check expiry
      const expiryTime = new Date(otp.expires_at).getTime()

      if (
        !Number.isFinite(expiryTime) ||
        expiryTime <= Date.now()
      ) {
        return J({
          error: 'Code expired. Request a new one.'
        }, 400)
      }

      // Check attempts
      if (otp.tries >= 5) {
        return J({
          error: 'Too many incorrect attempts. Request a new code.'
        }, 400)
      }

      // Compare OTP hash
      const enteredHash = await sha(
        String(b.code).trim() + email
      )

      if (otp.code_hash !== enteredHash) {

        const { error: updateError } = await sb
          .from('otps')
          .update({
            tries: otp.tries + 1
          })
          .eq('email', email)

        if (updateError) {
          console.error('OTP attempt update error:', updateError)
        }

        return J({
          error: 'That code does not match.'
        }, 400)
      }

      const token = await mint(email, 'otp')

      const { error: deleteError } = await sb
        .from('otps')
        .delete()
        .eq('email', email)

      if (deleteError) {
        console.error('OTP deletion failed:', deleteError)
        return J({ error: 'Verification could not be completed. Please try again.' }, 500)
      }

      // Get student details
      const { data: student, error: studentError } = await sb
        .from('students')
        .select('name,usn,phone,college,branch,plan,domain')
        .eq('email', email)
        .maybeSingle()

      if (studentError) {
        console.error('Student lookup error:', studentError)
      }

      return J({
        ok: true,
        token,
        student: student || null,
        message: 'Email verified successfully.'
      })
    }

    // ======================================
    // AUTHENTICATED SESSION CHECK
    // ======================================

    if (b.action === 'check_email') {
      if (!EMAIL.test(email)) return J({ error: 'Invalid email address' }, 400)
      const { data } = await sb.from('students').select('password_hash').eq('email', email).maybeSingle()
      return J({ registered: !!data?.password_hash })
    }

    if (b.action === 'login') {
      const { data: st } = await sb.from('students')
        .select('name,usn,phone,college,branch,plan,domain,password_hash,password_salt,login_tries,locked_until')
        .eq('email', email).maybeSingle()
      if (!st?.password_hash) return J({ error: 'No password set for this email. Use Forgot password.' }, 400)
      if (st.locked_until && new Date(st.locked_until).getTime() > Date.now()) {
        return J({ error: 'Too many wrong attempts. Wait 10 minutes or reset your password.' }, 429)
      }
      if (await hashPw(String(b.password || ''), st.password_salt) !== st.password_hash) {
        const tries = (st.login_tries || 0) + 1
        await sb.from('students').update({
          login_tries: tries >= 5 ? 0 : tries,
          locked_until: tries >= 5 ? new Date(Date.now() + 10 * 60e3).toISOString() : null
        }).eq('email', email)
        return J({ error: 'Wrong email or password.' }, 400)
      }
      await sb.from('students').update({ login_tries: 0, locked_until: null }).eq('email', email)
      const { password_hash, password_salt, login_tries, locked_until, ...student } = st
      return J({ ok: true, token: await mint(email, 'login'), student })
    }

    const sess = await check(String(b.token || ''))

    if (!sess) {
      console.error('Invalid or expired token. Action:', b.action)
      return J({ error: 'Session expired. Verify your email again.' }, 401)
    }

    const session = { email: sess.email }

    if (b.action === 'set_password') {
      if (sess.kind !== 'otp') return J({ error: 'Verify the OTP first.' }, 403)
      const pw = String(b.password || '')
      if (!strong(pw)) return J({ error: 'Password needs 8+ characters with upper, lower, number and a symbol.' }, 400)
      const salt = crypto.randomUUID()
      const { error } = await sb.from('students').upsert({
        email: session.email, password_salt: salt, password_hash: await hashPw(pw, salt), login_tries: 0, locked_until: null
      })
      if (error) { console.error('Set password error:', error); return J({ error: 'Could not save password.' }, 500) }
      return J({ ok: true })
    }

    // ======================================
    // SAVE STUDENT
    // ======================================

    if (b.action === 'save_student') {

      const {
        name,
        usn,
        phone,
        college,
        branch,
        plan,
        domain
      } = b.student || {}

      const { error } = await sb
        .from('students')
        .upsert({
          email: session.email,
          name,
          usn,
          phone,
          college,
          branch,
          plan,
          domain,
          updated_at: now()
        })

      if (error) {
        console.error('Save student error:', error)

        return J({
          error: error.message
        }, 400)
      }

      return J({ ok: true })
    }

    // ======================================
    // LIST LIVE EXAMS
    // ======================================

    if (b.action === 'list_exams') {

      const { data, error } = await sb
        .from('exams')
        .select(
          'id,title,domain,mode,total_min,per_sec,pass_pct,max_switches'
        )
        .eq('live', true)

      if (error) {
        console.error('List exams error:', error)

        return J({
          error: 'Could not load exams.'
        }, 500)
      }

      return J({ exams: data })
    }

    // ======================================
    // LOAD EXAM AND QUESTIONS
    // ======================================

    const { data: ex, error: examError } = await sb
      .from('exams')
      .select('*')
      .eq('id', b.exam_id)
      .single()

    if (examError || !ex) {
      return J({
        error: 'Exam not found.'
      }, 404)
    }

    const { data: qs, error: questionError } = await sb
      .from('questions')
      .select('*')
      .in('id', ex.question_ids)

    if (questionError || !qs) {
      return J({
        error: 'Could not load exam questions.'
      }, 500)
    }

    const ordered = ex.question_ids
      .map((id: string) => qs.find((q: any) => q.id === id))
      .filter(Boolean)

    // ======================================
    // CHECK PREVIOUS ATTEMPTS
    // ======================================

    const { count, error: countError } = await sb
      .from('attempts')
      .select('*', { count: 'exact', head: true })
      .eq('student_email', session.email)
      .eq('exam_id', ex.id)

    if (countError) {
      console.error('Attempt count error:', countError)

      return J({
        error: 'Could not check previous attempts.'
      }, 500)
    }

    // ======================================
    // START EXAM
    // ======================================

    if (b.action === 'run_code') {
      if (count) return J({ error: 'This exam is already submitted.' }, 400)
      const q = ordered.find((x: any) => x.id === b.question_id)
      if (!q || q.type !== 'code') return J({ error: 'Not a coding question.' }, 400)
      const { data: st } = await sb.from('exam_starts').select('started_at').eq('email', session.email).eq('exam_id', ex.id).maybeSingle()
      if (!st || (Date.now() - new Date(st.started_at).getTime()) / 1000 > limit(ex, ordered.length) + 30) return J({ error: 'The exam time is over.' }, 400)
      const code = String(b.code ?? '')
      if (!code.trim()) return J({ error: 'Write some code first.' }, 400)
      if (code.length > 20000) return J({ error: 'Code is too long.' }, 400)
      try {
        if (b.custom) {
          const j = await judge(q.meta.lang, code, String(b.stdin ?? '').slice(0, 5000))
          return J({ custom: true, status: j.status?.description, stdout: j.stdout, stderr: j.stderr, compile_output: j.compile_output, time: j.time })
        }
        const all = q.meta?.tests || [], samples = all.slice(0, Math.ceil(all.length / 2))
        if (!samples.length) return J({ error: 'This question has no sample tests. Use Run with my input.' }, 400)
        const results = await Promise.all(samples.map(async (t: any) => {
          const j = await judge(q.meta.lang, code, t.in, t.out)
          return { in: t.in, expected: t.out, got: j.stdout, ok: j.status?.id === 3, status: j.status?.description, err: j.stderr || j.compile_output }
        }))
        return J({ results, passed: results.filter((r: any) => r.ok).length, total: results.length })
      } catch (e) {
        console.error('Run error:', e)
        return J({ error: 'The code runner is busy or unreachable. Try again in a moment.' }, 502)
      }
    }

    if (b.action === 'start_exam') {

      if (count) {
        return J({
          error: 'You have already taken this exam.'
        }, 400)
      }

      await sb
        .from('exam_starts')
        .upsert(
          {
            email: session.email,
            exam_id: ex.id
          },
          {
            onConflict: 'email,exam_id',
            ignoreDuplicates: true
          }
        )

      const { data: st } = await sb
        .from('exam_starts')
        .select('started_at')
        .eq('email', session.email)
        .eq('exam_id', ex.id)
        .single()

      if (!st) {
        return J({
          error: 'Could not start exam.'
        }, 500)
      }

      const remaining = Math.max(
        0,
        Math.round(
          limit(ex, ordered.length) -
          (Date.now() - new Date(st.started_at).getTime()) / 1000
        )
      )

      if (remaining <= 0 && ex.mode !== 'perq') {
        return J({
          error: 'Your time for this exam has ended.'
        }, 400)
      }

      return J({
        exam: ex,
        remaining,
        questions: ordered.map((q: any) => ({
          id: q.id,
          type: q.type,
          text: q.text,
          options: q.options,
          marks: q.marks,
          lang: q.meta?.lang,
          starter: q.meta?.starter,
          samples: (q.meta?.tests || []).slice(0, Math.ceil((q.meta?.tests?.length || 0) / 2))
        }))
      })
    }

    // ======================================
    // SUBMIT EXAM
    // ======================================

    if (b.action === 'submit_exam') {

      if (count) {
        return J({
          error: 'Already submitted.'
        }, 400)
      }

      const { data: st } = await sb
        .from('exam_starts')
        .select('started_at')
        .eq('email', session.email)
        .eq('exam_id', ex.id)
        .maybeSingle()

      const late =
        !st ||
        (Date.now() - new Date(st.started_at).getTime()) / 1000 >
        limit(ex, ordered.length) + 30

      const ans = late ? {} : (b.answers || {})

      let score = 0
      let max = 0
      let pending = 0

      const det: any[] = []

      for (const q of ordered) {

        let g = grade(q, ans[q.id])
        let note = ''

        if (q.type === 'code' && g === null) {
          const r = await gradeCode(q, ans[q.id])
          g = r ? r.ok / r.total : null
          if (r) note = `${r.ok} of ${r.total} tests passed`
        }

        if (g === null) {

          pending++

          det.push({
            text: q.text,
            v: 'Pending review'
          })

        } else {

          max += q.marks
          score += q.type === 'code' ? Math.floor(g * q.marks + 1e-9) : g * q.marks

          det.push({
            note,
            text: q.text,
            v: g === 1
              ? 'Correct'
              : g > 0
                ? 'Partly correct'
                : 'Wrong'
          })
        }
      }

      const pct = max
        ? Math.round(score / max * 100)
        : 0

      const passed = pct >= ex.pass_pct

      const { error: attemptError } = await sb
        .from('attempts')
        .insert({
          student_email: session.email,
          exam_id: ex.id,
          exam_title: ex.title,
          score,
          max,
          pct,
          passed,
          pending,
          answers: b.answers,
          violations: b.violations || 0,
          late
        })

      if (attemptError) {
        console.error('Attempt submission error:', attemptError)

        return J({
          error: 'Could not submit exam.'
        }, 500)
      }

      const { count: hi } = await sb
        .from('attempts')
        .select('*', { count: 'exact', head: true })
        .eq('exam_id', ex.id)
        .gt('pct', pct)

      const { count: all } = await sb
        .from('attempts')
        .select('*', { count: 'exact', head: true })
        .eq('exam_id', ex.id)

      return J({
        score,
        max,
        pct,
        passed,
        pending,
        need: ex.pass_pct,
        rank: (hi || 0) + 1,
        of: all,
        det,
        late
      })
    }

    // ======================================
    // UNKNOWN ACTION
    // ======================================

    return J({
      error: 'Unknown action'
    }, 400)

  } catch (error) {

    console.error('Edge Function Error:', error)

    return J({
      error: 'Internal server error: ' + String((error as Error)?.message || error).slice(0, 160)
    }, 500)
  }
})
