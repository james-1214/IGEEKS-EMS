# Build and Test Report

Environment: PostgreSQL 16 with a minimal Supabase shim (roles `anon`, `authenticated`, `service_role`, `auth.uid()`), Node/Vite. Deno and a live Supabase project were **not** available.

## Passed
| Check | Result |
|---|---|
| `schema.sql` > `migration_4.sql` > `migration_5.sql` apply cleanly; `migration_5.sql` re-run | OK, idempotent |
| Seeds loaded twice | 647 questions, no duplicates created |
| Database-side validation (`validate_all_library_exams`) | 10 packages `ready`, 42 `blocked`; identical to the Python verdicts in the content report |
| Admin edits/deletes a built-in question; edits its hidden tests; inserts a forged built-in | all rejected (`BUILTIN_PROTECTED`) |
| Admin creates / edits a custom question | allowed |
| Non-admin calls `host_exam` | rejected |
| Hosting a `blocked` package | rejected |
| Host HTML Beginner with custom title, 25 min, 0.25 negative marking, 2 attempts, marks x2 | exam row created and configured; snapshot 20 questions, 42 marks, answer keys present |
| Eligibility: branch targeting (case and spacing ignored), selected students, cancel | correct for every student |
| Tampering: update/delete snapshot rows, re-point `question_ids`, delete the exam row or hosted exam | blocked |
| Lifecycle draft > published > cancelled | correct, `live` follows status |
| `vite build` | succeeds |
| Server-side render of Exam Library, Hosted Exams, Host wizard | no runtime errors |

## Not verified (be aware)
- **Edge Function `exam` was edited but not executed.** No Deno, no live Supabase. It was syntax-checked with `tsc` only. Deploy to a test project and run one hosted exam end to end (start, answer, refresh to resume, submit, view result) before using it with students.
- The Student screen rewrite (autosave, resume, groups, section scores) was compiled, not exercised in a browser.
- Coding questions were not compiled or run in Judge0; expected outputs come from Python reference solutions.
- AI proctoring is a stored setting passed to the exam screen. No proctoring vendor is integrated.
- Row Level Security was tested through the admin trigger/RPC paths, not through PostgREST with real JWTs.
