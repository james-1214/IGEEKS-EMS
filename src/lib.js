import {createClient} from '@supabase/supabase-js'
export const sb=createClient(import.meta.env.VITE_SUPABASE_URL,import.meta.env.VITE_SUPABASE_ANON_KEY)
export async function call(action,body={}){const {data,error}=await sb.functions.invoke('api',{body:{action,...body}})
if(data?.error)throw new Error(data.error);if(error){let m=error.message;try{m=(await error.context.json()).error||m}catch{}throw new Error(m)}return data}
export const DOMAINS=['Data Science & Machine Learning','Full Stack Developer','Data Analytics','Cyber Security','AI & Generative AI Intern','AI Product Developer Intern','Business Analytics','Business Development','Electronic Circuit & PCB Design','Embedded Systems & IoT','VLSI Design','EV Power Electronics & Energy Systems']
export const TN={mcq:'Single choice',multi:'Multi select',tf:'True / False',short:'Short answer',code:'Coding'}
export * from './excel'
