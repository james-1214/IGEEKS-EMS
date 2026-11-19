# Implementation report: all 52 packages

## Result (scratch PostgreSQL, fresh load, database validator)
Total packages **52**, ready **52**, blocked **0**. Missing question counts: none. Invalid questions in packages: none. Duplicates inside packages: none. Marks consistency: all match. Section allocation (Common Entrance 15/15/10/10): enforced and matches.
This was reproduced with the migrations in both orders (`migration_5_exam_library.sql` before and after `migration_5.sql`).
**Not** yet confirmed on your live database. Run `supabase/verify/52_ready.sql` there.

## Root cause of the earlier validator error
`p := p || 'not validated'` in `question_problems()` makes PostgreSQL parse the string as an array literal, which fails with `22P02`. It only fires when a question actually has a problem, so my earlier tests (all questions valid) never reached it. All 20 occurrences now use `array_append`. Reproduced first, then fixed, and an adversarial test confirms a draft question inside a package is now reported as a normal issue.

## Content
- Targets were not lowered: every package keeps its stored target (20 per technical level, 25 per section test, 50 per Common Entrance exam).
- **564 new questions** (source `igeeks-v3`) for CSS, JavaScript, React, Node.js, Express.js, Angular, C, C++, Java, Python, C#, .NET, MongoDB and SQL, plus 11 replacements. React and SQL had none.
- Source tags are truthful: `igeeks-v1` (original 329), `igeeks-v2` (HTML + Common Entrance from the previous pass), `igeeks-v3` (this pass). Admin drafts were not converted.
- 36 questions that repeated an existing stem were skipped and replaced (listed in the content report).
- Verification: 162 output-prediction questions are **executed** (Python, Node, PostgreSQL, gcc, g++, Java) and the build stops on a mismatch. The harness caught one wrong key of mine. Conceptual questions and everything in C#, .NET and MongoDB are author-reviewed only (no runtime here). Spot-check those before high-stakes use.

## Files changed or added
`supabase/migration_5.sql` (validator fix, checks, revalidate RPC, domain tolerance) · `supabase/migration_5_exam_library.sql` (start_attempt keeps eligibility) · `supabase/seed_questions.sql`, `supabase/seed/*` (regenerated, now includes React `14_react.sql` and SQL `15_sql.sql`) · `supabase/library/01_exam_packages.sql` · `supabase/verify/52_ready.sql` · `supabase/rollback_v3_content.sql` · `supabase/tests/hosting_tests.sql` · `src/admin/Library.jsx` (filters, live counts, issues, Re-validate) · `tools/question_bank/` (`x_*.py` content, `verify.py`, `build.py`, `extra.py`) · `docs/*` · `DEPLOYMENT.md`.

## Admin, hosting and student flow
Admin: filter chips with live counts (All, Ready to Host, Not Ready, Technical, Common Entrance, Beginner, Intermediate, Advanced), target vs actual counts, marks, up to four validation issues per blocked package, and Re-validate all. "Ready to host" is shown only when the database status is `ready`; the UI never computes it. The student screen uses the session-based `exam` function (same engine as the admin side); correct answers are not sent before submission (unchanged from the previous delivery).
Tested in SQL: only admins can host, a blocked package cannot be hosted, branch/selected targeting, frozen snapshot, eligibility enforced inside `start_attempt`, resume of the same session, second attempt allowed and third refused at `max_attempts = 2`, scoring settings locked once students start, cancel removes access.
**Not tested:** the Edge Function submit/evaluate/result path and the student UI in a browser (no Deno, no live project). Run one hosted exam end to end on a test project before real use.


# Addendum: camera, lockdown, coding policy, 60-question exam
## Root causes
- **Camera not activating:** there was no camera code at all (the earlier `ai_proctoring` flag only stored a setting). Built from scratch: `src/camera.js`, a camera check before start, live preview, snapshots every ~30 s, an examiner viewer, and specific error messages.
- **Safe browser not working properly:** the in-browser lockdown had real faults. `window.blur` counted as a violation, so the browser's own camera-permission prompt would have cost students a strike; fullscreen failure on iPhone/iPad was silent; there was no refresh guard; the rules text claimed developer tools were blocked. Fixed (grace window around the permission prompt, blur must persist 0.7 s without focus, `beforeunload` guard, explicit unsupported-fullscreen message, honest wording). Also added an optional Safe Exam Browser user-agent check.
- Two bugs of my own were found by the browser tests and fixed: the preview video was read before React attached the stream (camera check would always fail), and the client read the coding rule from the wrong object.

## New and changed
`supabase/migration_6.sql` (new) · `supabase/functions/exam/index.ts` (coding rule, scoring of skipped optional coding, `proctor_snap` / `proctor_event`, SEB check, coding info in start response) · `src/camera.js` (new) · `src/Student.jsx` · `src/admin/Library.jsx` (camera/SEB toggles, coding policy panel with live branch classification, Proctoring viewer) · `tools/question_bank/x_coding.py` (10 coding problems) · `build.py` (new package) · `supabase/tests/coding_camera_tests.sql` · `tests/e2e/*`.

## Verified (real runs)
- Database: 53 of 53 packages ready, incl. the new one (60 questions, 100 marks, 10 coding with 5 tests each, 3 hidden); policy and camera/SEB settings carried to the exam row; classifier correct on 12 branch names; rules lock once a student starts; only admins can read photos.
- Coding content: each of the 10 problems has a Python reference and an independent JavaScript solution that agree on all 50 test runs. They were **not** run through Judge0 in Python/Java/C/C++, so the starters and your Judge0 setup are untested for those languages.
- Browser (Firefox, fake webcam): camera works, blocked-permission and no-camera messages are correct, and 38 checks pass across an engineering and a non-engineering student (camera gate, live preview, JPEG snapshot upload, autosave, coding banner, language picker, mandatory-coding submit block vs optional submit).

## Not verified
- The updated Edge Function was type-checked only (no Deno). The browser tests used a stub that imitates it, so the real server-side rule, snapshot storage and SEB check are untested. The two TypeScript warnings reported by `tsc` also exist in your original upload.
- Chrome, Edge, Safari and mobile browsers were not tested (Firefox only). Headless Firefox cannot show the real permission prompt, so the prompt-focus grace window is by design, not by test.
- No face detection beyond the optional browser FaceDetector (rarely enabled); "dark picture" detection is the only automatic check.
