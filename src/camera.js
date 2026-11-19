// Camera helpers for proctored exams. Plain browser APIs, no libraries.
// getUserMedia needs a secure page (https or localhost), a user gesture or an earlier grant, and a free camera.
export async function openCamera() {
  if (!window.isSecureContext) throw new Error('The camera only works on a secure page (https). Ask your exam administrator for the https address.')
  if (!navigator.mediaDevices?.getUserMedia) throw new Error('This browser cannot use the camera. Use a recent Chrome, Edge or Firefox.')
  const ask = v => navigator.mediaDevices.getUserMedia({ video: v, audio: false })
  try {
    return await ask({ width: { ideal: 320 }, height: { ideal: 240 }, facingMode: 'user' })
  } catch (e) {
    if (e?.name === 'OverconstrainedError' || e?.name === 'ConstraintNotSatisfiedError') {
      try { return await ask(true) } catch (e2) { e = e2 }
    }
    const n = e?.name || ''
    if (n === 'NotAllowedError' || n === 'PermissionDeniedError')
      throw new Error('Camera permission is blocked. Click the camera or lock icon at the left of the address bar, set Camera to Allow, reload the page if asked, then press Check camera again. (If you pressed Block earlier, the browser will not ask a second time.)')
    if (n === 'NotFoundError' || n === 'DevicesNotFoundError') throw new Error('No camera was found. Connect a webcam, or enable the camera in your device settings, then try again.')
    if (n === 'NotReadableError' || n === 'TrackStartError' || n === 'AbortError') throw new Error('Your camera is busy or unavailable. Close other apps or tabs that use it (Zoom, Teams, Meet, camera app) and try again.')
    if (n === 'SecurityError') throw new Error('The browser or your organisation blocks camera access for this page. Try another browser or contact your administrator.')
    throw new Error('Could not start the camera' + (e?.message ? ': ' + e.message : '.'))
  }
}
export const stopStream = s => { try { s && s.getTracks().forEach(t => t.stop()) } catch { /* already stopped */ } }
// One small JPEG frame (about 5-15 KB) plus a "camera covered / dark" flag from the average brightness.
export function takeFrame(video) {
  const w = 240, h = Math.round(240 * ((video.videoHeight || 3) / (video.videoWidth || 4)))
  const c = document.createElement('canvas'); c.width = w; c.height = h
  const x = c.getContext('2d'); x.drawImage(video, 0, 0, w, h)
  const d = x.getImageData(0, 0, w, h).data; let sum = 0, n = 0
  for (let i = 0; i < d.length; i += 64) { sum += 0.299 * d[i] + 0.587 * d[i + 1] + 0.114 * d[i + 2]; n++ }
  return { image: c.toDataURL('image/jpeg', 0.5), dark: sum / Math.max(1, n) < 22 }
}
// Chrome/Edge expose FaceDetector behind a flag only. Everywhere else this returns null ("unknown"), never false.
export async function faceFound(video) {
  try {
    if (!('FaceDetector' in window)) return null
    return (await new window.FaceDetector({ fastMode: true, maxDetectedFaces: 3 }).detect(video)).length > 0
  } catch { return null }
}
