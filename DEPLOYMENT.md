# Deployment: make all 52 Exam Library packages ready

Nothing here has been run against your live Supabase project. Everything below marked **YOU** needs your approval and your execution.

## 0. Before you start (YOU)
1. Take a backup: Supabase Dashboard > Database > Backups (or `pg_dump "$SUPABASE_DB_URL" > backup.sql`).
2. Prefer to rehearse on a copy (a Supabase branch or a restored backup) first.

## 1. Exact SQL execution order (YOU: SQL Editor, or `psql "$SUPABASE_DB_URL" -f <file>`)
Every file is idempotent and safe to re-run. Run each file to completion before the next.

| # | File | Why |
|---|---|---|
| 1 | `supabase/migration_5.sql` | **Re-run it even if you ran it before.** It replaces the validator that crashed with `22P02 malformed array literal`, adds section/metadata/marks checks, the `section_targets` column, and the admin-only `revalidate_library_exams()` used by the new Re-validate button. It reuses the entrance domains your database already has (looked up by name, so a different slug is fine) |
| 2 | `supabase/migration_5_exam_library.sql` | Only if you want the `exam_templates` tables. Safe in either order relative to #1: its `start_attempt` now keeps the eligibility check and window clamp. The current UI does **not** use these tables |
| 3 | `supabase/seed_questions.sql` | 1,211 built-in questions. Adds 564 new ones (source `igeeks-v3`) and 318 `igeeks-v2`; existing rows are matched by domain + text and only marked built-in/validated. Admin drafts are never touched |
| 4 | `supabase/library/01_exam_packages.sql` | Fills all 52 packages with the right questions, stores the intended section allocation, then runs the validator and prints each package |
| 5 | `supabase/verify/52_ready.sql` | Read-only report. Expected: `52 / 52 / 0` and every problem table empty |

## 2. Exact commands (YOU)
```bash
# Edge Function (unchanged since the previous delivery, redeploy if you have not yet)
supabase functions deploy exam --no-verify-jwt
# Frontend
npm install && npm run build      # publish dist/ as you do today
```

## 3. Rollback
`supabase/rollback_v3_content.sql` removes only the `igeeks-v3` questions from packages (hosted exams keep their frozen snapshots), deletes v3 questions with no history and marks the rest `rejected`, and sets packages back to `blocked`. Restore by re-running steps 3 and 4. v1, v2 and admin questions are never touched.

## 4. What was done locally (by me, on a scratch PostgreSQL 16)
Build, seeds, validator, admin screen, rollback and the hosting/student lifecycle were exercised there. See `docs/IMPLEMENTATION_REPORT.md` and `docs/TEST_REPORT.md`. **Not exercised:** the Edge Function (no Deno) and anything against your real database.

## 5. Differences between the repository and your live database
I could only see what you described, not the live schema.
- Your live bank has 66 `igeeks-v2` questions; the repository seeds 318. Seeds are idempotent, so running them fills the gap without duplicating.
- Your 43 `admin` drafts stay drafts: not built-in, not validated, never placed in a package. The validator blocks any package that includes one.
- `exam_templates` / `exam_targets` / `exams.template_id` (from `migration_5_exam_library.sql`) is a separate system. **The admin UI and hosting flow use `library_exams` + `hosted_exams`** (`src/admin/Library.jsx`). `src/admin/ExamLibrary.jsx` is not imported anywhere and was left untouched.
- Entrance domains: if they exist under other slugs (for example `quantitative-aptitude`), nothing is renamed. All seeds find domains by name.
