# Browser tests (real Firefox, fake webcam)
These drive the built student app against `stub.py`, a stand-in for the `api` and `exam` Edge Functions. They prove the **client**: camera gate, live preview, snapshot upload, coding banner, language picker, mandatory-coding submit block. They do **not** test the real Edge Function (needs Deno) or Supabase.

Setup (any machine): Firefox + geckodriver, `pip install selenium`.
1. `VITE_SUPABASE_URL=http://localhost:8790 VITE_SUPABASE_ANON_KEY=anon npx vite build --outDir /tmp/e2e/dist --emptyOutDir`
2. `python3 drive.py` (starts the stub on port 8790, runs both an engineering and a non-engineering student, prints PASS/FAIL per check)
3. Camera module alone: bundle `camera_page.js` with esbuild, then `camera_module.py` (working camera, no device) and `camera_blocked.py` (permission blocked). Paths inside the scripts assume `/tmp/camtest` and `/tmp/ff`; adjust them.
Firefox flags used: `media.navigator.streams.fake=true` (fake camera), `media.navigator.permission.disabled=true` (auto-allow).
