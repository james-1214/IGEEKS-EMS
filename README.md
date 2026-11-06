# IGEEKS Test System (React + Supabase + Nodemailer SMTP)
1. Supabase: create a project. SQL Editor: run `supabase/schema.sql`.
2. Authentication > Users: add your admin (email + password). Then run `insert into admins values ('USER-UUID');`
3. Email (Nodemailer over SMTP): see the Email section below.
4. Deploy the function (Supabase CLI):
   `supabase secrets set SMTP_HOST=smtp.gmail.com SMTP_PORT=465 SMTP_USER=you@gmail.com SMTP_PASS=your-app-password MAIL_FROM="IGEEKS Test System <you@gmail.com>"`
   `supabase functions deploy api`
5. `cp .env.example .env` and fill in your project URL and anon key.
6. `npm install && npm run dev`
Students never read the database directly: OTP, saving details, starting and grading exams all go through the `api` function, which holds the correct answers.

## Server-side timer
The server records when each student starts (`exam_starts`) and sends the remaining time. Refreshing the page cannot reset the clock. A submission arriving more than 30 seconds after the limit is saved as late and scores 0.
If you already ran an older `schema.sql`, run `supabase/migration_2.sql` once.

## Coding questions
- Auto-grading: add test cases to a coding question (`input | expected output`, one per line, `\n` for new lines) and set these secrets: `supabase secrets set JUDGE0_URL=https://your-judge0-host JUDGE0_TOKEN=optional`. Marks follow the share of test cases passed, rounded down to whole marks (4 marks, 2 of 3 passed = 2). Students can Run sample tests (the first half of your test cases) or Run with their own input during the exam; the rest are hidden and only checked on submit. If JUDGE0_URL is not set, the public https://ce.judge0.com is used (rate limited; self-host Judge0 for real exams).
- No test cases or no Judge0: the answer appears in the admin **Code review** tab, where you type the marks. Scores, percent and pass/fail update automatically.

## Email (Nodemailer over SMTP)
OTP emails are sent with Nodemailer from the `api` function. Set these secrets, then redeploy (`supabase functions deploy api --no-verify-jwt`):
- `SMTP_HOST` (Gmail: smtp.gmail.com), `SMTP_PORT` (use **465**), `SMTP_USER`, `SMTP_PASS`, `MAIL_FROM` (optional, defaults to SMTP_USER).
- Supabase Edge Functions block outbound ports 25 and 587. Only port 465 (SSL) works.
- Gmail: turn on 2-step verification, create an App Password (Google Account > Security > App passwords) and use it as `SMTP_PASS`. Your normal Gmail password will not work. Gmail allows roughly 500 emails a day.
- Other providers (Brevo, Zoho, your college mail) work the same way if they offer SMTP over port 465.

## Passwords
First visit: email, OTP, then the student sets a strong password (8+ chars, upper, lower, number, symbol). Next visits: email and password. Forgot password sends a new OTP. Passwords are stored as salted PBKDF2 hashes, with a 10-minute lock after 5 wrong tries. If your database is older, run `supabase/migration_3.sql` once.

## Phase 2: exam engine (domains, attempts, sessions)
- Run `supabase/migration_4.sql` once (safe to re-run, drops nothing). Fresh installs: `schema.sql`, then `migration_4.sql`.
- Deploy the new function: `supabase functions deploy exam --no-verify-jwt` (the old `api` function keeps working for OTP, passwords and the current UI).
- New tables: `domains`, `coding_tests`, `exam_sessions`, `attempt_answers`, `coding_submissions`. New columns on `questions`, `exams`, `attempts`.
- `exam` actions: `list_exams`, `start_exam` (start or resume), `save_progress`, `submit_exam`, `run_code`, `my_dashboard`, `my_attempt`.
- Negative marking: `negative_marking` is a fraction of the question's marks taken off for a wrong answer (0.25 on a 4-mark question takes off 1). Unanswered questions take off nothing, and the total never goes below 0.
- Old attempts keep their data and count as attempt 1.

## Question bank (329 questions)
Run after `migration_4.sql`. Either paste `supabase/seed_questions.sql` into the SQL Editor, or run the 13 smaller files in `supabase/seed/` one by one (01_html.sql ... 13_angular.sql). Safe to run again: duplicates are skipped.
- 13 domains, 25 or more questions each (HTML 27, C++ 26, MongoDB 26, the rest 25), mixed difficulty.
- Types: single choice, multi select, true/false, output-based, debugging, conceptual, scenario.
- 15 coding problems (Java, Python, C++, C, C#, .NET, JavaScript, Node.js) with 5 tests each: 2 shown as samples, 3 hidden.
- HTML, CSS, MongoDB, Express.js and Angular cannot be run in Judge0, so they use output-based, debugging and scenario questions instead of coding.
- Source and generator: `tools/question_bank/` (edit the .py files, run `python3 gen.py`).

## Phase 3: admin screens
Admin sign-in now opens a sidebar with: Dashboard, Students, Domains, Question Bank, Create Exam, Manage Exams, Exam Analytics, Student Performance, Results & Excel (the earlier results page), Code Review and Settings.
- **Question Bank**: browse by domain, search, filter by difficulty and type, preview, add, edit, duplicate, delete. Coding questions take a statement, languages, starter code and sample/hidden test cases. Import and export Excel or CSV (download the Template first). Duplicates are skipped on import.
- **Create Exam**: choose the domain first, then pick questions (search, filters, select all, preview) or let the system pick by difficulty. Set attempts (1 to 5 or custom), dates, timer, negative marking, shuffling and when students may see solutions.
- **Exam Analytics**: exam totals, a student table with filters (exam, domain, student, attempt number, dates, pass/fail), Excel/CSV export, a full answer analysis for any attempt and a compare view for one student's attempts.
- Exams made here carry the new settings. The student side still uses the earlier exam flow until Phase 4 switches it to the new `exam` function, so attempt limits, auto-picked questions and resume only take effect after Phase 4.
