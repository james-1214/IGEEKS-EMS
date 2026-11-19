import {openCamera,takeFrame,stopStream,faceFound} from './camera.js'
window.run=async()=>{const out={};
 try{const st=await openCamera();out.opened=true;out.tracks=st.getVideoTracks().length;
  const v=document.createElement('video');v.muted=true;v.playsInline=true;v.srcObject=st;document.body.appendChild(v);await v.play();await new Promise(r=>setTimeout(r,1500));
  out.videoWidth=v.videoWidth;const f=takeFrame(v);out.dark=f.dark;out.bytes=f.image.length;out.jpeg=f.image.startsWith('data:image/jpeg;base64,');out.face=await faceFound(v);
  const tr=st.getVideoTracks()[0];out.live=tr.readyState;let ended=false;tr.onended=()=>ended=true;tr.stop();out.afterStop=tr.readyState;
 }catch(e){out.error=e.message}
 return out}
