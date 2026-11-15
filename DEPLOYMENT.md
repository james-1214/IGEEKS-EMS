# Deployment: Exam Library + Host Exam

Order matters. All SQL is additive and safe to re-run. Nothing existing is dropped.

1. **Back up** your Supabase database (Dashboard > Database > Backups).
2. SQL Editor, in this order:
   1. `supabase/migration_5.sql`  (library, hosting, snapshots, protection, eligibility, validation)
   2. `supabase/seed_questions.sql`  (all built-in questions, or the files in `supabase/seed/`)
   3. `supabase/library/01_exam_packages.sql`  (exam packages; ends by validating every package in the database)
   The last statement prints each package with `ready` or `blocked`. Only `ready` packages can be hosted.
3. Deploy the updated function: `supabase functions deploy exam --no-verify-jwt` (the `api` function is unchanged).
4. `npm install && npm run build` and publish `dist/` as before. No new environment variables. The service-role key stays in the Edge Functions only.
5. Sign in as admin > **Exam Library** > pick *HTML Beginner* or *Common Entrance Examination – Standard* > **Host Exam**.

## What changed
| Area | Change |
|---|---|
| Database | `migration_5.sql`: `library_exams`, `library_exam_questions`, `hosted_exams`, `hosted_exam_questions` (frozen snapshot), `hosted_exam_students`; new columns on `questions` (`is_builtin`, `topic`, `source`, `content_status`) and `exams` (`hosted_id`, `require_fullscreen`, `ai_proctoring`); domains React, SQL & Databases and four entrance sections |
| Security | Triggers make built-in questions and their test cases read-only for admins in the browser; snapshot rows are immutable; a hosted exam's question set cannot be re-pointed; RLS read-only on library and hosting tables; hosting only through admin-checked `security definer` functions; `is_eligible()` checked in the Edge Function and again in `start_attempt` |
| Edge function `exam` | Serves hosted exams from the snapshot, eligibility filtering, section scores, fullscreen/proctoring flags |
| Admin UI | Exam Library, Host Exam wizard (5 steps), Hosted Exams; built-in questions show a lock; hosted rows are hidden from the custom-exam editor. The old "Create Exam" is kept as **Custom Exam** |
| Student UI | Now uses the session-based `exam` function: autosave, resume, server timer, eligibility, Active / Upcoming / Completed groups, section scores |

## Lifecycle
`draft` > `scheduled` (published with a future start) or `published` (open, nobody started) > `active` (open and someone started) > `completed` (closing time passed); `cancelled` at any point. Scheduled/published/active/completed are derived from the clock and attempts, so no cron job is needed.

## Adding more built-in content
Add a Python file in `tools/question_bank/` using `M()`, `S()`, `T()`, `CODE()` after `dom('react')` etc., import it in `extra.py`, run `python3 tools/question_bank/build.py`, then re-run steps 2.2 and 2.3. The build stops on structural errors and rewrites `docs/CONTENT_QUALITY_REPORT.md`. A package turns `ready` automatically when it has 20 validated questions of its level.
Hosted exams are unaffected by later library changes.

## Run the database tests
`supabase/tests/run.sh` (needs local PostgreSQL; no Supabase account).
