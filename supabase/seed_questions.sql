-- IGEEKS built-in question bank. Run AFTER migration_5.sql. Safe to run more than once.
-- html: 93 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element is used for the largest heading?$q$,null,$q$["<h1>", "<head>", "<title>", "<h6>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$h1 is the top-level heading; h6 is the smallest.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute provides alternative text for an image?$q$,null,$q$["title", "alt", "caption", "src"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$alt is shown if the image fails to load and is read by screen readers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Media & Embedding$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which tag creates a hyperlink?$q$,null,$q$["<href>", "<url>", "<link>", "<a>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The anchor element a with an href attribute creates links.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links & Navigation$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does <!DOCTYPE html> tell the browser?$q$,null,$q$["A stylesheet to load", "The page uses HTML5 standards mode", "A comment follows", "The page title"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$It switches the browser into standards mode.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element holds page metadata such as the title and character set?$q$,null,$q$["<head>", "<body>", "<header>", "<footer>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$head contains metadata that is not displayed in the page body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which element is semantically correct for a block of main navigation links?$q$,null,$q$["<section>", "<menu-list>", "<nav>", "<div>"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$nav identifies major navigation blocks for browsers and assistive tech.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantic HTML$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which tag creates an unordered (bulleted) list?$q$,null,$q$["<li>", "<ol>", "<dl>", "<ul>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$ul is the unordered list; its items use li.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute makes a form field mandatory before submission?$q$,null,$q$["required", "validate", "needed", "mandatory"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The required attribute triggers built-in browser validation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which input type shows a date picker?$q$,null,$q$["picker", "date", "day", "calendar"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$type=date renders a native date picker.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which element groups related form controls and can have a caption via <legend>?$q$,null,$q$["<group>", "<formset>", "<label>", "<fieldset>"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$fieldset with legend groups related controls accessibly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute of <label> connects it to a form control?$q$,null,$q$["name", "for", "ref", "target"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The for value must match the id of the control.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the defer attribute on a script tag do?$q$,null,$q$["Downloads in parallel and runs after the document is parsed", "Blocks parsing until it runs", "Runs the script twice", "Disables the script"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$defer keeps parsing unblocked and runs scripts in order after parsing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Attributes & APIs$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which meta tag makes a page scale correctly on mobile devices?$q$,null,$q$["<meta name=\"mobile\" content=\"true\">", "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">", "<meta name=\"responsive\" content=\"on\">", "<meta charset=\"mobile\">"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The viewport meta tag controls layout width and zoom on mobile.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which element lets the browser choose between different image files by media conditions?$q$,null,$q$["<picture>", "<canvas>", "<figure>", "<imgset>"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$picture with source elements enables art direction and format switching.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Media & Embedding$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute opens a link in a new browsing context?$q$,null,$q$["new=\"true\"", "window=\"new\"", "open=\"tab\"", "target=\"_blank\""]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$target=_blank opens a new tab or window (add rel=noopener).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Attributes & APIs$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Select all valid HTML5 semantic elements.$q$,null,$q$["<article>", "<box>", "<aside>", "<footer>"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,3,$q$article, aside and footer are semantic; box does not exist.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are void elements (no closing tag)?$q$,null,$q$["<img>", "<div>", "<br>", "<input>"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,3,$q$br, img and input are void elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','beginner',$q$Which elements are block-level by default?$q$,null,$q$["<a>", "<p>", "<div>", "<span>"]$q$::jsonb,$q$[1, 2]$q$::jsonb,2,$q$div and p are block; span and a are inline.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links & Navigation$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$The <p> element is allowed to contain a <div> element.$q$,null,null,$q$"false"$q$::jsonb,1,$q$p accepts only phrasing content, so a div closes the paragraph.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$HTML tag names are case-insensitive.$q$,null,null,$q$"true"$q$::jsonb,1,$q$<DIV> and <div> are treated the same, though lowercase is conventional.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$The id attribute value should be unique within a page.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Duplicate ids break anchors, labels and scripts.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Attributes & APIs$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$The <br> element requires a closing </br> tag.$q$,null,null,$q$"false"$q$::jsonb,1,$q$br is a void element and has no closing tag.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$How does a browser show <p>Hello     World</p> in the page?$q$,null,$q$["Hello     World with five spaces", "Hello World with one space", "Nothing", "Hello on one line and World on the next"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Consecutive whitespace collapses into a single space.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$How many bullet items are displayed?
<ul><li>A</li><li>B<ul><li>C</li></ul></li></ul>$q$,null,$q$["3", "2", "4", "1"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Nested lists still show every li: A, B and C.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$What is wrong with this markup?
<ul><p>Item</p></ul>$q$,null,$q$["Nothing is wrong", "ul may only contain li elements as direct children", "p is deprecated", "ul needs a class"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Only li elements are valid direct children of ul.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$A form submits but the server receives no value for <input type="text" id="user">. What is missing?$q$,null,$q$["The action attribute", "The value attribute", "The name attribute", "The method attribute"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Form data is sent using each control's name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','intermediate',$q$You are building an accessible page layout with a header, navigation, main content and footer. Which structure is best?$q$,null,$q$["<header>, <nav>, <main>, <footer>", "A <table> layout", "A <frameset> layout", "Nested <div> elements with ids"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Semantic landmarks help screen readers and SEO.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v1','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element wraps all the content that is visible in the browser window?$q$,null,$q$["<html-content>", "<head>", "<main-window>", "<body>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$body holds everything the user sees; head holds metadata such as the title and linked files.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the correct way to write a comment in HTML?$q$,null,$q$["// this is a comment", "# this is a comment", "<!-- this is a comment -->", "/* this is a comment */"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$HTML comments start with <!-- and end with -->. The other forms belong to other languages.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element sets the text shown on the browser tab?$q$,null,$q$["<title>", "<h1>", "<header>", "<caption>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The title element inside head provides the tab text, bookmark name and search result title.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$HTML is a markup language, not a programming language.$q$,null,null,$q$"true"$q$::jsonb,1,$q$HTML describes the structure of content with tags. It has no loops, variables or logic of its own.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the usual file extension of a web page written in HTML?$q$,null,$q$[".web", ".html", ".xml", ".htm5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Both .html and .htm are accepted by servers, but .html is the standard modern choice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element is used for the least important heading?$q$,null,$q$["<h9>", "<small-head>", "<h0>", "<h6>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Headings run from h1 (most important) to h6 (least important).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element marks a paragraph of text?$q$,null,$q$["<text>", "<para>", "<p>", "<pg>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The p element creates a paragraph; browsers add space above and below it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element inserts a single line break inside a paragraph?$q$,null,$q$["<newline>", "<lb>", "<break>", "<br>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$br forces a line break and has no closing tag.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element tells the browser that text is strongly important?$q$,null,$q$["<bold-text>", "<mark-up>", "<big>", "<strong>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$strong carries meaning (importance) and is shown bold by default. b only changes the look.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element is used to emphasise text, usually shown in italics?$q$,null,$q$["<i-bold>", "<emph>", "<slant>", "<em>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$em adds stress emphasis, which screen readers can voice differently.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does a browser show for <p>Hello <b>big</b> world</p>?$q$,null,$q$["The sentence Hello big world with only the word big in bold", "The literal text including the b tags", "Only the word big, the rest is hidden", "The sentence with every word in bold"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$b is an inline element, so it styles just its own text inside the paragraph.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Text & Headings$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute of the a element holds the address the link goes to?$q$,null,$q$["link", "target-url", "src", "href"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$href (hypertext reference) contains the destination URL.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links, Images & Media$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute of the img element holds the path to the picture file?$q$,null,$q$["path", "file", "src", "href"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$src (source) tells the browser which image file to load.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links, Images & Media$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element embeds a video player on the page?$q$,null,$q$["<embed-video>", "<movie>", "<video>", "<media-play>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$video, with a src or nested source elements, plays video natively without plugins.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links, Images & Media$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element creates a numbered list?$q$,null,$q$["<num>", "<nl>", "<ul>", "<ol>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$ol is an ordered list. Each item inside it is an li element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists & Tables$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element defines one row in a table?$q$,null,$q$["<row>", "<td>", "<tr>", "<th>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$tr is a table row; td and th are the cells inside it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists & Tables$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element defines a heading cell in a table?$q$,null,$q$["<head-cell>", "<td>", "<th>", "<tt>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$th is a header cell. It is bold and centred by default and helps screen readers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Lists & Tables$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which input type hides the characters while the user types?$q$,null,$q$["secret", "mask", "hidden", "password"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$type='password' shows dots instead of the characters. type='hidden' shows nothing at all and is not for typing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute shows grey hint text inside an empty input?$q$,null,$q$["value-hint", "tooltip", "hint", "placeholder"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$placeholder text disappears when the user starts typing. It does not replace a label.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute gives an element a unique name that CSS and JavaScript can target?$q$,null,$q$["class-name", "unique", "id", "key"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$An id should appear only once per page, unlike class which can be reused.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the main difference between div and span?$q$,null,$q$["span is for links and div is for images", "There is no difference in default display", "div is a block-level container and span is an inline container", "div can hold text but span cannot"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$div starts on a new line and stretches across; span stays inside the line of text. Neither has any meaning of its own.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which element provides a visible caption for a figure element?$q$,null,$q$["<legend>", "<figcaption>", "<label>", "<caption>"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$figcaption is the caption of a figure. caption belongs to tables and legend to fieldset.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the purpose of the noscript element?$q$,null,$q$["It marks a script as optional", "Content shown only when scripting is disabled or unsupported", "It stops scripts from running on the page", "It hides a script from search engines"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Browsers with JavaScript turned off render the noscript content; others ignore it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$The b element and the strong element have exactly the same meaning.$q$,null,null,$q$"false"$q$::jsonb,1,$q$strong means strong importance. b only draws attention (for example a keyword) without adding importance.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which element groups the header rows of a table?$q$,null,$q$["<thead>", "<head-row>", "<tableheader>", "<th-group>"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$thead, tbody and tfoot split a table into logical sections, which helps styling and accessibility.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute restricts what a text input accepts using a regular expression?$q$,null,$q$["regex", "pattern", "match", "validate"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$pattern='[A-Z]{3}[0-9]{2}' makes the browser reject values that do not match when the form is submitted.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which input type shows a numeric field with spinner controls?$q$,null,$q$["number", "digit", "integer", "numeric"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$type='number' accepts numbers only, and min, max and step control the allowed values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the autofocus attribute do?$q$,null,$q$["Moves the keyboard focus to that element when the page loads", "Selects all the text inside the element", "Scrolls the page to the top", "Makes the element larger when it is selected"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Only one element per page should use it, otherwise the focus target is unpredictable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which markup connects a label to its input without using the for attribute?$q$,null,$q$["<label><input type='email'></label> placed after the field", "<input type='email' label='Email'>", "<label>Email <input type='email'></label>", "<label href='email'><input type='email'></label>"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Wrapping the control inside the label creates an implicit association. Clicking the label focuses the input.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A button is placed inside a form and has no type attribute. What happens when it is clicked?$q$,null,$q$["It submits the form", "It focuses the first field", "Nothing, because it needs onclick", "It resets the form"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The default type of a button is submit. Use type='button' for buttons that should not submit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are boolean attributes that need no value?$q$,null,$q$["value", "href", "disabled", "checked"]$q$::jsonb,$q$[2, 3]$q$::jsonb,3,$q$A boolean attribute is true when present. href and value carry text that must be given.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute of the video element shows the play, pause and volume controls?$q$,null,$q$["show-controls", "controls", "buttons", "player"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Without controls the video has no visible interface unless you build one with JavaScript.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links, Images & Media$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute on a link with target='_blank' stops the opened page from reaching window.opener?$q$,null,$q$["rel='bookmark'", "rel='external'", "rel='noopener'", "rel='nofollow'"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$noopener cuts the connection to the opener page, which protects against tab-nabbing. nofollow only tells search engines not to follow.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Links, Images & Media$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute makes a script download in parallel and run as soon as it is ready, in no guaranteed order?$q$,null,$q$["defer", "async", "parallel", "lazy"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$async scripts run as soon as they arrive. defer scripts wait for the document to finish parsing and keep their order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Document Structure$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does loading='lazy' on an img element do?$q$,null,$q$["Delays loading the image until it is close to the viewport", "Prevents the image from being cached", "Loads the image after all scripts have run", "Loads the image at lower quality"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Lazy loading saves bandwidth for images far below the fold. It should not be used on the main image at the top of the page.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A web font is preloaded with <link rel='preload' as='font' href='/f.woff2'>. Why is the font downloaded twice in some browsers?$q$,null,$q$["The link must be placed in the body", "Fonts cannot be preloaded", "The type attribute is missing", "The crossorigin attribute is missing"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Fonts are fetched in CORS mode, so a preload without crossorigin does not match the later request and is wasted.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the purpose of <img srcset='a.jpg 480w, b.jpg 960w' sizes='(max-width: 600px) 100vw, 600px'>?$q$,null,$q$["Resize the image with JavaScript", "Show a.jpg on phones and b.jpg on desktops only", "Display both images side by side", "Let the browser pick a file based on the layout width and screen density"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The w descriptors tell the browser the real width of each file. sizes tells it how wide the image will be drawn, so it can choose the smallest sufficient file.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A page jumps while images load, which causes layout shift. Which HTML change helps most?$q$,null,$q$["Move the images into the head", "Use the async attribute on the images", "Add width and height attributes to the images", "Add loading='lazy' to every image"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$With width and height the browser reserves space using the aspect ratio before the file arrives.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','scenario','advanced',$q$Which changes can help the main hero image appear faster?$q$,null,$q$["fetchpriority='high' on the image", "loading='lazy' on the image", "A preload link for the image", "defer on the image"]$q$::jsonb,$q$[0, 2]$q$::jsonb,4,$q$High priority and preloading start the download early. Lazy loading delays it, and defer is not an attribute of img.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is true about <link rel='stylesheet' href='print.css' media='print'> when the page is viewed on screen?$q$,null,$q$["It is ignored and never downloaded", "It does not block the first render of the screen", "It blocks rendering until it has loaded", "It is applied to the screen after one second"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A stylesheet whose media query does not match is not render-blocking, though it may still be downloaded at low priority.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How does a script with type='module' behave by default?$q$,null,$q$["It runs immediately and blocks parsing", "It is deferred and runs in strict mode", "It runs only after a user click", "It can only be inline"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Module scripts are deferred like defer, run in strict mode and have their own scope.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Performance$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does aria-live='polite' do on an element?$q$,null,$q$["It reads the changes immediately and interrupts speech", "It stops the element from being read", "Screen readers announce its changes when the user is idle", "It makes the element visible to screen readers only"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$polite waits for a pause. assertive interrupts the current speech and is reserved for urgent messages.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When is aria-labelledby preferred over aria-label?$q$,null,$q$["When the page has no id attributes", "When the control has no text anywhere on the page", "When the element is a paragraph", "When the visible text of another element already names the control"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$aria-labelledby points to existing visible text by id, so the spoken name always matches what users see.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does tabindex='-1' do?$q$,null,$q$["Disables the element", "Makes an element focusable by script or click but removes it from the Tab order", "Makes the element visible only to screen readers", "Moves the element to the start of the Tab order"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Negative tabindex is useful for moving focus to a heading or dialog programmatically. tabindex='0' adds an element to the natural order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A button contains only an SVG icon of a trash can and a screen reader announces it as just 'button'. What is the best fix?$q$,null,$q$["Add aria-label='Delete item' to the button", "Add title to the svg and nothing else", "Add alt='Delete item' to the button", "Replace the button with a div"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$aria-label gives the button an accessible name. alt is valid only on images and similar elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$An element looks like a link but only runs JavaScript to open a menu. What should it be?$q$,null,$q$["An a element with href='javascript:void(0)'", "A button element", "A div with role='link'", "An a element with href='#'"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Links navigate. Controls that perform actions are buttons, which are focusable and keyboard-operable by default.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the lang attribute on the html element help with?$q$,null,$q$["Choosing the server language", "Screen reader pronunciation, translation tools and correct hyphenation", "Loading the right JavaScript library", "Selecting a keyboard layout"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Assistive technology and browsers use the declared language, for example lang='en', to pick voices, fonts and spelling rules.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which attribute on a th element tells assistive technology whether it heads a column or a row?$q$,null,$q$["scope", "headers-for", "axis", "role-type"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$scope='col' or scope='row' links header cells with their data cells in simple tables.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the inert attribute do?$q$,null,$q$["Disables only the mouse on the element", "Makes an element invisible but still focusable", "Prevents the element from being printed", "Makes an element and its children non-interactive and hidden from assistive technology"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$inert is handy to block the page behind a custom modal. The content remains visible but cannot be focused or clicked.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Accessibility$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does showModal() do on a dialog element?$q$,null,$q$["Opens it as an ordinary non-blocking box", "Opens it in a new browser window", "Opens it in the top layer and makes the rest of the page inert", "Hides every other dialog permanently"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$A modal dialog sits above all other content, gets a ::backdrop and traps interaction until it is closed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the main feature of the template element?$q$,null,$q$["It loads an external HTML file", "Its content is parsed but not rendered, and stays inert until cloned by script", "It reuses a stylesheet", "It renders its content only on mobile screens"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Scripts inside a template do not run and images are not loaded until the content is cloned into the document.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the time element's datetime attribute provide?$q$,null,$q$["The time zone of the server", "The time the page was last cached", "A machine-readable date or time", "An automatic countdown"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$<time datetime='2026-11-14'>14 November</time> lets software understand the human-friendly text.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the address element meant for?$q$,null,$q$["The server IP address", "The URL of the current page", "Any postal address anywhere in the page", "Contact information for the nearest article or the page owner"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$address is for contact details of the author or owner, not for arbitrary addresses such as a shop in a listing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which element represents the result of a calculation or a user action inside a form?$q$,null,$q$["<answer>", "<calc>", "<output>", "<result>"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$output can use the for attribute to list the controls that contributed to the result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What DOM does the parser build from <p>One<div>Two</div>?$q$,null,$q$["Nothing, the markup is rejected", "A p containing One, followed by a separate div containing Two", "A div that contains a p", "A p that contains both One and a div"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A p cannot contain a div, so the parser closes the p when it meets the div start tag.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Semantics & Elements$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does <iframe sandbox src='...'> with an empty sandbox attribute do?$q$,null,$q$["Applies no restrictions", "Only blocks cookies", "Makes the frame read-only but allows scripts", "Applies every restriction, such as blocking scripts, forms and popups"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$An empty sandbox is the strictest setting. Tokens such as allow-scripts selectively relax it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the integrity attribute on a script or link tag do?$q$,null,$q$["The browser checks the downloaded file against a hash and refuses it if it differs", "It limits the file size", "It signs the page with a certificate", "It encrypts the file during download"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Subresource Integrity protects against a tampered CDN file. For cross-origin files it is used together with crossorigin.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$A type='hidden' input prevents users from changing its value before the form is sent.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Hidden fields are only hidden visually. Anyone can edit them with developer tools, so the server must never trust them.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which header-like element in HTML can declare a Content Security Policy?$q$,null,$q$["<meta http-equiv='Content-Security-Policy' content=\"default-src 'self'\">", "<security policy='self'>", "<script policy='self'>", "<link rel='csp' href='self'>"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The meta tag can carry a CSP, although an HTTP header is preferred because it also supports more directives.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which element tells search engines which URL is the preferred version of duplicate pages?$q$,null,$q$["<meta name='duplicate' content='ignore'>", "<link rel='original' href='https://example.com/page'>", "<link rel='canonical' href='https://example.com/page'>", "<base href='https://example.com/page'>"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$rel='canonical' consolidates duplicate or near-duplicate URLs into one preferred address.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does <meta name='robots' content='noindex'> request?$q$,null,$q$["That the page loads without cookies", "That the page cannot be opened by crawlers", "That search engines do not list the page in results", "That the page is deleted from the server"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$noindex asks search engines to keep the page out of results. It does not block access to the page.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the base element do?$q$,null,$q$["Sets the root folder of the server", "Defines the base font size", "Sets the base URL used to resolve relative URLs in the document", "Defines the first heading of the page"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$<base href='https://cdn.example.com/'> makes <img src='a.png'> load from that address. A page may have only one base element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Head & Metadata$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which form attribute is required to upload a file with a post request?$q$,null,$q$["method='file'", "enctype='multipart/form-data'", "enctype='text/plain'", "accept-charset='file'"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Without multipart encoding the browser sends only the file name, not its contents.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which attribute turns off the browser's built-in validation messages for a whole form?$q$,null,$q$["validate='off'", "autocomplete='off'", "formnovalidation", "novalidate"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$novalidate on the form stops required, pattern and type checks from blocking the submit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which autocomplete value helps password managers on a sign-up page?$q$,null,$q$["current-password", "new-password", "off-password", "password"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$new-password signals a field for creating a password, so managers can suggest a strong one. current-password is for sign-in.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute limits a file upload field to certain file types?$q$,null,$q$["filter", "types", "accept", "allow"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$<input type='file' accept='image/png, .pdf'> hints which files the picker should offer. The server must still check the real file type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Input$q$,'igeeks-v2','validated' from domains d where d.name=$q$HTML$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- css: 62 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property changes the text color?$q$,null,$q$["text-color", "color", "fg-color", "font-color"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$color sets the foreground (text) color.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property controls the space between an element's border and its content?$q$,null,$q$["spacing", "gap", "padding", "margin"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$padding is inside the border; margin is outside.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which selector targets the element with id="menu"?$q$,null,$q$["menu", "#menu", ".menu", "*menu"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$# selects by id and . selects by class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which symbol begins a class selector?$q$,null,$q$[".", "*", "&", "#"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A dot selects elements by class name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the default value of the position property?$q$,null,$q$["relative", "static", "absolute", "fixed"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Elements are static unless positioned otherwise.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which declaration creates a flex container?$q$,null,$q$["display: flex", "layout: flex", "position: flex", "flex: container"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$display:flex makes children flex items.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Flexbox$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a row flex container, which property aligns items along the main axis?$q$,null,$q$["flex-align", "align-items", "justify-content", "align-content"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$justify-content distributes space along the main axis.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Flexbox$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which unit is relative to the root element's font size?$q$,null,$q$["vh", "em", "px", "rem"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$rem is based on the html element's font size.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which box-sizing value includes padding and border inside the declared width?$q$,null,$q$["padding-box", "border-box", "margin-box", "content-box"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$border-box makes width include padding and border.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which selector has the highest specificity?$q$,null,$q$["#card", ".card", "p", "p.card"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$An id selector outranks classes and element selectors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$For a normal block element, what does z-index need in order to take effect?$q$,null,$q$["A position value other than static", "overflow: hidden", "display: block", "float: left"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$z-index applies to positioned elements (and flex/grid items).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which declaration defines three equal-width grid columns?$q$,null,$q$["grid-template-columns: repeat(3, 1fr)", "grid: 3col", "columns: 3 equal", "grid-columns: 3"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$repeat(3, 1fr) creates three equal fractions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grid$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which at-rule applies styles only on screens up to 600px wide?$q$,null,$q$["@responsive 600px", "@media (max-width: 600px)", "@screen (max: 600px)", "@query (width<600)"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Media queries use @media with width conditions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property makes text bold?$q$,null,$q$["bold", "text-bold", "font-style", "font-weight"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$font-weight: bold (or 700) makes text bold.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does :nth-child(2n+1) select?$q$,null,$q$["Even-numbered children", "Odd-numbered children", "The first two children", "Every third child"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$2n+1 matches 1st, 3rd, 5th and so on.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are valid CSS color formats?$q$,null,$q$["#ff0000", "rgb(255, 0, 0)", "color(red, 0)", "hsl(0, 100%, 50%)"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$Hex, rgb() and hsl() are valid; the last is not.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which properties can be smoothly animated by a CSS transition?$q$,null,$q$["transform", "background-color", "opacity", "font-family"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,3,$q$font-family changes in discrete steps and cannot be interpolated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Animations & Transitions$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$CSS comments are written as /* comment */.$q$,null,null,$q$"true"$q$::jsonb,1,$q$CSS uses /* ... */ for comments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$Vertical margins between adjacent block elements can collapse.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Adjoining vertical margins combine into the larger one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$display: none keeps the element's space reserved in the layout.$q$,null,null,$q$"false"$q$::jsonb,1,$q$display:none removes the element from layout; visibility:hidden keeps the space.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is the total rendered width?
div { width:200px; padding:20px; border:5px solid; box-sizing:content-box; }$q$,null,$q$["225px", "250px", "200px", "240px"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$200 + 20*2 padding + 5*2 border = 250px.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What color is the text?
p { color: red; } .note { color: blue; }
<p class="note">Hi</p>$q$,null,$q$["Blue", "Purple", "Red", "Black"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The class selector is more specific than the element selector.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$The rule .box { colour: red; } has no effect. Why?$q$,null,$q$["Class selectors need #", "colour is not a valid property name", "red is not a color", "The semicolon is wrong"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The property is spelled color in CSS.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$A child with position:absolute; top:0; left:0 sticks to the page corner instead of its parent. What fixes it?$q$,null,$q$["Add float: left to the child", "Use margin: auto", "Set display: block on the child", "Give the parent position: relative"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$An absolute element positions against the nearest positioned ancestor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You need three columns on desktop and one column on phones with the least code. Which approach is best?$q$,null,$q$["A table layout", "Fixed pixel widths", "CSS Grid with repeat(auto-fit, minmax(250px, 1fr))", "A separate mobile website"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$auto-fit with minmax reflows columns automatically.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grid$q$,'igeeks-v1','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which CSS property changes the colour of text?$q$,null,$q$["text-color", "foreground", "font-color", "color"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The color property sets the text (foreground) colour. background-color sets the fill behind it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which CSS property sets the colour behind an element's content?$q$,null,$q$["bgcolor", "fill", "color-background", "background-color"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$background-color paints the element's background. color is for text.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property sets the size of text?$q$,null,$q$["text-size", "size", "font-size", "font-height"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$font-size accepts units such as px, em and rem.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which declaration centres text horizontally inside its container?$q$,null,$q$["text-align: center", "horizontal-align: center", "align: center", "text-position: middle"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$text-align controls the horizontal alignment of inline content in a block.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which unit is relative to the font size of the root html element?$q$,null,$q$["rem", "em", "px", "pt"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$rem means root em, so it does not compound through nested elements like em does.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which symbol starts a class selector?$q$,null,$q$["@", "#", "*", "."]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A class selector is written .name. An id selector uses #name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which symbol starts an id selector?$q$,null,$q$["#", ".", "$", "&"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$#header selects the element with id='header'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How is a comment written in CSS?$q$,null,$q$["# comment", "<!-- comment -->", "/* comment */", "// comment"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$CSS only supports /* ... */ comments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property adds space between an element's content and its border?$q$,null,$q$["margin", "padding", "gap", "spacing"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Padding is inside the border. Margin is outside it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property adds space outside an element's border?$q$,null,$q$["border-spacing", "outline", "margin", "padding"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Margin separates the element from its neighbours.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property rounds the corners of a box?$q$,null,$q$["box-curve", "border-round", "border-radius", "corner-radius"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$border-radius: 8px rounds all four corners. 50% on a square makes a circle.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which value of display removes an element from the layout completely so it takes no space?$q$,null,$q$["hidden", "collapse", "invisible", "none"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$display: none removes the element from layout. visibility: hidden hides it but keeps its space.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A rule in an id selector and a rule in a class selector both set the colour of the same element. Which wins, assuming nothing else differs?$q$,null,$q$["The one written last", "The id selector", "The one written first", "The class selector"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$An id selector has higher specificity than a class selector, so it wins regardless of order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$An element has position: absolute. Relative to what is it positioned?$q$,null,$q$["The browser window always", "Its previous sibling", "The nearest ancestor that has a position other than static", "Its parent element always"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$If no ancestor is positioned, the initial containing block (the viewport area) is used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a flex container with the default direction, which property spaces items along the main axis?$q$,null,$q$["flex-wrap", "align-content", "align-items", "justify-content"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$justify-content works along the main axis (horizontal by default). align-items works across it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does box-sizing: border-box change?$q$,null,$q$["The border is removed", "The margin is included in the width", "The width and height include padding and border", "The box can no longer overflow"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$With border-box, width: 200px stays 200px even after padding and border are added.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which selector chooses every even-numbered child of its parent?$q$,null,$q$[":even", ":nth-child(2)", ":child(even)", ":nth-child(2n)"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$2n matches positions 2, 4, 6 and so on. :nth-child(2) matches only the second child.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which unit is a percentage of the viewport width?$q$,null,$q$["pc", "rem", "vh", "vw"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$1vw is 1% of the viewport width. vh is 1% of its height.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$On which elements does z-index have an effect by default?$q$,null,$q$["Only elements with a background", "Only absolutely positioned elements", "Positioned elements (and flex or grid items)", "Every element"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$z-index is ignored on non-positioned elements unless they are flex or grid items.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$Two sibling blocks are stacked. The first has margin-bottom: 20px and the second has margin-top: 30px. What is the vertical gap between them?$q$,null,$q$["20px", "50px", "10px", "30px"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Adjoining vertical margins collapse to the larger of the two, so the gap is 30px.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Box Model$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which declaration creates a new stacking context on an element that is otherwise not positioned?$q$,null,$q$["margin: 0 auto", "color: red", "opacity: 0.99", "display: inline"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$An opacity below 1 (as well as transform, filter and position: fixed) creates a stacking context, which can trap child z-index values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)) do?$q$,null,$q$["Creates as many columns of at least 200px as fit, and stretches them to fill the row", "Makes every item 200px wide with gaps", "Creates exactly 200 columns", "Creates one column of 200px"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$auto-fit packs as many tracks as fit and collapses empty ones. 1fr lets the columns share leftover space.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A flex item containing a long unbroken word refuses to shrink and overflows its container. What is the usual fix?$q$,null,$q$["align-items: stretch", "flex-grow: 0 on the container", "display: block on the item", "min-width: 0 on the flex item"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$A flex item has min-width: auto, which stops it shrinking below its content. Setting min-width: 0 lets it shrink.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A position: sticky element never sticks. What is the most likely cause?$q$,null,$q$["The element has no background", "An ancestor has overflow set to hidden, auto or scroll, or no top/bottom offset is set", "The element is display: block", "The page has no media query"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Sticky needs an offset such as top: 0 and a scrolling ancestor that is not clipped by an overflow rule on an intermediate ancestor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is flex: 1 shorthand for?$q$,null,$q$["flex: 1 0 auto", "flex: 0 0 auto", "flex: 0 1 1", "flex: 1 1 0%"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$flex: 1 means grow 1, shrink 1, basis 0%, so items share the free space equally.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which declaration keeps a box at a 16:9 shape as its width changes?$q$,null,$q$["scale-ratio: 1.78", "ratio: 16:9", "proportion: 16-9", "aspect-ratio: 16 / 9"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$aspect-ratio lets the browser compute the height from the width.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the specificity of a selector written inside :where()?$q$,null,$q$["Zero", "One element", "One class", "The same as the most specific argument"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$:where() always contributes zero specificity, which makes it ideal for easily overridden defaults.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the specificity of :is(h1, #title) span?$q$,null,$q$["(1,0,1): the most specific argument counts", "(0,0,1)", "(0,0,2)", "(0,1,1)"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$For :is() the specificity is that of its most specific argument, here the id, plus the span element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Normal (non-!important) declarations in two cascade layers conflict. Which layer wins?$q$,null,$q$["The layer declared first", "The one with the higher specificity selector", "The layer declared later", "The one with more rules"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Layer order beats specificity. Styles outside any layer beat all layered styles.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Selectors & Specificity$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is required on an element before a container query can use its size?$q$,null,$q$["contain-size: true", "position: container", "container-type (for example inline-size)", "display: container"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$A container query looks up to the nearest ancestor with container-type set.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does clamp(1rem, 2vw, 2rem) return?$q$,null,$q$["The average of the three values", "The preferred value 2vw, limited to between 1rem and 2rem", "Always 2vw", "The largest of the three values"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$clamp(min, preferred, max) keeps the middle value within the minimum and maximum.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is will-change meant for?$q$,null,$q$["Forcing a property to animate", "Preventing a property from changing", "Setting a default value", "Hinting to the browser which property is about to change so it can optimise"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Overusing will-change wastes memory, so apply it sparingly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$A parent has font-size: 20px. Its child has font-size: 1.5em and the grandchild also has font-size: 1.5em. What is the grandchild's computed font size?$q$,null,$q$["22.5px", "45px", "30px", "50px"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$em compounds: child = 20 × 1.5 = 30px, grandchild = 30 × 1.5 = 45px.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which of these properties is inherited by default?$q$,null,$q$["margin", "background-color", "border", "line-height"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Text-related properties such as color, font and line-height are inherited. Box properties such as margin and border are not.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A card grid should have columns that never get narrower than 250px and fill the available space. Which CSS does this without media queries?$q$,null,$q$["display: flex; width: 250px", "columns: 250", "grid-template-columns: 250px", "grid-template-columns: repeat(auto-fill, minmax(250px, 1fr))"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$auto-fill with minmax creates as many 250px-minimum columns as fit and shares the remainder.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Variables & Modern CSS$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which property sets the typeface used for text?$q$,null,$q$["text-font", "typeface", "font-family", "font-type"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$font-family takes a list such as 'Arial', sans-serif. The last entry is a generic fallback.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Typography & Color$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which value of position leaves an element in the normal document flow?$q$,null,$q$["relative-flow", "absolute", "fixed", "static"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$static is the default. Offsets such as top and left have no effect on it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Positioning & Layout$q$,'igeeks-v3','validated' from domains d where d.name=$q$CSS$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- javascript: 62 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a block-scoped variable that can be reassigned?$q$,null,$q$["let", "const", "var", "def"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$let is block scoped and reassignable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does typeof null return?$q$,null,$q$["\"null\"", "\"number\"", "\"undefined\"", "\"object\""]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$This is a long-standing quirk of JavaScript.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method adds an element to the end?$q$,null,$q$["pop", "shift", "unshift", "push"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$push appends; pop removes from the end.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the result of [1,2,3].map(x => x * 2)?$q$,null,$q$["[2, 4, 6]", "6", "undefined", "[1, 2, 3]"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$map returns a new array with each item transformed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which array method returns a new array of items that pass a test?$q$,null,$q$["reduce", "map", "filter", "forEach"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$filter keeps the elements for which the callback is truthy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does === check?$q$,null,$q$["Value only", "Value and type", "Type only", "Reference only"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Strict equality does no type coercion.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement about const is true?$q$,null,$q$["Object properties can never change", "The binding cannot be reassigned", "It only stores numbers", "It is hoisted with a value"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$const prevents reassignment, not mutation of objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a closure?$q$,null,$q$["A function with no name", "A class method", "An immediately invoked function", "A function together with access to its outer scope"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Closures keep outer variables alive for inner functions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does Promise.all do when one promise rejects?$q$,null,$q$["Waits for the others and resolves", "Rejects immediately with that reason", "Returns undefined", "Ignores the rejection"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Promise.all fails fast on the first rejection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$After the current synchronous code finishes, which queue is processed first?$q$,null,$q$["Network queue", "Macrotask queue (setTimeout)", "Microtask queue (promise callbacks)", "Render queue"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Microtasks run before the next macrotask.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which method converts a JSON string into an object?$q$,null,$q$["JSON.object", "JSON.decode", "JSON.stringify", "JSON.parse"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$JSON.parse reads JSON text; stringify writes it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does Array.prototype.reduce return?$q$,null,$q$["A new array always", "The first element", "A single accumulated value", "Nothing"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$reduce folds the array into one result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are falsy in JavaScript?$q$,null,$q$["\"\" (empty string)", "null", "[] (empty array)", "0"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$An empty array is an object and therefore truthy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which array methods do NOT modify the original array?$q$,null,$q$["concat", "splice", "slice", "sort"]$q$::jsonb,$q$[0, 2]$q$::jsonb,3,$q$splice and sort mutate in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$JavaScript and Java are the same language.$q$,null,null,$q$"false"$q$::jsonb,1,$q$They are different languages with different designs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$Arrow functions have their own this binding.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Arrow functions take this from the surrounding scope.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$let variables cannot be accessed before their declaration because of the temporal dead zone.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Accessing them early throws a ReferenceError.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is logged?
console.log(0.1 + 0.2 === 0.3)$q$,null,$q$["true", "false", "NaN", "undefined"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Floating point rounding makes the sum 0.30000000000000004.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is logged?
console.log([1,2,3].length + '1')$q$,null,$q$["31", "4", "\"1\"", "NaN"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$3 + '1' concatenates to the string 31.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is logged?
for (var i = 0; i < 3; i++) setTimeout(() => console.log(i), 0)$q$,null,$q$["0 1 2", "0 0 0", "undefined", "3 3 3"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$var is function scoped, so all callbacks see the final i = 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$const user = {name:'A'}; user = {name:'B'}; throws an error. Why?$q$,null,$q$["A semicolon is missing", "const bindings cannot be reassigned", "Objects are immutable", "name is reserved"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Reassigning a const binding throws a TypeError.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$const r = fetch(url); console.log(r.status) prints undefined. What is the fix?$q$,null,$q$["Call r()", "Use var instead of const", "await the promise (or use .then) before reading status", "Use eval"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$fetch returns a Promise, not the response itself.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A search box calls an API on every keystroke. Which technique reduces the calls the most naturally?$q$,null,$q$["Use eval", "Debounce the input handler", "Use synchronous XHR", "Increase font size"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Debouncing waits until typing pauses before calling.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of even numbers$q$,$q$Sum of even numbers$q$,null,null,3,$q$Filter even numbers with x % 2 === 0 and add them up.$q$,$q${"description": "Given n integers, print the sum of the even numbers.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print a single integer: the sum of all even numbers (0 if none).", "constraints": "1 <= n <= 1000, -10^6 <= each number <= 10^6", "examples": [{"input": "5\n1 2 3 4 5", "output": "6"}, {"input": "3\n1 3 5", "output": "0"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
1 2 3 4 5$q$,$q$6$q$,false,1),($q$3
1 3 5$q$,$q$0$q$,false,2),($q$4
2 4 6 8$q$,$q$20$q$,true,3),($q$6
10 -2 7 8 9 0$q$,$q$16$q$,true,4),($q$1
-4$q$,$q$-4$q$,true,5)) as v(i,o,h,p)
where d.name=$q$JavaScript$q$ and qq.text=$q$Sum of even numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Longest word$q$,$q$Longest word$q$,null,null,5,$q$Track the longest word seen so far and replace it only when a strictly longer one appears.$q$,$q${"description": "Print the longest word in a sentence. If several words have the same length, print the first one.", "input_format": "One line containing words separated by single spaces.", "output_format": "Print the longest word.", "constraints": "1 <= length of the line <= 1000", "examples": [{"input": "I love programming in JavaScript", "output": "programming"}, {"input": "a bb cc", "output": "bb"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$I love programming in JavaScript$q$,$q$programming$q$,false,1),($q$a bb cc$q$,$q$bb$q$,false,2),($q$hello world$q$,$q$hello$q$,true,3),($q$The quick brown fox jumps$q$,$q$quick$q$,true,4),($q$Node$q$,$q$Node$q$,true,5)) as v(i,o,h,p)
where d.name=$q$JavaScript$q$ and qq.text=$q$Longest word$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a variable that cannot be reassigned?$q$,null,$q$["const", "final", "let", "fixed"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A const binding cannot be reassigned, although an object it holds can still be modified.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(2 + '3')$q$,null,$q$["23", "'5'", "NaN", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The + operator concatenates when one operand is a string, so the number 2 becomes '2' and the result is '23'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log('5' - 2)$q$,null,$q$["52", "'52'", "3", "NaN"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The - operator only works on numbers, so the string '5' is converted to 5 and the result is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(typeof 42)$q$,null,$q$["number", "int", "string", "integer"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$JavaScript has a single number type, so typeof 42 is 'number'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator compares both value and type?$q$,null,$q$["===", "==", "=", "!="]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$=== is strict equality and does no type conversion. == converts types first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(10 % 3)$q$,null,$q$["1", "0", "3.33", "3"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$% is the remainder operator: 10 divided by 3 leaves 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(Boolean(''))$q$,null,$q$["false", "undefined", "true", "null"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$An empty string is falsy, so Boolean('') is false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(0.1 + 0.2 === 0.3)$q$,null,$q$["undefined", "true", "false", "NaN"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Binary floating point cannot store 0.1 and 0.2 exactly, so the sum is 0.30000000000000004, not 0.3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method turns a JSON string into a JavaScript value?$q$,null,$q$["JSON.stringify", "JSON.decode", "JSON.toObject", "JSON.parse"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$JSON.parse reads text into a value. JSON.stringify does the opposite.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method joins all elements into one string?$q$,null,$q$["concat", "merge", "join", "toText"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$[1,2,3].join('-') gives '1-2-3'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(Math.max(3, 7, 5))$q$,null,$q$["7", "3", "15", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Math.max returns the largest argument, 7.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log('abc'.toUpperCase())$q$,null,$q$["ABC", "undefined", "Error", "[ 'A', 'B', 'C' ]"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$toUpperCase returns a new string with every letter in capitals.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which event fires when a user clicks an element?$q$,null,$q$["press", "select", "click", "tap"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Listeners are attached with addEventListener('click', handler).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DOM & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(typeof null)$q$,null,$q$["number", "null", "undefined", "object"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$typeof null is 'object', a long-standing quirk of the language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(null == undefined, null === undefined)$q$,null,$q$["true false", "false true", "true true", "false false"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$With loose equality null and undefined are equal to each other. Strict equality also compares type, which differs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(1 < 2 < 3, 3 > 2 > 1)$q$,null,$q$["true false", "true true", "false true", "false false"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$1 < 2 is true, and true < 3 becomes 1 < 3, which is true. 3 > 2 is true, and true > 1 becomes 1 > 1, which is false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

function counter() { let n = 0; return () => ++n; }
const c = counter();
c(); c();
console.log(c());$q$,null,$q$["1", "0", "3", "undefined"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The returned function closes over n. It is incremented on each call, so the third call returns 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(a);
var a = 5;$q$,null,$q$["5", "ReferenceError", "null", "undefined"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A var declaration is hoisted and initialised with undefined. Only the assignment stays in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log([1, 2] + [3])$q$,null,$q$["[1,2,3]", "1,23", "1,2,3", "6"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Arrays are converted to strings before +, so '1,2' + '3' gives '1,23'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log([10, 9, 1].sort())$q$,null,$q$["[ 10, 9, 1 ]", "[ 1, 10, 9 ]", "[ 1, 9, 10 ]", "[ 9, 10, 1 ]"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$sort() compares elements as strings by default, so '1' < '10' < '9'. Pass a compare function for numeric order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What order are the values logged in?

const log = [];
log.push(1);
setTimeout(() => log.push(2), 0);
Promise.resolve().then(() => log.push(3));
log.push(4);
setTimeout(() => console.log(log.join(' ')), 10);$q$,null,$q$["1 3 4 2", "1 4 2 3", "1 4 3 2", "1 2 3 4"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Synchronous code runs first (1, 4). Then the promise microtask (3) runs before the timer callback (2).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(typeof (async () => 1)())$q$,null,$q$["object", "number", "promise", "function"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$An async function always returns a Promise, and typeof a Promise is 'object'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens to Promise.all([p1, p2, p3]) if p2 rejects?$q$,null,$q$["It ignores the rejection", "It resolves with only the successful values", "It rejects immediately with p2's reason", "It waits for all promises and resolves with an array"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Promise.all fails fast. Use Promise.allSettled to get the outcome of every promise.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const out = [];
for (var i = 0; i < 3; i++) setTimeout(() => out.push(i), 0);
setTimeout(() => console.log(out.join(' ')), 10);$q$,null,$q$["undefined", "3 3 3", "0 1 2", "0 0 0"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$var is function-scoped, so all callbacks share one i, which is 3 when they run. Using let would give 0 1 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const o = { n: 'obj', f() { return [1].map(() => this.n)[0]; } };
console.log(o.f());$q$,null,$q$["null", "obj", "undefined", "TypeError"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$An arrow function has no this of its own and uses the this of the enclosing f(), which is called on o. A regular callback function would lose that this.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const a = { x: { y: 1 } };
const b = { ...a };
b.x.y = 2;
console.log(a.x.y);$q$,null,$q$["undefined", "2", "1", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Spread makes a shallow copy. a.x and b.x are the same object, so the change shows through.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

function* g() { yield 1; yield 2; }
console.log([...g()].join());$q$,null,$q$["1", "[object Generator]", "2", "1,2"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Spreading a generator runs it to completion and collects the yielded values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(Symbol('a') === Symbol('a'))$q$,null,$q$["TypeError", "undefined", "false", "true"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Every Symbol() call creates a unique value, even with the same description.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(0 ?? 'x', 0 || 'x')$q$,null,$q$["0 0", "0 x", "x 0", "x x"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$?? only replaces null or undefined, so 0 is kept. || replaces every falsy value, so 0 becomes 'x'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const a = { b: null };
console.log(a?.b?.c ?? 'none')$q$,null,$q$["TypeError", "undefined", "none", "null"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Optional chaining stops at null and gives undefined. ?? then supplies the fallback 'none'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(typeof Object.create(null).toString)$q$,null,$q$["undefined", "object", "function", "string"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Object.create(null) makes an object with no prototype, so it does not inherit toString.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why can a WeakMap not use a string as a key?$q$,null,$q$["Strings are too long", "Strings are not hashable in JavaScript", "WeakMap only stores numbers", "Its keys must be objects, which can be garbage collected when nothing else refers to them"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$WeakMap holds its keys weakly. Primitive values have no identity that could be collected, so they are not allowed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a Proxy get trap let you do?$q$,null,$q$["Intercept reads of properties on the target object", "Freeze the object", "Stop the object being garbage collected", "Copy the object deeply"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The handler's get(target, prop, receiver) runs whenever a property is read through the proxy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(Array(3).fill().map((_, i) => i * 2))$q$,null,$q$["[ <3 empty items> ]", "[ 0, 1, 2 ]", "[ 0, 2, 4 ]", "[ 2, 4, 6 ]"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$fill() with no argument fills the empty slots with undefined, so map visits every index and doubles it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method removes the last element and returns it?$q$,null,$q$["remove", "pop", "shift", "splice only"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$pop() removes from the end. shift() removes from the start.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you write a single-line comment in JavaScript?$q$,null,$q$["-- comment", "# comment", "<!-- comment -->", "// comment"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$// starts a line comment and /* ... */ a block comment.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which function writes a message to the browser console?$q$,null,$q$["echo()", "window.write()", "console.log()", "print()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$console.log is the usual way to inspect values while developing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- react: 60 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does JSX stand for?$q$,null,$q$["JavaScript XML", "JavaScript Extension", "Java Syntax Extension", "JSON XML"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$JSX is a syntax extension that lets you write markup inside JavaScript. A build tool turns it into JavaScript calls.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Why must a React component name start with a capital letter?$q$,null,$q$["It is only a style convention with no effect", "Capital letters make it run faster", "Lowercase names are treated as built-in HTML elements", "Lowercase names are reserved for hooks"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$<Card /> refers to a component, while <card /> would be treated as an HTML tag.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute is used in JSX to set a CSS class?$q$,null,$q$["classList", "cssClass", "className", "class"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$class is a reserved word in JavaScript, so JSX uses className.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How does a parent component pass data to a child?$q$,null,$q$["Through return values", "Through the DOM", "Through global variables only", "Through props"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Props are attributes on the child element, for example <Greeting name='Asha' />.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How can a child component change the props it receives?$q$,null,$q$["With the useProps hook", "By assigning to props.name", "By calling setProps", "It cannot: props are read-only"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Props flow down and must not be modified. To change data the parent passes a function or updates its own state.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you embed a JavaScript expression inside JSX?$q$,null,$q$["Wrap it in curly braces { }", "Wrap it in ${ }", "Wrap it in double quotes", "Wrap it in <% %>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$<p>{user.name}</p> evaluates the expression and renders the result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How can a component return several sibling elements without adding an extra DOM node?$q$,null,$q$["Wrap them in a div", "It is not possible", "Return them in an array without keys", "Wrap them in a Fragment <>...</>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A Fragment groups elements without creating an element in the DOM.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Props$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which hook adds state to a function component?$q$,null,$q$["useContext", "useRef", "useState", "useEffect"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$useState returns the current value and a function to update it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does useState return?$q$,null,$q$["An array with the current value and a setter function", "Only the current value", "An object with get and set methods", "A promise"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$const [count, setCount] = useState(0) destructures that array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which hook runs code after render, such as fetching data or subscribing?$q$,null,$q$["useReducer", "useEffect", "useMemo", "useState"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$useEffect is for side effects that should happen after React updates the screen.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Where may hooks be called?$q$,null,$q$["Inside loops and conditions", "Inside regular event handlers", "Inside class component methods", "At the top level of a component or custom hook"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Hooks rely on being called in the same order every render, so they cannot be placed in conditions or loops.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you attach a click handler to a button in JSX?$q$,null,$q$["<button onClick={handleClick}>", "<button click={handleClick}>", "<button on-click={handleClick}>", "<button onclick='handleClick()'>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$React uses camelCase event props and expects a function, not a string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What makes an input a controlled component?$q$,null,$q$["It uses a ref to read its value", "It has no value attribute", "It is disabled", "Its value comes from state and changes go through onChange"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$In a controlled input React state is the single source of truth for what the field shows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Why does each item rendered from an array with map need a key?$q$,null,$q$["It makes the list sort itself", "It lets React tell which items changed, were added or removed", "It prevents the list from rendering twice", "It sets the item's id attribute in the DOM"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Keys give list items a stable identity during re-rendering.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the virtual DOM?$q$,null,$q$["A copy of the database", "A faster replacement for HTML", "A lightweight in-memory description of the UI that React compares to find what to update", "A second browser window"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$React renders to this description, compares it with the previous one and then updates only the real DOM parts that changed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What causes a React component to re-render?$q$,null,$q$["A change in its state or props (or a parent re-rendering)", "Every second automatically", "Calling console.log", "Only a page reload"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$State updates and new props trigger a render. A parent render also renders its children by default.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does {isLoggedIn && <Dashboard />} render when isLoggedIn is false?$q$,null,$q$["An empty Dashboard", "The text false", "An error", "Nothing"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$false is not rendered, so && is a common way to show something conditionally. (Beware of 0, which does render.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which call renders a React 18 app into the page?$q$,null,$q$["React.start(<App />)", "document.render(<App />)", "createRoot(container).render(<App />)", "ReactDOM.mount(<App />)"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$React 18 introduced createRoot from react-dom/client.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A list of names is stored in an array called names. Which expression renders them as list items?$q$,null,$q$["names.forEach(n => <li>{n}</li>)", "names.map(n => <li key={n}>{n}</li>)", "names.render('li')", "for (n of names) <li>{n}</li>"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$map returns a new array of elements, which JSX can render. forEach returns undefined.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement about state is true?$q$,null,$q$["Changing a normal variable always re-renders the component", "Updating state asks React to re-render the component", "State is shared by every component automatically", "State can only hold numbers"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A plain local variable does not trigger a render. Only a state setter does.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When does useEffect(() => {...}, []) run?$q$,null,$q$["Before the first render", "After every render", "Only when the component unmounts", "Once after the first render"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$An empty dependency array means the effect has no dependencies, so it runs after mount only. (In development Strict Mode runs it twice on purpose.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When does the cleanup function returned from an effect run?$q$,null,$q$["Immediately after the effect starts", "Never automatically", "Only when the page closes", "Before the effect runs again and when the component unmounts"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Cleanup removes subscriptions, timers or listeners from the previous effect run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does useRef give you?$q$,null,$q$["A way to read props", "A mutable value that persists across renders without causing a re-render when changed", "A state value that triggers renders", "A faster version of useState"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$ref.current can be changed freely. It is often used for DOM nodes, timers and previous values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is useMemo used for?$q$,null,$q$["Caching the result of an expensive calculation between renders", "Creating refs", "Storing state", "Fetching data"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$useMemo recalculates only when its dependencies change. It is a performance hint, not a guarantee.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is useCallback used for?$q$,null,$q$["Converting callbacks to promises", "Keeping the same function identity between renders unless dependencies change", "Delaying a function by a timeout", "Calling a function after render"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A stable function reference helps when it is passed to a memoised child or used as an effect dependency.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$A button handler calls setCount(count + 1) three times in a row, starting from count = 0. What is count after the next render?$q$,null,$q$["3", "1", "0", "Undefined"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Each call uses the same count value (0) from that render, so all three set it to 1. setCount(c => c + 1) three times would give 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does useEffect(() => {...}) with no dependency array do?$q$,null,$q$["Runs after every render", "Runs once", "Runs only on unmount", "Never runs"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Without an array React has no dependencies to compare, so the effect runs after each render.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When is useReducer a better fit than useState?$q$,null,$q$["When you want to avoid props", "When you do not need re-renders", "When the state is a single boolean", "When state has several related values or complex transition logic"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A reducer centralises update logic in one function and makes transitions easier to test.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which useState call avoids running an expensive calculation on every render?$q$,null,$q$["useState(computeInitial())", "useState(() => computeInitial())", "useState.lazy(computeInitial)", "useState(useMemo(computeInitial))"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Passing a function makes React call it only for the initial state. Passing computeInitial() calls it on every render.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is meant by lifting state up?$q$,null,$q$["Putting state in a global variable", "Moving state to the closest common parent so siblings can share it", "Storing state on the server", "Moving state into a ref"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The parent owns the state and passes values and setters down as props.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why should you not modify state directly, for example by calling push on a state array?$q$,null,$q$["It deletes the array", "React compares references and will not see a change in the same array", "It causes a syntax error", "JavaScript forbids it"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Create a new array, for example setItems([...items, x]), so React detects the update.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What problem does Context solve?$q$,null,$q$["Managing the browser history", "Making components faster", "Storing data on the server", "Passing data through many component levels without prop drilling"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Context makes a value available to any descendant that reads it with useContext.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the children prop?$q$,null,$q$["A list of DOM nodes", "The content placed between a component's opening and closing tags", "An array of child components defined in state", "The component's return value"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$<Card><p>Hi</p></Card> passes <p>Hi</p> as props.children, which Card can render anywhere.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$State & Data Flow$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does React.memo do?$q$,null,$q$["Caches API responses", "Skips re-rendering a component when its props are shallowly equal", "Stores a component's state", "Prevents a component from unmounting"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$React.memo(Component) compares props with the previous render and reuses the last result if nothing changed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why is the array index a poor key for a list whose items can be reordered?$q$,null,$q$["It causes a syntax error", "Keys must be strings", "Indexes are too long", "State and DOM can end up attached to the wrong items"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$With index keys, React matches by position, so reordering mismatches item identity. Use a stable unique id.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does React Strict Mode do in development?$q$,null,$q$["Blocks network requests", "Makes the app run faster", "Runs some functions twice to help reveal impure code and missing cleanup", "Minifies the code"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The extra render and effect run only happen in development builds.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you stop a browser from reloading the page when a form is submitted in React?$q$,null,$q$["Remove the form tag", "Return false from the component", "Set method='none'", "Call event.preventDefault() in the onSubmit handler"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The default behaviour of a submitted form is navigation. preventDefault cancels it so React can handle the data.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is an uncontrolled input?$q$,null,$q$["An input without a name", "An input that cannot be changed", "An input with value and onChange", "An input whose value is read from the DOM, usually through a ref"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Uncontrolled inputs keep their own state in the DOM. You read it when needed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is wrong with calling a hook inside an if statement?$q$,null,$q$["Hooks cannot use conditions inside them", "The order of hooks can change between renders, which breaks React's tracking", "Nothing, it is allowed", "It runs the hook twice"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$React identifies hooks by call order, so the same hooks must be called on every render.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A component renders <Form /> in one branch and <Panel /> at the same position in another. What happens to the Form state when the branch changes?$q$,null,$q$["It is preserved and given to Panel", "It moves to the parent", "It is destroyed because a different element type is rendered at that position", "It is saved in the URL"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Reconciliation unmounts a subtree when the element type at a position changes, which discards its state.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens when you change the key of a component?$q$,null,$q$["The component renders twice", "Nothing, keys are only for lists", "The key is copied to its children", "React treats it as a new instance and resets its state"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$A different key means a different identity, so the old instance is unmounted and a fresh one is created.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How does useLayoutEffect differ from useEffect?$q$,null,$q$["It runs on the server", "It never runs on the first render", "It runs only on unmount", "It runs synchronously after DOM updates but before the browser paints"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$useLayoutEffect is for measuring the DOM and updating before paint. It can block painting, so use it sparingly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$An effect reads a state value but its dependency array is [] , so it always logs the first value. What is this called?$q$,null,$q$["Hydration mismatch", "A memory leak", "A race condition", "A stale closure"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The effect function captured the value from the render in which it was created. Add the value to the dependencies, or use a functional update or a ref.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is useTransition for?$q$,null,$q$["Animating CSS transitions", "Delaying a render by a fixed time", "Switching between routes", "Marking a state update as non-urgent so the UI stays responsive"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Updates wrapped in startTransition can be interrupted by urgent updates such as typing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does useDeferredValue do?$q$,null,$q$["Debounces a function by 300 ms", "Gives a version of a value that may lag behind during urgent updates", "Stores a value in local storage", "Delays a network request"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The deferred value updates later at low priority, so a heavy list can lag while the input stays responsive.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is required to show a fallback while a React.lazy component is loading?$q$,null,$q$["Add a loading prop to the component", "Use useEffect", "Wrap it in <Suspense fallback={...}>", "Add a try/catch"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Suspense displays the fallback until the lazy component has loaded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which errors does an error boundary NOT catch?$q$,null,$q$["Errors in lifecycle methods", "Errors thrown while rendering", "Errors in constructors of children", "Errors thrown inside event handlers"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Error boundaries cover rendering, lifecycle methods and constructors of the tree below them. Handle event handler errors with try/catch.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does automatic batching in React 18 mean?$q$,null,$q$["Network requests are grouped", "All components render in one pass", "Several state updates in the same event, timeout or promise are grouped into one render", "Effects run in a batch on unmount"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Before React 18, updates outside React events were not batched. Now they are, when using createRoot.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does flushSync do?$q$,null,$q$["Waits for all effects to finish", "Forces React to apply the enclosed state updates to the DOM immediately", "Flushes the browser cache", "Synchronises state across tabs"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$It opts out of batching for that update. It can hurt performance, so use it only when you must read the DOM straight after.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A child wrapped in React.memo still re-renders every time, and the parent passes style={{ color: 'red' }}. Why?$q$,null,$q$["A new object is created on each render, so the prop is never shallowly equal", "memo does not work with style props", "The parent must also use memo", "Objects cannot be props"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Shallow comparison uses reference equality. Define the object outside the component or memoise it with useMemo.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the purpose of forwardRef together with useImperativeHandle?$q$,null,$q$["To pass state to children", "To expose a limited set of methods to a parent through a ref", "To share context", "To pre-render a component"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$useImperativeHandle customises the value that a parent receives in its ref, for example focus() or reset().$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is true about events from a component rendered through createPortal?$q$,null,$q$["They bubble through the React tree to the portal's React parent", "They are duplicated", "They only bubble through the DOM parent", "They do not bubble"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Portals change where DOM nodes are placed, but React events still follow the component tree.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does useId provide?$q$,null,$q$["The component's name", "A unique ID that is stable between server and client rendering", "A random number for each render", "A database primary key"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$useId is meant for accessibility attributes such as htmlFor and avoids hydration mismatches caused by random ids.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A context provider passes value={{ user, theme }}. Why can this cause extra re-renders?$q$,null,$q$["Providers cannot hold objects", "The consumer hooks run twice", "A new object each render makes every consumer re-render", "Context values must be strings"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Consumers re-render when the value changes by reference. Memoise the object with useMemo.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does useSyncExternalStore help with?$q$,null,$q$["Syncing two components' state", "Reading an external store safely so the UI never shows tearing during concurrent rendering", "Server-side data fetching", "Storing data in localStorage"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$It subscribes to a store outside React and guarantees consistent reads across concurrent renders.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What typically causes a hydration mismatch warning?$q$,null,$q$["The server-rendered HTML differs from what the client renders first", "A missing key", "The page loads too slowly", "Too many components"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$During hydration React expects the same markup. Using Date.now(), Math.random() or window checks in render are common causes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A search box fires a fetch on every keystroke inside useEffect and sometimes an older response overwrites a newer one. What is a correct fix?$q$,null,$q$["Move the fetch outside the component", "Use useRef instead of state", "Ignore or abort the previous request in the effect cleanup", "Add more dependencies"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Cleanup runs before the next effect, so you can set a cancelled flag or call AbortController.abort() to drop stale responses.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which hooks cannot be used in a React Server Component?$q$,null,$q$["Only useContext", "Hooks that start with use are all allowed", "Only custom hooks", "useState and useEffect"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Server Components render once on the server with no state, effects or browser APIs. Interactive parts belong in Client Components.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why can a stale value appear when an interval set in useEffect calls setCount(count + 1)?$q$,null,$q$["Effects cannot read state", "State cannot change inside timers", "setInterval is not supported in React", "The callback closes over the count from the render that created the interval"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Use setCount(c => c + 1), which does not depend on the captured value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Rendering & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the purpose of the dependency array passed to useEffect?$q$,null,$q$["React re-runs the effect only when one of the listed values has changed", "It lists the components the effect may update", "It names the hooks used inside the effect", "It limits how many times the effect can run in total"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Before each render React compares the dependencies with the previous ones using Object.is and skips the effect if all are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Hooks$q$,'igeeks-v3','validated' from domains d where d.name=$q$React$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- nodejs: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is Node.js?$q$,null,$q$["A front-end framework", "A database", "A CSS compiler", "A JavaScript runtime built on the V8 engine"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Node runs JavaScript outside the browser.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command installs a package from npm?$q$,null,$q$["node get <package>", "install npm <package>", "npm fetch <package>", "npm install <package>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$npm install downloads and adds the package.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file lists a project's dependencies and scripts?$q$,null,$q$["package.json", "npm.lock only", "modules.txt", "node.config"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$package.json is the project manifest.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which module reads and writes files?$q$,null,$q$["fs", "http", "path", "os"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$fs provides the file system API.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you import a module in CommonJS?$q$,null,$q$["using fs", "include fs", "const fs = require('fs')", "import fs from 'fs' only"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$require loads CommonJS modules.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the event loop do?$q$,null,$q$["Compiles code", "Runs multiple JavaScript threads at once", "Processes callbacks and async work without blocking the main thread", "Manages memory only"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$It lets Node handle many connections with one thread.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which module is used to create an HTTP server without a framework?$q$,null,$q$["net-http", "http", "web", "server"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$http.createServer starts a basic server.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is process.env used for?$q$,null,$q$["Managing threads", "Reading environment variables", "Opening files", "Listing running processes"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Use it for configuration such as ports and keys.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which function runs after the current operation but before I/O events in the next loop phase?$q$,null,$q$["setTimeout", "fs.readFile", "setInterval", "process.nextTick"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$nextTick callbacks run before other queued async work.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why is fs.readFileSync problematic in a server handling many requests?$q$,null,$q$["It cannot read text", "It requires a callback", "It blocks the event loop", "It uses too little memory"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Synchronous calls stop all other requests meanwhile.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which Node feature lets you use multiple CPU cores?$q$,null,$q$["process.nextTick", "setTimeout", "require.cache", "The cluster module or worker_threads"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$cluster forks processes; worker_threads runs threads.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a Stream in Node.js?$q$,null,$q$["An abstraction for processing data in chunks", "A database cursor", "A type of Promise", "A DOM event"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Streams avoid loading whole files into memory.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword is used with Promises to write asynchronous code that reads like synchronous code?$q$,null,$q$["pause", "await (inside an async function)", "wait", "yield"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$await pauses the async function until the promise settles.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does module.exports do?$q$,null,$q$["Deletes a module", "Defines what a module makes available to other files", "Lists installed modules", "Imports a module"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$require returns the exported value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are core Node.js modules?$q$,null,$q$["fs", "http", "express", "path"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$express is a third-party package.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which operations are asynchronous by default in Node?$q$,null,$q$["setTimeout", "http requests", "fs.readFile", "Array.prototype.map"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,4,$q$map is synchronous.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Node.js is single-threaded for running your JavaScript code.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Heavy work is offloaded to libuv or worker threads.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$npm and Node.js are the same thing.$q$,null,null,$q$"false"$q$::jsonb,1,$q$npm is the package manager that ships with Node.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$An unhandled promise rejection can terminate a modern Node process.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Since Node 15 the default is to throw and exit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is the output order?
console.log('A'); setTimeout(()=>console.log('B'),0); console.log('C');$q$,null,$q$["A, B, C", "B, A, C", "C, B, A", "A, C, B"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Timer callbacks run after the synchronous code.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is the output order?
Promise.resolve().then(()=>console.log('P')); process.nextTick(()=>console.log('T'));$q$,null,$q$["Only T", "P then T", "Only P", "T then P"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$nextTick runs before promise microtasks.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$require('./util') fails with MODULE_NOT_FOUND although util.js exists. What is a likely cause?$q$,null,$q$["Node is too old", "npm is not installed", "The path or file name is wrong relative to the current file", "The file is empty"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Relative paths resolve from the requiring file.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A Node API becomes slow when one endpoint does heavy CPU work. What is the best fix?$q$,null,$q$["Add more setTimeout calls", "Restart each request", "Use synchronous fs", "Move the work to worker_threads or a separate job queue"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Offloading keeps the event loop free.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$HTTP & Networking$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sort numbers$q$,$q$Sort numbers$q$,null,null,3,$q$Use Array.sort with a numeric comparator because the default sort is lexicographic.$q$,$q${"description": "Sort a list of integers in ascending order.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print the sorted numbers separated by single spaces.", "constraints": "1 <= n <= 1000", "examples": [{"input": "5\n5 3 8 1 2", "output": "1 2 3 5 8"}, {"input": "3\n10 -1 7", "output": "-1 7 10"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
5 3 8 1 2$q$,$q$1 2 3 5 8$q$,false,1),($q$3
10 -1 7$q$,$q$-1 7 10$q$,false,2),($q$1
42$q$,$q$42$q$,true,3),($q$6
9 9 1 1 5 5$q$,$q$1 1 5 5 9 9$q$,true,4),($q$4
-3 -10 0 2$q$,$q$-10 -3 0 2$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Node.js$q$ and qq.text=$q$Sort numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Character frequency$q$,$q$Character frequency$q$,null,null,5,$q$Count with an object or Map, then sort the keys alphabetically.$q$,$q${"description": "Count how many times each letter appears in a lowercase word.", "input_format": "One line with a lowercase word (letters a-z).", "output_format": "Print each distinct letter with its count as letter:count, in alphabetical order, separated by spaces.", "constraints": "1 <= length <= 1000", "examples": [{"input": "banana", "output": "a:3 b:1 n:2"}, {"input": "aab", "output": "a:2 b:1"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$banana$q$,$q$a:3 b:1 n:2$q$,false,1),($q$aab$q$,$q$a:2 b:1$q$,false,2),($q$zzz$q$,$q$z:3$q$,true,3),($q$hello$q$,$q$e:1 h:1 l:2 o:1$q$,true,4),($q$abc$q$,$q$a:1 b:1 c:1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Node.js$q$ and qq.text=$q$Character frequency$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command installs a package and saves it as a dependency?$q$,null,$q$["node add package-name", "npm get package-name", "npm install package-name", "npm download package-name"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Since npm 5 the install command saves the dependency in package.json by default.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you load a module in CommonJS?$q$,null,$q$["include fs", "using fs", "const fs = require('fs')", "load('fs')"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$require() returns the module's exports. ES modules use import instead.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which folder holds installed packages?$q$,null,$q$["lib", "packages", "node_modules", "vendor"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$npm installs dependencies into node_modules. It is normally excluded from version control.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does npm start run by default?$q$,null,$q$["npm update", "index.js", "The script named start in package.json", "The node_modules folder"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$npm start runs the start script, or node server.js when none is defined.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which module is best for building file paths that work on every operating system?$q$,null,$q$["url", "util", "fs", "path"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$path.join and path.resolve use the correct separator for the platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which built-in module creates an HTTP server?$q$,null,$q$["web", "http", "server", "net-http"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$http.createServer takes a request handler. Express builds on top of it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$HTTP & Networking$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which object gives access to environment variables?$q$,null,$q$["global.env", "process.env", "os.vars", "env.process"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$process.env.PORT reads the PORT variable. Values are always strings.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which class is used to emit and listen for custom events?$q$,null,$q$["Listener", "Emitter.Base", "EventHandler", "EventEmitter"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$const EventEmitter = require('events') provides on() and emit().$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the usual argument order of a Node-style callback?$q$,null,$q$["(result)", "(error)", "(error, result)", "(result, error)"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The error-first convention puts the error as the first argument, null when there is no error.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(typeof require)$q$,null,$q$["undefined", "object", "function", "string"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$In a CommonJS module, require is a function provided by the module wrapper.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(__filename.endsWith('.js'))$q$,null,$q$["undefined", "TypeError", "false", "true"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$__filename is the absolute path of the current file. The harness file ends in .js.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does Node.js mean by non-blocking I/O?$q$,null,$q$["I/O operations run in the background and a callback or promise is used when they finish", "Code runs in several threads automatically", "The program never waits for user input", "Files cannot be read"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Node can serve other work while waiting for disk or network, which suits I/O-heavy servers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What order are these lines printed in?

setTimeout(() => console.log('timer'), 10);
Promise.resolve().then(() => console.log('promise'));
console.log('sync');$q$,null,$q$["sync\ntimer\npromise", "sync\npromise\ntimer", "timer\nsync\npromise", "promise\nsync\ntimer"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Synchronous code finishes first, then the promise microtask runs, and finally the timer callback fires after its 10 ms delay.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

Promise.resolve().then(() => console.log('promise'));
process.nextTick(() => console.log('tick'));$q$,null,$q$["tick", "promise\ntick", "tick\npromise", "promise"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$process.nextTick callbacks run before promise microtasks.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(module.exports === exports)$q$,null,$q$["true", "false", "Error", "undefined"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$exports is initially a reference to module.exports. Reassigning exports breaks that link.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the difference between dependencies and devDependencies?$q$,null,$q$["dependencies are only for tests", "devDependencies are installed globally", "There is no difference", "devDependencies are only needed for development and testing"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Tools such as test runners and linters belong in devDependencies. npm install --omit=dev skips them.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why use streams to process a very large file?$q$,null,$q$["Streams are always faster for small files", "Data is handled in chunks so the whole file need not fit in memory", "Streams read files in parallel on all CPU cores", "Streams skip errors"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A readable stream emits chunks that can be piped to a writable stream with constant memory use.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which fs function should be avoided in a web server's request handler?$q$,null,$q$["readFileSync", "promises.readFile", "readFile", "createReadStream"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Synchronous functions block the event loop, so other requests wait.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the cluster module help with?$q$,null,$q$["Creating event clusters", "Combining several databases", "Grouping npm packages", "Running several Node processes that share one server port to use multiple CPU cores"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A primary process forks workers, and the operating system or primary spreads connections across them.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

const EE = require('events');
const e = new EE();
e.once('x', () => console.log('hit'));
e.emit('x'); e.emit('x');$q$,null,$q$["Error", "hit", "Nothing", "hit\nhit"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$once registers a listener that is removed after its first call.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between process.nextTick and setImmediate?$q$,null,$q$["nextTick runs before the event loop continues. setImmediate runs in the check phase of the loop", "nextTick runs on another thread", "setImmediate runs before nextTick", "They are identical"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Heavy recursion with nextTick can starve I/O because the tick queue is processed completely before moving on.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which phase of the event loop runs setTimeout callbacks?$q$,null,$q$["Close callbacks", "Poll", "Check", "Timers"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The loop phases are timers, pending callbacks, poll, check and close. Timers run first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why does a CPU-heavy loop in a request handler slow down every other request?$q$,null,$q$["The OS pauses other processes", "JavaScript runs on one thread, so the event loop is blocked until the loop ends", "Node limits connections", "The database locks"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Offload heavy work to worker_threads or another service.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which libuv feature runs file system and DNS operations without blocking the main thread?$q$,null,$q$["The thread pool", "The garbage collector", "The cluster module", "The V8 JIT"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$libuv uses a pool of worker threads (4 by default) for some operations. Network I/O uses the operating system's async facilities.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Event Loop & Async$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does backpressure mean in streams?$q$,null,$q$["The CPU is overloaded", "A buffer becomes empty", "A writable stream signals the source to pause when it cannot accept data as fast as it arrives", "A file is locked"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$pipe() and pipeline() handle backpressure automatically. Ignoring write()'s return value can grow memory.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why is stream.pipeline preferred over chaining .pipe() calls?$q$,null,$q$["It reads faster", "It is shorter", "It works only with files", "It forwards errors and destroys all streams on failure"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$With plain pipe(), an error in one stream does not close the others, which can leak resources.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$File System & Streams$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between worker_threads and child_process?$q$,null,$q$["Worker threads share memory with the process via transferable objects. Child processes are separate OS processes", "worker_threads run other programs", "They are the same", "child_process uses less memory"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Use worker threads for CPU-bound JavaScript and child_process to run external programs or isolate crashes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What should a Node server do on SIGTERM for a graceful shutdown?$q$,null,$q$["Restart itself", "Stop accepting new connections, finish in-flight requests, close resources, then exit", "Exit immediately", "Ignore the signal"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Graceful shutdown avoids dropped requests during deployments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens when an EventEmitter emits 'error' and no listener is registered?$q$,null,$q$["It is logged and ignored", "It is converted to a warning", "It is ignored", "The error is thrown and may crash the process"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$'error' is special. An unhandled one throws the error, so always attach an error listener.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the best practice for an unhandledRejection in production?$q$,null,$q$["Ignore it", "Disable the warning", "Add an empty catch everywhere", "Log it and treat it as a bug, since newer Node versions terminate the process by default"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Since Node 15 unhandled rejections raise an exception by default. Fix the missing catch.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Events & Errors$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does package-lock.json do?$q$,null,$q$["Pins the exact versions of the whole dependency tree for repeatable installs", "Lists devDependencies only", "Stores secrets", "Locks the package from being edited"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Committing the lockfile gives every machine the same installed versions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which header and status should a server send to tell clients a response is cacheable for an hour?$q$,null,$q$["Cache-Control: public, max-age=3600", "Expires: never", "Connection: keep-alive", "Content-Type: cache"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$max-age sets the freshness lifetime in seconds. Other headers like ETag help revalidation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$HTTP & Networking$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command runs a file named app.js with Node.js?$q$,null,$q$["npm app.js", "node app.js", "js app.js", "run app.js"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The node command executes a JavaScript file.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does npm stand for?$q$,null,$q$["New Program Module", "Node Package Manager", "Native Package Mapper", "Node Process Monitor"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$npm installs and manages packages for JavaScript projects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & npm$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which global object describes the currently running Node process?$q$,null,$q$["runtime", "system", "global.process-info", "process"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$process exposes things like argv, env, cwd() and exit().$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which core module gives information about the operating system?$q$,null,$q$["os", "sys", "env", "platform"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$os.platform(), os.cpus() and os.totalmem() describe the host machine.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Process & Cluster$q$,'igeeks-v3','validated' from domains d where d.name=$q$Node.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- expressjs: 64 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is Express.js?$q$,null,$q$["A minimal web framework for Node.js", "A CSS tool", "A front-end framework", "A database"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Express builds on Node's http module.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method creates an Express application?$q$,null,$q$["createApp()", "express()", "app.create()", "new Express()"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$const app = express() creates the app.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method starts the server listening on a port?$q$,null,$q$["app.run(3000)", "app.start(3000)", "app.open(3000)", "app.listen(3000)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$listen binds the server to a port.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method defines a route for HTTP GET requests?$q$,null,$q$["app.fetch(path)", "app.read(path)", "app.route.get()", "app.get(path, handler)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Each HTTP verb has a matching method.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What are the arguments of a typical Express middleware function?$q$,null,$q$["(req, res, next)", "(request)", "(res, req)", "(error only)"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$next() passes control to the next middleware.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which built-in middleware parses JSON request bodies?$q$,null,$q$["bodyJson()", "express.body()", "express.parse()", "express.json()"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Add app.use(express.json()) before your routes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you read a route parameter from /users/:id?$q$,null,$q$["req.params.id", "req.id", "req.body.id", "req.query.id"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Route parameters are in req.params.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you read ?page=2 from the URL?$q$,null,$q$["req.params.page", "req.body.page", "req.query.page", "req.url.page"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Query string values are in req.query.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which method sends a JSON response?$q$,null,$q$["res.json(obj)", "res.sendJSON(obj)", "res.object(obj)", "res.write.json(obj)"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$res.json sets the content type and serialises the object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you set an HTTP status code of 404 before sending?$q$,null,$q$["res.code(404)", "res.set(404)", "res.error(404)", "res.status(404).send('Not found')"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$status() is chainable with send or json.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Error Handling$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Where must an error-handling middleware be placed?$q$,null,$q$["After all routes and other middleware", "Before express.json()", "Only inside a route", "Anywhere, order does not matter"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Express matches middleware in the order it is registered.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What signature identifies an error-handling middleware?$q$,null,$q$["(next, err)", "(req, res)", "(err, req, res, next)", "(error)"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Four arguments tell Express it handles errors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does express.Router() provide?$q$,null,$q$["A session store", "A template engine", "A database connection", "Modular, mountable route handlers"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Routers group routes and mount at a path.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which package helps allow cross-origin browser requests?$q$,null,$q$["cors", "dotenv", "morgan", "helmet"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The cors middleware sets the CORS headers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the helmet package do?$q$,null,$q$["Parses cookies", "Logs requests", "Compresses responses", "Sets security-related HTTP headers"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$helmet adds headers such as X-Content-Type-Options.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are valid Express response methods?$q$,null,$q$["res.render404()", "res.send()", "res.json()", "res.redirect()"]$q$::jsonb,$q$[1, 2, 3]$q$::jsonb,3,$q$render404 does not exist.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are common uses of middleware?$q$,null,$q$["Authentication checks", "Logging requests", "Parsing request bodies", "Compiling TypeScript at runtime for every request"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,4,$q$Middleware handles cross-cutting request concerns.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Express can only serve JSON responses.$q$,null,null,$q$"false"$q$::jsonb,1,$q$It can send HTML, files, text and more.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$If a middleware neither responds nor calls next(), the request hangs.$q$,null,null,$q$"true"$q$::jsonb,1,$q$The client waits until timeout.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$Calling next(err) skips normal middleware and goes to error handlers.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Express routes the error to the next error-handling middleware.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does GET /hello return?
app.get('/hello', (req, res) => res.send('Hi'));$q$,null,$q$["An empty string", "Cannot GET /hello", "404 Not Found", "Hi"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The handler sends the text Hi.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is the order of output when GET / is called?
app.use((q,r,n)=>{console.log('A');n();});
app.get('/',(q,r)=>{console.log('B');r.send('ok');});$q$,null,$q$["Only B", "Only A", "A then B", "B then A"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Middleware registered first runs first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$req.body is undefined for a JSON POST request. What is the most likely fix?$q$,null,$q$["Change POST to GET", "Use res.body", "Add app.use(express.json()) before the routes", "Install Sass"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Without a parser Express does not populate req.body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$Why does this crash with ERR_HTTP_HEADERS_SENT?
res.send('a'); res.send('b');$q$,null,$q$["A response can only be sent once per request", "The status code is missing", "res.send is deprecated", "The port is busy"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Sending headers twice is an error; return after responding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You want every route under /api/v1 to require a valid token. What is the cleanest approach?$q$,null,$q$["Mount a router at /api/v1 with an auth middleware applied to it", "Disable the routes", "Check tokens only in the browser", "Copy the token check into every handler"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Applying middleware at the router level avoids repetition.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method starts an Express app listening for connections?$q$,null,$q$["app.listen(port)", "app.run(port)", "app.start(port)", "app.open(port)"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$app.listen binds to a port and returns an http.Server.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method defines a handler for GET requests to /users?$q$,null,$q$["app.get('/users', handler)", "app.route.get('/users')", "app.on('GET /users')", "app.fetch('/users')"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Express has one method per HTTP verb, such as get, post, put and delete.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you set the HTTP status code of a response?$q$,null,$q$["res.set(404)", "res.statusCode(404)", "res.code = 404", "res.status(404)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$res.status(404).json({ error: 'Not found' }) sets the code and sends a body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which built-in middleware serves static files such as images and CSS?$q$,null,$q$["app.static('public')", "express.files('public')", "express.static('public')", "express.serve('public')"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$express.static maps a folder to URL paths.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which middleware parses a JSON request body?$q$,null,$q$["app.json()", "express.parse()", "express.json()", "express.body()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$After app.use(express.json()) the parsed data is in req.body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is middleware in Express?$q$,null,$q$["A database driver", "A kind of route", "A template engine", "A function that receives req, res and next and can handle or pass on the request"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Middleware runs in the order it is registered and may end the response or call next().$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does calling next() inside middleware do?$q$,null,$q$["Closes the connection", "Ends the response", "Restarts the request", "Passes control to the next middleware or route"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$If a middleware neither responds nor calls next(), the request hangs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method registers middleware for every request?$q$,null,$q$["app.all(fn)", "app.use(fn)", "app.add(fn)", "app.middleware(fn)"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$app.use runs the function for all paths (or paths starting with a given prefix).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which HTTP status code means a resource was not found?$q$,null,$q$["301", "200", "404", "500"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$404 Not Found. 200 is OK, 500 is a server error and 301 a permanent redirect.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does res.redirect('/login') do?$q$,null,$q$["Closes the server", "Forwards the request internally", "Sends a redirect response so the browser requests /login", "Includes the login page's HTML"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The default status is 302 (Found).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the usual way to export an Express router from a file?$q$,null,$q$["router.export()", "app.export(router)", "export router to app", "module.exports = router"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$In CommonJS the file assigns the router to module.exports, and the app mounts it with app.use('/path', router).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you mount a group of routes under /api/users?$q$,null,$q$["app.group('/api/users', usersRouter)", "app.use('/api/users', usersRouter)", "usersRouter.mount('/api/users')", "app.route('/api/users', usersRouter)"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A Router is a mini-app. Paths inside it are relative to the mount point.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Two routes match: app.get('/users/:id') is declared before app.get('/users/new'). A request for /users/new goes where?$q$,null,$q$["To the :id route, with id = 'new'", "To a 404", "To the /users/new route", "To the last route"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Express uses the first matching route, so declare more specific routes before parameterised ones.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does app.route('/books').get(a).post(b) do?$q$,null,$q$["Redirects GET to POST", "Defines two middleware", "Creates two separate servers", "Defines handlers for several methods on one path"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Chaining under one path avoids repeating the path string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A middleware has the signature (req, res, next) but never calls next() or sends a response. What happens?$q$,null,$q$["Express calls next automatically", "A 500 is sent", "The request hangs until the client times out", "A 404 is sent"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Express does not time out for you. Always finish the response or call next.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Where should error-handling middleware be registered?$q$,null,$q$["Before everything", "Inside each route", "After all routes and other middleware", "Only in the router"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Error handlers are matched in order, so they must come after the code that might raise errors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the signature of Express error-handling middleware?$q$,null,$q$["(req, res, err)", "(req, res, next, err)", "(err, res)", "(err, req, res, next)"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Express recognises error handlers by their four parameters, even if next is unused.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A route handler is async and throws. In Express 4, what happens if the error is not caught?$q$,null,$q$["The request hangs and an unhandled rejection is raised", "The process restarts", "A 500 is sent automatically", "Express passes it to the error handler"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Express 4 does not handle rejected promises, so wrap the handler or call next(err). Express 5 forwards rejections to the error handler.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the cors middleware control?$q$,null,$q$["Cookies lifetime", "Compression", "Password hashing", "Which other origins may call your API from a browser"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$CORS headers tell browsers whether a page on another origin may read the response.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which package adds a set of security-related HTTP headers?$q$,null,$q$["morgan", "passport", "multer", "helmet"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$helmet sets headers such as X-Content-Type-Options and Content-Security-Policy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which middleware is typically used to handle multipart file uploads?$q$,null,$q$["cookie-parser", "compression", "body-parser", "multer"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$express.json does not parse multipart forms. multer does.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the difference between res.send and res.json?$q$,null,$q$["res.send cannot send strings", "res.json always converts to JSON and sets the JSON content type", "There is no difference", "res.json is faster"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$res.send chooses the type from its argument. res.json always stringifies.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why does an Express app not see a JSON body when express.json() is missing?$q$,null,$q$["req.body stays undefined because nothing parses the stream", "The request is rejected with 400", "JSON is blocked by default", "The body is in req.query"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Body parsing is optional middleware in Express.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$You register app.use(express.json()) after the route that reads req.body. What happens?$q$,null,$q$["It works the same", "The server fails to start", "The body is parsed twice", "req.body is undefined in that route"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Middleware runs in registration order, so the parser must come before the routes that need it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why is it unsafe to build a file path directly from req.params.name, for example fs.readFile('uploads/' + name)?$q$,null,$q$["fs is asynchronous", "Express blocks dots", "Parameters are always numbers", "A value like ../../etc/passwd can escape the folder (path traversal)"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Validate or normalise the name and check the resolved path stays inside the intended directory.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which cookie attributes help protect a session cookie?$q$,null,$q$["Max-Age only", "Path and Domain only", "Expires only", "HttpOnly, Secure and SameSite"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$HttpOnly hides it from JavaScript, Secure sends it only over HTTPS and SameSite limits cross-site sending.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why use rate limiting on a login route?$q$,null,$q$["To reduce cookie size", "To hide the route", "To make the page load faster", "To slow down brute-force password guessing"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$express-rate-limit or a gateway limits attempts per client in a time window.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does app.set('trust proxy', true) affect?$q$,null,$q$["The SSL certificate", "How Express reads the client IP and protocol behind a reverse proxy via X-Forwarded-* headers", "The routing order", "Static file caching"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Without it, req.ip would be the proxy's address and secure cookies may not be set correctly. Only trust proxies you control.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is wrong with calling res.send twice in the same request?$q$,null,$q$["The second response replaces the first", "The server closes the port", "Headers are already sent, so the second call throws ERR_HTTP_HEADERS_SENT", "Nothing, both are sent"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$A response can be sent only once. Use return after sending in early-exit branches.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does req.params look like for the route /files/*splat (Express 5) when the URL is /files/a/b.txt?$q$,null,$q$["Undefined", "An array of path segments under the splat name", "The query object", "A single string only"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$In Express 5 wildcards must be named and are captured as arrays of segments. In Express 4 they were available as req.params[0].$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why must an error-handling middleware declare all four parameters even if next is not used?$q$,null,$q$["To keep the stack trace", "Express decides it is an error handler from its function length", "next is called internally", "JavaScript requires every parameter"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$fn.length is 4 only if all four are declared, which is how Express recognises it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a sensible way to avoid repeating try/catch in every async route in Express 4?$q$,null,$q$["A small wrapper that forwards rejected promises to next(err)", "Using sync fs only", "Calling res.end first", "Disabling errors"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$const wrap = fn => (req, res, next) => fn(req, res, next).catch(next) sends failures to the central handler.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A browser sends an OPTIONS preflight before a cross-origin PUT with a JSON body. What must the server do for the real request to be allowed?$q$,null,$q$["Switch the route to GET", "Add a Content-Length header", "Answer the OPTIONS request with a success status and the matching Access-Control-Allow-* headers", "Return 404 for OPTIONS"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$The cors middleware must be registered before the routes so that the preflight is answered. Routes that only define PUT never see the OPTIONS request.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How does app.use('/api', fn) differ from app.all('/api', fn)?$q$,null,$q$["all matches any prefix and use matches the exact path", "use only handles GET", "They are identical", "use matches any path starting with /api and strips the mount path from req.url, while all matches only the exact path"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$app.use mounts middleware on a path prefix, so inside fn, req.url is relative to /api. app.all is a route that matches every HTTP method for that exact path.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Middleware$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method defines a handler for POST requests?$q$,null,$q$["app.post(path, handler)", "app.create(path, handler)", "app.submit(path, handler)", "app.send(path, handler)"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Express has a method for each HTTP verb, such as get, post, put, patch and delete.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Where are the HTTP request headers available in a handler?$q$,null,$q$["req.head", "res.headers", "req.headers", "req.meta"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$req.headers is an object with lower-case header names. req.get('name') reads one header.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method sets a response header?$q$,null,$q$["res.header = value", "res.addHeader()", "req.set()", "res.set('Header-Name', 'value')"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$res.set (alias res.header) sets a header before the response is sent.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does res.end() do?$q$,null,$q$["Closes the server", "Ends the response without sending any further data", "Redirects the client", "Sends JSON"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$It finishes the response process. res.send and res.json call it for you.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method sends a string or HTML as the response body?$q$,null,$q$["res.send()", "res.string()", "res.print()", "res.text.write()"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$res.send picks the Content-Type from the argument.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Request & Response$q$,'igeeks-v3','validated' from domains d where d.name=$q$Express.js$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- angular: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is Angular?$q$,null,$q$["A server runtime", "A database", "A TypeScript-based front-end framework", "A CSS library"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Angular is maintained by Google.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command creates a new Angular project?$q$,null,$q$["ng init my-app", "ng new my-app", "angular create my-app", "npm start my-app"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The Angular CLI generates a new workspace.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which decorator defines an Angular component?$q$,null,$q$["@Module", "@Component", "@Injectable", "@Directive"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$@Component links a class to a template and metadata.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which syntax displays a component property in the template?$q$,null,$q$["${property}", "<%= property %>", "{{ property }}", "[[property]]"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Double curly braces perform interpolation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which syntax binds a DOM property to a component value?$q$,null,$q$["[property]=\"value\"", "(property)=\"value\"", "#property=\"value\"", "{property}=\"value\""]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Square brackets create property binding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which syntax listens for a click event?$q$,null,$q$["on-click={onClick}", "@click=\"onClick()\"", "[click]=\"onClick()\"", "(click)=\"onClick()\""]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Parentheses create event binding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which syntax gives two-way binding with a form field?$q$,null,$q$["[(ngModel)]=\"name\"", "{{ngModel}}", "(ngModel)=\"name\"", "[ngModel]=name"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Banana-in-a-box combines property and event binding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is a service in Angular used for?$q$,null,$q$["Sharing logic and data across components", "Defining routes only", "Styling a component", "Compiling TypeScript"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Services are injected through dependency injection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Services & DI$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which decorator makes a class available for dependency injection?$q$,null,$q$["@ViewChild", "@Output", "@Input", "@Injectable"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$@Injectable marks a class as a provider.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Services & DI$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which decorator receives data from a parent component?$q$,null,$q$["@HostListener", "@Output", "@Input", "@Injectable"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$@Input binds a property to a parent value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which class lets a child component emit custom events to its parent?$q$,null,$q$["Promise", "Observable only", "Subject only", "EventEmitter"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$@Output() works with EventEmitter.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which directive repeats an element for each item in a list (classic syntax)?$q$,null,$q$["*ngIf", "*ngFor", "ngClass", "ngSwitch"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$ngFor loops over an iterable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is an Observable?$q$,null,$q$["A CSS class", "A template reference", "A stream of values over time that you subscribe to", "A single value"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$RxJS Observables model async data like HTTP calls.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the async pipe do?$q$,null,$q$["Delays rendering by one second", "Subscribes to an Observable or Promise and unwraps its value", "Formats dates", "Makes code synchronous"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$It also unsubscribes automatically.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which change detection strategy reduces checks to input changes and events?$q$,null,$q$["Manual", "Lazy", "OnPush", "Default"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$OnPush improves performance for immutable data.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are Angular lifecycle hooks?$q$,null,$q$["ngOnRender", "ngOnChanges", "ngOnDestroy", "ngOnInit"]$q$::jsonb,$q$[1, 2, 3]$q$::jsonb,3,$q$ngOnRender is not a lifecycle hook.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are valid ways to share data between components?$q$,null,$q$["Direct DOM manipulation of another component", "@Output events from child to parent", "A shared service", "@Input from parent to child"]$q$::jsonb,$q$[1, 2, 3]$q$::jsonb,4,$q$Use Angular's data flow rather than touching other components' DOM.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Angular applications are written mainly in TypeScript.$q$,null,null,$q$"true"$q$::jsonb,1,$q$TypeScript is the default language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$ngOnInit runs before the constructor.$q$,null,null,$q$"false"$q$::jsonb,1,$q$The constructor runs first, then ngOnInit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$Lazy loading lets Angular load feature modules only when they are needed.$q$,null,null,$q$"true"$q$::jsonb,1,$q$It reduces the initial bundle size.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does the template show if name = 'Asha'?
<h1>Hello {{ name }}</h1>$q$,null,$q$["Hello name", "Nothing", "Hello {{ name }}", "Hello Asha"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Interpolation inserts the property value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$How many items are rendered if items = [1,2,3] and the template has <li *ngFor="let i of items">{{i}}</li>?$q$,null,$q$["1", "0", "3", "It throws an error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$One li is created for each array element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$A template using [(ngModel)] throws an error saying it is not a known property. What is missing?$q$,null,$q$["A service", "The router", "FormsModule must be imported", "HttpClientModule"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$ngModel comes from FormsModule.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$A component subscribes to an Observable in ngOnInit and the app slows down after many visits. What is the likely cause?$q$,null,$q$["Subscriptions are never unsubscribed, causing memory leaks", "The CLI is outdated", "The template is too small", "The constructor is empty"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Unsubscribe in ngOnDestroy or use the async pipe.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','intermediate',$q$A page must show data only after the user is logged in; otherwise redirect to /login. Which Angular feature fits?$q$,null,$q$["A route guard", "A directive for styling", "A service worker", "A pipe"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Guards decide whether navigation is allowed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which decorator marks a class as an Angular component?$q$,null,$q$["@Component", "@Directive", "@Injectable", "@NgModule"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$@Component ties a class to a template, styles and a selector.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which syntax listens to a click event in a template?$q$,null,$q$["[click]=\"save()\"", "(click)=\"save()\"", "onclick=\"save()\"", "{click}=\"save()\""]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Parentheses mean event binding, from the template to the component.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does [(ngModel)] provide?$q$,null,$q$["One-way binding to the template", "Two-way data binding between a form control and a property", "Event binding only", "A route guard"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The banana-in-a-box syntax combines [ngModel] and (ngModelChange). It requires FormsModule.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which control-flow block shows content only when a condition is true in modern Angular templates?$q$,null,$q$["<if condition>", "[if]=\"condition\"", "*ngShow=\"condition\"", "@if (condition) { ... }"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Built-in control flow (@if, @for, @switch) replaces the older structural directives such as *ngIf.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which control-flow block repeats a template for each item and needs a track expression?$q$,null,$q$["*ngLoop=\"let item of items\"", "@for (item of items; track item.id) { ... }", "@each (item in items) { ... }", "@repeat items"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$track tells Angular how to identify items so it can reuse DOM nodes when the list changes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the Angular CLI command that creates a new component named user-card?$q$,null,$q$["ng add user-card", "ng generate component user-card", "ng new user-card", "ng create user-card"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$ng g c user-card is the short form.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How does a component usually receive a service?$q$,null,$q$["By a global variable", "Through constructor or inject() dependency injection", "By importing it into the template", "By creating it with new"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Angular's injector creates the service and supplies it where it is requested.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Services & DI$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which decorator lets a parent pass data into a child component?$q$,null,$q$["@Input", "@HostBinding", "@Output", "@ViewChild"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$An @Input property receives a value bound with [name]="value" in the parent template.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which mechanism lets a child notify its parent?$q$,null,$q$["@Output with an EventEmitter", "A route parameter", "@Input", "A pipe"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The parent listens with (eventName)="handler($event)".$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does a pipe do in a template?$q$,null,$q$["Connects two components", "Transforms a value for display, such as {{ price | currency }}", "Loads a service", "Creates a route"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Pipes format or convert values without changing the source data.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which directive creates a navigation link that uses the Angular router?$q$,null,$q$["routerLink", "navigateTo", "href", "ngLink"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$routerLink changes the route without reloading the page.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which element shows the component matched by the current route?$q$,null,$q$["<router-outlet>", "<ng-view>", "<route-view>", "<ng-container>"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The router renders the matched component in the router-outlet.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the difference between template-driven and reactive forms?$q$,null,$q$["Reactive forms are defined in the component class with FormGroup and FormControl", "Template-driven forms are defined in services", "Reactive forms cannot be validated", "They are the same"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Reactive forms give explicit, testable control. Template-driven forms rely on directives such as ngModel.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which validator makes a form control mandatory?$q$,null,$q$["Validators.required", "Validators.notEmpty", "Validators.mandatory", "Validators.present"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Validators.required marks the control invalid when empty.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does HttpClient.get() return?$q$,null,$q$["An Observable", "A string", "A Promise", "A plain object"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$HttpClient methods return cold observables. The request is sent when something subscribes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which RxJS operator turns each value into a new Observable and cancels the previous inner one?$q$,null,$q$["tap", "switchMap", "mergeMap", "map"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$switchMap is typical for type-ahead search, where only the latest request matters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does providedIn: 'root' do for a service?$q$,null,$q$["Registers a single shared instance for the whole application", "Creates a new instance per component", "Makes the service private to the root component", "Loads it only on the home route"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The root injector holds one instance that all consumers share. Unused services can be tree-shaken.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Services & DI$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which router feature stops a user from opening a route unless a condition holds?$q$,null,$q$["An interceptor", "A route guard such as canActivate", "A resolver", "A pipe"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Guards return true, false or a UrlTree to allow, block or redirect navigation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Routing$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does ChangeDetectionStrategy.OnPush do?$q$,null,$q$["Checks the component only when an input reference changes, an event occurs, an async pipe emits or a signal it reads changes", "Disables change detection", "Checks the component only once", "Runs change detection every second"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$OnPush reduces checks. Mutating an object in place without changing its reference is not noticed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which function creates a writable signal with an initial value in Angular?$q$,null,$q$["useSignal(0)", "new Signal(0)", "state(0)", "signal(0)"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$count = signal(0) creates a signal. Read it by calling count() and change it with set or update.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does computed(() => a() * 2) return?$q$,null,$q$["A Promise", "A read-only signal that recalculates when a changes", "An Observable", "A writable signal"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$computed values are lazy and memoised. They update only when a dependency signal changes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is effect() used for with signals?$q$,null,$q$["Running side effects whenever the signals read inside it change", "Replacing services", "Creating a signal", "Formatting a template value"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Use effects sparingly, for things like logging or syncing to storage, and not to derive state (use computed).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In which lifecycle hook is it safe to read the @Input values for the first time?$q$,null,$q$["ngOnDestroy", "ngOnInit", "ngAfterViewChecked", "constructor"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Inputs are set after construction. ngOnInit runs once after the first ngOnChanges.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A component subscribes to an Observable in ngOnInit and never unsubscribes. What may happen?$q$,null,$q$["A memory leak and callbacks running after the component is destroyed", "A compile error", "Nothing, Angular always unsubscribes", "The Observable completes automatically"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Use the async pipe, takeUntilDestroyed, or unsubscribe in ngOnDestroy. HTTP observables complete on their own.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the main benefit of lazy loading a route with loadComponent or loadChildren?$q$,null,$q$["The route renders faster once loaded", "The route's code is downloaded only when it is first visited", "It disables guards", "It avoids using the router"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Smaller initial bundles mean faster startup.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Change Detection & Signals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which operator should be used to run several independent HTTP requests in parallel and get all results together?$q$,null,$q$["switchMap", "exhaustMap", "forkJoin", "concatMap"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$forkJoin waits for every source to complete and emits the last value of each as an array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does an HttpInterceptor allow?$q$,null,$q$["Generating components", "Inspecting or modifying every outgoing request and incoming response, for example to add an auth header", "Changing the router", "Compiling templates"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Interceptors form a chain and are registered with provideHttpClient(withInterceptors([...])).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between a cold and a hot Observable?$q$,null,$q$["A cold observable runs its producer for each subscriber, a hot one shares an already running producer", "They are identical", "Cold ones never complete", "Hot ones are faster"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$HttpClient requests are cold: two subscribers send two requests unless the result is shared with shareReplay.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$RxJS & HTTP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the inject() function offer compared with constructor injection?$q$,null,$q$["It replaces providers", "It can be used in field initialisers and functions that run in an injection context", "It works outside Angular", "It creates a new instance each time"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$const http = inject(HttpClient) works in components, services, guards and interceptors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Services & DI$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does ng-content do in a component template?$q$,null,$q$["Loads a template file", "Imports a module", "Projects the content placed between the component's tags into that spot", "Creates a container"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Content projection lets a wrapper component accept arbitrary child content.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why might you use a custom async validator?$q$,null,$q$["To style inputs", "To validate quickly with regex", "To disable validation", "To validate against the server, for example checking whether a username is taken"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Async validators return an Observable or Promise and run after sync validators pass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the purpose of trackBy / the track expression for lists?$q$,null,$q$["To animate items", "To filter items", "To sort items", "To let Angular reuse DOM nodes for unchanged items instead of recreating the whole list"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Without a stable identity, re-created data causes DOM nodes to be destroyed and rebuilt.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Forms$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file starts (bootstraps) an Angular application in the browser?$q$,null,$q$["angular.html", "app.json", "main.ts", "index.css"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$main.ts calls bootstrapApplication (or bootstrapModule in older apps) with the root component.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does the ng serve command do?$q$,null,$q$["Runs unit tests", "Creates a new project", "Builds the app and serves it with live reload for development", "Deploys to production"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$ng serve compiles in memory and refreshes the browser when files change.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is an Angular directive?$q$,null,$q$["A style sheet", "A route definition", "A class that adds behaviour to elements in a template", "A kind of service"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Components are directives with a template. Attribute and structural directives change existing elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command creates a new Angular workspace?$q$,null,$q$["ng init my-app", "ng new my-app", "npm angular my-app", "ng create my-app"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$ng new generates the project structure, configuration and a starter application.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When does the ngOnChanges lifecycle hook run?$q$,null,$q$["After every user click", "Only once at startup", "When a bound input property changes", "When the component is destroyed"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$It receives a SimpleChanges object describing the previous and current values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How does Angular help protect against cross-site scripting (XSS) in templates?$q$,null,$q$["It encrypts all templates", "It blocks all HTML", "It disables JavaScript", "It sanitises untrusted values in bindings by default"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Interpolated and bound values are treated as text or sanitised. Bypassing this with bypassSecurityTrust* should be rare.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Components & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$Angular$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- c: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which format specifier prints an int with printf?$q$,null,$q$["%f", "%c", "%s", "%d"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$%d prints a decimal integer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header declares printf?$q$,null,$q$["<string.h>", "<math.h>", "<stdio.h>", "<stdlib.h>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$printf and scanf are in stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What marks the end of a C string?$q$,null,$q$["EOF", "The null character '\\0'", "A newline", "A space"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Strings are arrays terminated by \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does &x give you?$q$,null,$q$["The size of x", "A copy of x", "The address of x", "The value of x"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$& is the address-of operator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which function allocates memory dynamically?$q$,null,$q$["alloc", "create", "malloc", "new"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$malloc is declared in stdlib.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which function compares two strings?$q$,null,$q$["strlen", "strcmp", "strcpy", "strcat"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$strcmp returns 0 when strings are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When an array is passed to a function, what is actually passed?$q$,null,$q$["The array with its length", "Nothing", "A pointer to its first element", "A full copy of the array"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Arrays decay to pointers in function arguments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which loop checks its condition after executing the body?$q$,null,$q$["while", "goto", "do-while", "for"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$do-while always runs at least once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which has the highest precedence?$q$,null,$q$["Addition +", "Assignment =", "Multiplication *", "Parentheses ()"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Parentheses override normal precedence.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a static local variable do?$q$,null,$q$["Is constant", "Becomes a global name", "Keeps its value between function calls", "Is re-initialised on every call"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Static locals live for the whole program run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Structures & Storage$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a dangling pointer?$q$,null,$q$["A pointer to a pointer", "A pointer to memory that has been freed", "A void pointer", "A pointer set to NULL"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Using it is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the effect of calling free(p) twice on the same pointer?$q$,null,$q$["Nothing, it is safe", "Undefined behaviour (double free)", "p becomes NULL", "A compile error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Setting p = NULL after free avoids this.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is sizeof(int) on most modern platforms?$q$,null,$q$["2 bytes", "1 byte", "4 bytes", "8 bytes"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$int is typically 32 bits.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are valid C data types?$q$,null,$q$["int", "string", "char", "float"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,3,$q$C has no built-in string type; strings are char arrays.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which functions are declared in <string.h>?$q$,null,$q$["memcpy", "printf", "strcpy", "strlen"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,4,$q$printf belongs to stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$C is a case-sensitive language.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Main and main are different identifiers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$An array name can be reassigned to point to another array.$q$,null,null,$q$"false"$q$::jsonb,1,$q$An array name is not a modifiable lvalue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$int *p = NULL; *p = 5; is well defined.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Dereferencing NULL is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int a = 5; printf("%d", a++ + 1);$q$,null,$q$["An error", "6", "7", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$a++ yields 5 and then 1 is added.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
char s[] = "abc"; printf("%d", (int)sizeof(s));$q$,null,$q$["8", "4", "3", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The array holds a, b, c and the terminating \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
int a[] = {1,2,3}; int *p = a; printf("%d", *(p + 2));$q$,null,$q$["2", "Garbage", "1", "3"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$p + 2 points at the third element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does scanf("%d", n); misbehave for an int n?$q$,null,$q$["The wrong header is included", "n must be a float", "The address &n is required", "A semicolon is missing"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$scanf needs a pointer to store the value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$What is wrong with this code?
char *s = "hi"; s[0] = 'H';$q$,null,$q$["The array has no size", "Nothing is wrong", "Modifying a string literal is undefined behaviour", "It needs malloc"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Use char s[] = "hi"; to get a modifiable array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of N numbers$q$,$q$Sum of N numbers$q$,null,null,3,$q$Loop N times, adding each value to a running total.$q$,$q${"description": "Read N integers and print their sum.", "input_format": "The first line has N. The second line has N space-separated integers.", "output_format": "Print the sum.", "constraints": "1 <= N <= 1000, each value fits in a 32-bit int and the sum fits in 64 bits", "examples": [{"input": "3\n1 2 3", "output": "6"}, {"input": "1\n-5", "output": "-5"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$3
1 2 3$q$,$q$6$q$,false,1),($q$1
-5$q$,$q$-5$q$,false,2),($q$5
10 20 30 40 50$q$,$q$150$q$,true,3),($q$4
-1 -2 -3 -4$q$,$q$-10$q$,true,4),($q$2
1000000 2000000$q$,$q$3000000$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C$q$ and qq.text=$q$Sum of N numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Armstrong number$q$,$q$Armstrong number$q$,null,null,5,$q$Count the digits, raise each digit to that power and compare the total to N.$q$,$q${"description": "A number is an Armstrong number if the sum of its digits each raised to the power of the number of digits equals the number itself. Check a number.", "input_format": "A single positive integer N.", "output_format": "Print Yes if N is an Armstrong number, otherwise No.", "constraints": "1 <= N <= 10^6", "examples": [{"input": "153", "output": "Yes"}, {"input": "370", "output": "Yes"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$153$q$,$q$Yes$q$,false,1),($q$370$q$,$q$Yes$q$,false,2),($q$123$q$,$q$No$q$,true,3),($q$9474$q$,$q$Yes$q$,true,4),($q$100$q$,$q$No$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C$q$ and qq.text=$q$Armstrong number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header file declares printf?$q$,null,$q$["stdlib.h", "string.h", "conio.h", "stdio.h"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$stdio.h declares the standard input and output functions such as printf and scanf.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Where does execution of a C program begin?$q$,null,$q$["The first #include", "The main function", "The first function in the file", "The function named start"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The runtime calls main(), which is the entry point of every hosted C program.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 10 % 4);
    return 0;
}$q$,null,$q$["2", "2.5", "4", "0"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The % operator gives the remainder of the division: 10 = 2 × 4 + 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which loop always executes its body at least once?$q$,null,$q$["while", "None of them", "do-while", "for"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$do-while tests its condition after the body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a = 5, b = a++;
    printf("%d %d\n", a, b);
    return 0;
}$q$,null,$q$["6 6", "5 5", "5 6", "6 5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$a++ yields the old value (5) to b and then increments a to 6.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 5 > 3);
    return 0;
}$q$,null,$q$["5", "0", "1", "true"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Relational expressions in C produce the int 1 for true and 0 for false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the index of the first element of a C array?$q$,null,$q$["-1", "It depends on the array type", "1", "0"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$C arrays are zero-based, so a[0] is the first element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which character ends every C string?$q$,null,$q$["'\\0'", "'\\n'", "' '", "'$'"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The null character marks the end of a string. A string of n visible characters needs n + 1 bytes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 'A');
    return 0;
}$q$,null,$q$["41", "65", "Error", "A"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A character constant has type int in C. printf with %d shows its ASCII code, 65.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator gives the address of a variable?$q$,null,$q$["#", "*", "&", "->"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$&x is the address of x. * dereferences a pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 5;
    int *p = &x;
    printf("%d\n", *p);
    return 0;
}$q$,null,$q$["0", "The address of x", "5", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$*p reads the value that p points to, which is x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%zu\n", sizeof(char));
    return 0;
}$q$,null,$q$["8", "1", "2", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$sizeof(char) is 1 by definition, whatever the platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%.2f\n", 3.14159);
    return 0;
}$q$,null,$q$["3.14159", "3.1", "3.15", "3.14"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$%.2f rounds to two decimal places.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
#include <string.h>
int main(void) {
    char s[] = "abc";
    printf("%zu %zu\n", sizeof(s), strlen(s));
    return 0;
}$q$,null,$q$["4 4", "3 3", "4 3", "3 4"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$strlen counts the 3 characters. sizeof also counts the terminating '\0', so it is 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a[] = {10, 20, 30};
    int *p = a;
    printf("%d\n", *(p + 2));
    return 0;
}$q$,null,$q$["Address", "30", "20", "10"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Pointer arithmetic moves in units of the element size, so p + 2 points at a[2].$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int counter(void) {
    static int n = 0;
    return ++n;
}
int main(void) {
    for (int i = 0; i < 3; i++) printf("%d", counter());
    return 0;
}$q$,null,$q$["000", "111", "123", "012"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$A static local keeps its value between calls, so it counts 1, 2, 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", -7 % 3);
    return 0;
}$q$,null,$q$["2", "1", "-1", "-2"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Since C99 the result of % has the sign of the dividend: -7 = (-2) × 3 + (-1).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    unsigned char c = 255;
    c++;
    printf("%d\n", c);
    return 0;
}$q$,null,$q$["-1", "256", "255", "0"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Unsigned arithmetic wraps around. 255 + 1 does not fit in 8 bits and becomes 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Structures & Storage$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", (int)3.99);
    return 0;
}$q$,null,$q$["4", "3", "3.0", "3.99"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A cast to int truncates towards zero.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
#define SQ(x) x * x
int main(void) {
    printf("%d\n", SQ(2 + 1));
    return 0;
}$q$,null,$q$["6", "5", "9", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The macro is replaced textually: 2 + 1 * 2 + 1 = 5. Writing ((x) * (x)) in the macro would give 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a[3] = {1, 2, 3};
    printf("%d\n", 2[a]);
    return 0;
}$q$,null,$q$["3", "Error", "2", "1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$a[2] is defined as *(a + 2), which is the same as *(2 + a), so 2[a] is valid and equals a[2].$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", !!5);
    return 0;
}$q$,null,$q$["!5", "1", "0", "5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The first ! turns 5 into 0 and the second turns 0 into 1. It is a way to normalise a value to 0 or 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 0;
    if (x = 5) printf("yes");
    else printf("no");
    return 0;
}$q$,null,$q$["yes", "Compile error", "Nothing", "no"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$x = 5 is an assignment, not a comparison. Its value is 5, which is true.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 1 << 3 | 1);
    return 0;
}$q$,null,$q$["9", "8", "16", "4"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The shift happens first: 1 << 3 = 8, and 8 | 1 = 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", ~5);
    return 0;
}$q$,null,$q$["0", "-5", "-6", "5"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$On a two's complement machine ~x equals -x - 1, so ~5 is -6.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 5 & 3 ^ 1);
    return 0;
}$q$,null,$q$["6", "0", "1", "4"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$& has higher precedence than ^. (5 & 3) = 1, and 1 ^ 1 = 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$On a typical platform with a 4-byte int, what does this program print?

#include <stdio.h>
int main(void) {
    struct S { char a; int b; };
    printf("%zu\n", sizeof(struct S));
    return 0;
}$q$,null,$q$["5", "4", "6", "8"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The int must be aligned to 4 bytes, so 3 padding bytes follow the char. The total is 8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the following declaration mean? const int *p;$q$,null,$q$["p points to an int that cannot be changed through p", "p is a constant pointer to an int", "p can only be assigned once", "Both the pointer and the int are constant"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$const int *p is a pointer to const int. int *const p would be a const pointer to a modifiable int.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the volatile qualifier tell the compiler?$q$,null,$q$["The variable is local to the function", "The value is stored in a register", "The value can never change", "The value may change outside the program's control, so every access must really be made"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Volatile is used for hardware registers and variables changed by signal handlers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A function returns the address of one of its local variables. What is the problem?$q$,null,$q$["The compiler will refuse to compile it", "It leaks memory", "The memory is gone after the function returns, so using the pointer is undefined behaviour", "The value is automatically copied to the heap"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Local variables live on the stack and are invalid after the call. This is a dangling pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When must memmove be used instead of memcpy?$q$,null,$q$["When the data is not aligned", "When the source and destination memory areas may overlap", "When copying strings", "When copying more than 1 KB"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$memcpy has undefined behaviour for overlapping regions. memmove handles overlap correctly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the result of calling free on the same pointer twice?$q$,null,$q$["The program exits with an error code", "Undefined behaviour (often heap corruption)", "A compile error", "The second call is ignored safely"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Setting the pointer to NULL after free makes a second free(NULL) harmless.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens when a signed int overflows in C?$q$,null,$q$["The behaviour is undefined", "The program is terminated", "The result is saturated at INT_MAX", "It wraps around to the minimum value"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Unsigned overflow wraps, but signed overflow is undefined, and compilers may assume it never happens.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is wrong with this: char *s = "hello"; s[0] = 'H';$q$,null,$q$["Modifying a string literal is undefined behaviour", "char* cannot point to a string", "The literal is stored in a register", "Nothing, it is valid"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$String literals may be placed in read-only memory. Use char s[] = "hello"; for a modifiable copy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the restrict qualifier promise?$q$,null,$q$["That the pointer is aligned", "That the pointer is read-only", "That the pointer is not NULL", "That for the lifetime of the pointer, only it (or values derived from it) accesses that object"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The promise lets the compiler optimise more aggressively. Breaking it is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 10;
    printf("%d\n", x / 3 * 3);
    return 0;
}$q$,null,$q$["10.0", "3", "9", "10"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Integer division truncates: 10 / 3 = 3, and 3 * 3 = 9. Operators of equal precedence are evaluated left to right.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which function reads a line of text safely into a buffer in C?$q$,null,$q$["gets", "fgets", "scanf with %s", "readline"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$fgets takes the buffer size, so it cannot overflow the buffer. gets was removed from the language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator accesses a struct member through a pointer?$q$,null,$q$["::", "->", ".", "=>"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$p->x is shorthand for (*p).x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- cpp: 60 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator accesses a member through a pointer?$q$,null,$q$[".", "->", "&", "::"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$ptr->member is shorthand for (*ptr).member.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header is needed for cout?$q$,null,$q$["<stdio.h>", "<iostream>", "<conio.h>", "<stream>"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$cout is declared in iostream.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is sizeof(char) in C++?$q$,null,$q$["2", "4", "1", "8"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The standard defines sizeof(char) as exactly 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a constructor do?$q$,null,$q$["Initialises an object when it is created", "Declares a class", "Destroys the object", "Copies a pointer"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Constructors run automatically on object creation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which container offers average O(1) lookup by key?$q$,null,$q$["list", "map", "unordered_map", "vector"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$unordered_map is hash based; map is a balanced tree.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is a reference in C++?$q$,null,$q$["A pointer that can be null", "A new copy of an object", "An alias for an existing variable", "A macro"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$A reference must be bound at initialisation and cannot be reseated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword enables runtime polymorphism for a member function?$q$,null,$q$["static", "virtual", "inline", "friend"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$virtual functions are dispatched on the dynamic type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the new operator return?$q$,null,$q$["A pointer to the allocated object", "void", "A reference", "An int handle"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$new returns a typed pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does RAII stand for?$q$,null,$q$["Resource Acquisition Is Initialization", "Reference And Instance Initialisation", "Runtime Allocation Interface", "Random Access In Iterators"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Resources are tied to object lifetime and released in destructors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which smart pointer represents exclusive ownership?$q$,null,$q$["std::shared_ptr", "std::weak_ptr", "std::unique_ptr", "std::auto_ptr (modern)"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$unique_ptr cannot be copied, only moved.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Deleting a derived object through a base pointer whose destructor is NOT virtual results in:$q$,null,$q$["Correct cleanup", "A guaranteed exception", "Undefined behaviour", "A compile error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$The derived destructor may not run; the behaviour is undefined.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement about std::vector is true?$q$,null,$q$["It is a linked list", "It has a fixed size", "It keeps elements sorted", "Elements are stored contiguously and it grows dynamically"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Contiguous storage allows fast random access.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword introduces a template?$q$,null,$q$["typedef", "template", "macro", "generic"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$template<typename T> defines a generic function or class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are STL containers?$q$,null,$q$["map", "vector", "stack", "array_list"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,3,$q$array_list is not a C++ container.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which of these operators can be overloaded in C++?$q$,null,$q$["::", ".", "+", "[]"]$q$::jsonb,$q$[2, 3]$q$::jsonb,4,$q$The scope and member-access operators cannot be overloaded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$C++ supports operator overloading.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Most operators can be overloaded for user types.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A reference can be reassigned to refer to another object after initialisation.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Assignment to a reference assigns to the referred object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$A class with a pure virtual function is abstract.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Abstract classes cannot be instantiated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int a = 10; int &b = a; b++; cout << a;$q$,null,$q$["10", "11", "12", "An error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$b is an alias of a, so a becomes 11.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
cout << 7 / 2 << ' ' << 7 % 2;$q$,null,$q$["4 1", "3 1", "3.5 1", "3 0"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Integer division gives 3 and the remainder is 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
int x = 3; int y = x++ * 2; cout << y << ' ' << x;$q$,null,$q$["3 4", "8 4", "6 4", "6 3"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$x++ yields 3 (so y = 6) and then x becomes 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does int arr[3] = {1, 2, 3, 4}; fail to compile?$q$,null,$q$["It must use new", "arr is a reserved word", "Arrays cannot hold ints", "Too many initialisers for the array size"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Four values cannot fit in three elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$What is the bug?
int* p = new int[5];
delete p;$q$,null,$q$["p must be const", "Missing return statement", "Arrays allocated with new[] must be released with delete[]", "There is no bug"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Mismatched new[]/delete is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You return a large std::vector from a function and want to avoid copying it. What does modern C++ rely on?$q$,null,$q$["Move semantics / return value optimisation", "Passing a raw pointer", "Using global variables", "Making it static"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Moves and RVO transfer ownership without deep copies.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Nth Fibonacci number$q$,$q$Nth Fibonacci number$q$,null,null,3,$q$Iterate N times keeping the last two values.$q$,$q${"description": "Print the N-th Fibonacci number where F(0)=0 and F(1)=1.", "input_format": "A single integer N.", "output_format": "Print F(N).", "constraints": "0 <= N <= 40", "examples": [{"input": "10", "output": "55"}, {"input": "1", "output": "1"}]}$q$::jsonb,array['cpp'],$q${"lang": "cpp", "starter": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$10$q$,$q$55$q$,false,1),($q$1$q$,$q$1$q$,false,2),($q$0$q$,$q$0$q$,true,3),($q$25$q$,$q$75025$q$,true,4),($q$40$q$,$q$102334155$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C++$q$ and qq.text=$q$Nth Fibonacci number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Count primes up to N$q$,$q$Count primes up to N$q$,null,null,5,$q$Use the Sieve of Eratosthenes for speed.$q$,$q${"description": "Count how many prime numbers are less than or equal to N.", "input_format": "A single integer N.", "output_format": "Print the number of primes <= N.", "constraints": "1 <= N <= 100000", "examples": [{"input": "10", "output": "4"}, {"input": "2", "output": "1"}]}$q$::jsonb,array['cpp'],$q${"lang": "cpp", "starter": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$10$q$,$q$4$q$,false,1),($q$2$q$,$q$1$q$,false,2),($q$1$q$,$q$0$q$,true,3),($q$100$q$,$q$25$q$,true,4),($q$1000$q$,$q$168$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C++$q$ and qq.text=$q$Count primes up to N$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header declares std::cout?$q$,null,$q$["<cout>", "<stdio.h>", "<iostream>", "<io>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$iostream declares the standard stream objects cin, cout and cerr.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator is used with cout to send output?$q$,null,$q$["::", "<<", ">>", "<-"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$cout << value inserts the value into the output stream. >> is used with cin.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << 7 / 2 << endl;
}$q$,null,$q$["3.5", "3", "4", "2"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Both operands are int, so the division is an integer division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int a = 7;
    cout << a / 2.0 << endl;
}$q$,null,$q$["3.50", "3", "4", "3.5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Dividing by the double 2.0 makes the whole expression a double.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << (5 > 3) << endl;
}$q$,null,$q$["true", "1", "0", "5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A bool prints as 1 or 0 unless boolalpha is used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << boolalpha << (5 > 3) << endl;
}$q$,null,$q$["5 > 3", "yes", "true", "1"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$boolalpha makes bool values print as the words true and false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int x = 5;
    int &r = x;
    r = 10;
    cout << x << endl;
}$q$,null,$q$["5", "Error", "10", "15"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A reference is another name for x, so assigning to r changes x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword allocates an object on the heap?$q$,null,$q$["create", "malloc only", "alloc", "new"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$new allocates memory and runs the constructor. It must be paired with delete, or smart pointers should be used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the default access level of members in a class?$q$,null,$q$["protected", "public", "private", "It depends on the compiler"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$In a class members are private by default. In a struct they are public.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does :: mean in std::string?$q$,null,$q$["Pointer access", "Scope resolution: string is looked up inside namespace std", "Comparison", "Division"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The scope resolution operator selects a name from a namespace or class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the name of a class constructor?$q$,null,$q$["constructor", "init", "new", "The same as the class name"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A constructor has the class name and no return type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    string s = "hi";
    cout << s.size() << endl;
}$q$,null,$q$["2", "3", "1", "hi"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$size() returns the number of characters, excluding any terminator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    vector<int> v = {1, 2, 3};
    cout << v.size() << endl;
}$q$,null,$q$["3", "0", "2", "4"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The initializer list creates a vector with three elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does for (auto x : v) do?$q$,null,$q$["Copies v into x", "Visits each element of v in turn (a range-based for loop)", "Loops forever", "Declares a variable named auto"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Range-based for loops iterate over containers and arrays. Use auto& to avoid copying.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword makes a variable read-only after initialisation?$q$,null,$q$["readonly", "final", "const", "static"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$const prevents modification through that name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { virtual void f() { cout << "Base\n"; } virtual ~Base() {} };
struct Derived : Base { void f() override { cout << "Derived\n"; } };
int main() {
    Base *p = new Derived();
    p->f();
    delete p;
}$q$,null,$q$["Base Derived", "Nothing", "Base", "Derived"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$f is virtual, so the call is dispatched on the real object type at run time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { void f() { cout << "Base\n"; } virtual ~Base() {} };
struct Derived : Base { void f() { cout << "Derived\n"; } };
int main() {
    Base *p = new Derived();
    p->f();
    delete p;
}$q$,null,$q$["Both", "Derived", "Base", "Compile error"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Without virtual, the function is chosen from the static type of the pointer, which is Base.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    map<string, int> m;
    m["a"];
    cout << m.size() << endl;
}$q$,null,$q$["1", "undefined", "0", "Error"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$operator[] inserts a default-constructed value when the key is missing, so the map now has one entry.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
void f(int v) { v = 5; }
int x = 1;
int main() {
    f(x);
    cout << x << endl;
}$q$,null,$q$["5", "1", "0", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The parameter is a copy. Use int& to modify the caller's variable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << 5 / 2 << " " << 5 / 2.0 << endl;
}$q$,null,$q$["3 2.5", "2 2.5", "2.5 2.5", "2 2"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The first division has two ints and truncates. The second involves a double.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does RAII mean?$q$,null,$q$["Random access iterator interface", "Reference arguments are always initialised", "Run all initialisers immediately", "Resources are acquired in a constructor and released in the destructor"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Tying a resource to an object's lifetime guarantees cleanup even when exceptions occur.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does marking a member function const promise?$q$,null,$q$["It does not modify the object's visible state", "The function runs at compile time", "The function returns a constant", "The function cannot be overridden"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A const member function can be called on const objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct A { A() { cout << "a"; } ~A() { cout << "A"; } };
struct B { B() { cout << "b"; } ~B() { cout << "B"; } };
int main() {
    {
        A a;
        B b;
    }
}$q$,null,$q$["bBaA", "abBA", "abAB", "aAbB"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Objects are constructed in declaration order (a, b) and destroyed in reverse order (B, A).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { virtual void f() { cout << "Base\n"; } };
struct Derived : Base { void f() override { cout << "Derived\n"; } };
int main() {
    Base b = Derived();
    b.f();
}$q$,null,$q$["Nothing", "Compile error", "Derived", "Base"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Assigning a Derived to a Base object slices off the derived part, so the object really is a Base.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int x = 1;
    auto f = [x]() mutable { return ++x; };
    f();
    cout << f() << x << endl;
}$q$,null,$q$["31", "33", "11", "21"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The lambda keeps its own copy of x, which starts at 1. Each of the two calls increments that copy (to 2, then 3). The outer x stays 1, so the output is 3 followed by 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does std::move do?$q$,null,$q$["Casts its argument to an rvalue reference so a move can happen; it moves nothing itself", "Copies an object faster", "Deletes the original object", "Moves memory to a new address"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The actual move is done by the move constructor or move assignment that receives the rvalue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why can a std::unique_ptr not be copied?$q$,null,$q$["Because copying is slow", "Because it is const", "Because it holds an array", "Because it models sole ownership. Ownership can only be transferred with std::move"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Two unique_ptrs owning the same object would delete it twice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Two objects hold shared_ptr references to each other. What is the problem?$q$,null,$q$["They are destroyed twice", "The program does not compile", "A deadlock occurs", "A reference cycle: the counts never reach zero so they are never destroyed"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Break the cycle by making one of the links a weak_ptr.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why should the destructor of a polymorphic base class be virtual?$q$,null,$q$["Virtual destructors run faster", "Deleting a derived object through a base pointer would otherwise skip the derived destructor", "It is required for all classes", "So the class can be copied"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Without virtual, deleting through Base* is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$After calling push_back on a std::vector, what may happen to existing iterators?$q$,null,$q$["They always stay valid", "They are automatically updated", "They may be invalidated if the vector reallocates", "They point to the first element"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Reallocation moves the elements, so iterators, pointers and references to them become invalid.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When must you use dynamic_cast rather than static_cast between base and derived pointers?$q$,null,$q$["When removing const", "Never, they are identical", "When casting between int and double", "When you need a checked downcast at run time and the base is polymorphic"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$dynamic_cast returns nullptr (for pointers) if the object is not really of the target type. static_cast does no check.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the Rule of Five say?$q$,null,$q$["If a class needs a custom destructor, copy or move operations, it probably needs all five special functions defined", "A function should have five arguments at most", "Use at most five template parameters", "A class must have at most five members"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Destructor, copy constructor, copy assignment, move constructor and move assignment usually belong together.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does constexpr on a function mean?$q$,null,$q$["It can be evaluated at compile time when called with constant arguments", "It cannot be called at run time", "It is always inlined", "It has no side effects only by convention"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$constexpr functions can be used in constant expressions, such as array sizes, and also work at run time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A template is declared as template<class T> T add(T a, T b). What happens with add(1, 2.5)?$q$,null,$q$["It is converted to string", "Deduction fails because T would be both int and double", "It returns 3", "It returns 3.5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The deduced types conflict, so the call does not compile. add<double>(1, 2.5) works.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- java: 62 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword is used to inherit from a class?$q$,null,$q$["super", "inherits", "implements", "extends"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A class extends another class; implements is for interfaces.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the size of an int in Java?$q$,null,$q$["It depends on the operating system", "64 bits", "32 bits", "16 bits"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Java fixes the size of int at 32 bits on every platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method is the entry point of a Java program?$q$,null,$q$["run()", "init()", "public static void main(String[] args)", "start()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The JVM looks for this exact main signature.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which collection does not allow duplicate elements?$q$,null,$q$["ArrayList", "HashSet", "Vector", "LinkedList"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A Set keeps unique elements only.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the default value of an uninitialised int instance variable?$q$,null,$q$["null", "undefined", "0", "-1"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Numeric fields default to 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword makes a variable a constant that cannot be reassigned?$q$,null,$q$["final", "const", "constant", "static"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$final prevents reassignment; const is reserved but unused.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is method overloading?$q$,null,$q$["Same method name with different parameters in one class", "Hiding a field", "Calling a method twice", "Same signature redefined in a subclass"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Overloading differs by parameter list; overriding replaces behaviour in a subclass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which interface defines a custom ordering that lives outside the class being sorted?$q$,null,$q$["Sortable", "Comparator", "Orderable", "Comparable"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Comparable is the natural order inside the class; Comparator is external.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which exception is thrown when an array index is out of range?$q$,null,$q$["ArrayIndexOutOfBoundsException", "ClassCastException", "NullPointerException", "IllegalArgumentException"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Accessing an invalid index throws ArrayIndexOutOfBoundsException.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which statement about String in Java is true?$q$,null,$q$["Strings are primitives", "Strings cannot be compared", "Strings are immutable", "Strings are mutable"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Operations on a String create a new String object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the synchronized keyword provide?$q$,null,$q$["Compile-time checking", "Mutual exclusion on an object's monitor", "Automatic memory release", "Faster execution"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Only one thread at a time can hold the monitor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which statement about HashMap is true?$q$,null,$q$["It keeps keys sorted", "It keeps insertion order", "It allows one null key", "It is thread-safe"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$HashMap allows a single null key and is not synchronised.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which loop always executes its body at least once?$q$,null,$q$["for", "for-each", "do-while", "while"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$do-while checks the condition after the body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the type of the result of 5/2 when both operands are int?$q$,null,$q$["int with value 2", "float with value 2.0", "int with value 3", "double with value 2.5"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Integer division truncates the fractional part.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are valid access modifiers in Java?$q$,null,$q$["public", "protected", "internal", "private"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$internal belongs to C#, not Java.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are functional interfaces in java.util.function?$q$,null,$q$["Supplier", "Predicate", "Iterable", "Function"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,4,$q$Iterable is not in java.util.function and has more behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Java supports multiple inheritance of classes.$q$,null,null,$q$"false"$q$::jsonb,1,$q$A class can extend only one class; interfaces allow multiple inheritance of type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$An interface can contain default methods since Java 8.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Default methods let interfaces provide implementations.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$A finally block still runs if System.exit(0) is called inside try.$q$,null,null,$q$"false"$q$::jsonb,1,$q$System.exit stops the JVM before finally can run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
String a = "hi"; String b = new String("hi");
System.out.println(a == b);$q$,null,$q$["hi", "false", "Compile error", "true"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$== compares references; new String creates a distinct object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int x = 5;
System.out.println(x++ + ++x);$q$,null,$q$["10", "12", "13", "11"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$5 + 7: x++ gives 5 then ++x makes x 7.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does int n = 3.5; fail to compile?$q$,null,$q$["A semicolon is missing", "Possible lossy conversion from double to int", "n is a reserved word", "main is missing"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A double cannot be assigned to int without a cast.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$Two threads increment a shared counter and the final value is wrong. What is the best fix?$q$,null,$q$["Declare it static", "Use AtomicInteger or synchronise access", "Call Thread.sleep", "Use two counters"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Increment is not atomic; atomics or locks prevent lost updates.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of digits$q$,$q$Sum of digits$q$,null,null,3,$q$Repeatedly take n % 10 and divide n by 10, adding each digit.$q$,$q${"description": "Read a non-negative integer and print the sum of its digits.", "input_format": "A single integer N.", "output_format": "Print the sum of the digits of N.", "constraints": "0 <= N <= 10^9", "examples": [{"input": "123", "output": "6"}, {"input": "9", "output": "9"}]}$q$::jsonb,array['java'],$q${"lang": "java", "starter": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$123$q$,$q$6$q$,false,1),($q$9$q$,$q$9$q$,false,2),($q$1000$q$,$q$1$q$,true,3),($q$98765$q$,$q$35$q$,true,4),($q$0$q$,$q$0$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Java$q$ and qq.text=$q$Sum of digits$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Second largest distinct number$q$,$q$Second largest distinct number$q$,null,null,5,$q$Track the largest and second largest distinct values in one pass.$q$,$q${"description": "Print the second largest distinct value in a list.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print the second largest distinct integer.", "constraints": "2 <= n <= 1000. At least two distinct values exist.", "examples": [{"input": "5\n3 9 2 9 7", "output": "7"}, {"input": "4\n10 20 30 40", "output": "30"}]}$q$::jsonb,array['java'],$q${"lang": "java", "starter": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
3 9 2 9 7$q$,$q$7$q$,false,1),($q$4
10 20 30 40$q$,$q$30$q$,false,2),($q$3
5 5 4$q$,$q$4$q$,true,3),($q$6
-1 -5 -3 -1 -2 -9$q$,$q$-2$q$,true,4),($q$2
1 2$q$,$q$1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Java$q$ and qq.text=$q$Second largest distinct number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method signature is the standard entry point of a Java program?$q$,null,$q$["public void main(String args)", "public static int main()", "static void start(String[] args)", "public static void main(String[] args)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The JVM looks for a public static void method named main that takes a String array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword creates a new object?$q$,null,$q$["new", "create", "make", "alloc"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$new allocates the object and calls its constructor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(7 / 2);
    }
}
$q$,null,$q$["2", "3", "3.5", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Both operands are int, so the division is an integer division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String s = "Java";
        System.out.println(s.length());
    }
}
$q$,null,$q$["Java", "4", "3", "5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$length() returns the number of characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println("5" + 3);
    }
}
$q$,null,$q$["53", "Error", "5 3", "8"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$When one operand of + is a String, the other is converted and the two are concatenated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(5 + 3 + "x");
    }
}
$q$,null,$q$["8x", "x8", "53x", "5 3x"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The expression is evaluated left to right. 5 + 3 is added first to give 8, then 'x' is appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println('a' + 1);
    }
}
$q$,null,$q$["a1", "b", "98", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A char is promoted to int in arithmetic. 'a' is 97, so the result is the int 98.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        char c = 'a';
        c++;
        System.out.println(c);
    }
}
$q$,null,$q$["a1", "98", "b", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Incrementing a char moves to the next character code, so 'a' becomes 'b'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(10 == 10.0);
    }
}
$q$,null,$q$["10", "Error", "false", "true"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The int is promoted to double before the comparison, so the values are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these is NOT a primitive type in Java?$q$,null,$q$["boolean", "String", "char", "int"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$String is a class. The eight primitives are byte, short, int, long, float, double, char and boolean.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which package is imported automatically in every Java file?$q$,null,$q$["java.io", "java.lang", "java.base", "java.util"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$java.lang contains String, Math, System and other core classes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static int count;
    static boolean flag;
    public static void main(String[] args) throws Exception {
        System.out.println(count + " " + flag);
    }
}
$q$,null,$q$["null null", "0 0", "Error", "0 false"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Fields get default values: 0 for numbers, false for boolean and null for references.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        int[] a = new int[3];
        System.out.println(a.length + " " + a[0]);
    }
}
$q$,null,$q$["3 0", "2 0", "3 null", "0 0"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Array elements default to 0 for int. length is a field, not a method.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String a = "hi";
        String b = new String("hi");
        System.out.println((a == b) + " " + a.equals(b));
    }
}
$q$,null,$q$["false false", "false true", "true true", "true false"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$== compares references, and new String creates a separate object. equals compares the text.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        Integer x = 127, y = 127, p = 128, q = 128;
        System.out.println((x == y) + " " + (p == q));
    }
}
$q$,null,$q$["false true", "false false", "true false", "true true"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Integer values from -128 to 127 are cached, so == works there. Outside that range separate objects are created.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String s = "a";
        s.concat("b");
        System.out.println(s);
    }
}
$q$,null,$q$["ab", "null", "a", "b"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Strings are immutable. concat returns a new string, which was thrown away here.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        List<Integer> l = new ArrayList<>(List.of(10, 20, 30));
        l.remove(1);
        System.out.println(l);
    }
}
$q$,null,$q$["[20, 30]", "[10, 20]", "[10, 30]", "[10, 20, 30]"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$With an int argument, remove(int index) is chosen, so the element at index 1 (20) is removed. remove(Integer.valueOf(1)) would remove by value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static String f() {
        try { return "try"; }
        finally { System.out.print("finally "); }
    }
    public static void main(String[] args) throws Exception {
        System.out.println(f());
    }
}
$q$,null,$q$["try finally", "try", "finally", "finally try"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The finally block runs before the method returns, so its output comes first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What happens if you try to create an object of an abstract class with new?$q$,null,$q$["It creates an empty object", "It does not compile", "It calls the first subclass", "It compiles but fails at run time"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$An abstract class is incomplete, so it can only be instantiated through a concrete subclass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the final keyword do on a method?$q$,null,$q$["The method cannot be called twice", "The method cannot be overridden", "The method must be static", "The method is run last"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$final on a class prevents inheritance, on a variable prevents reassignment, and on a method prevents overriding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        long x = Integer.MAX_VALUE + 1;
        System.out.println(x);
    }
}
$q$,null,$q$["2147483647", "0", "2147483648", "-2147483648"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The addition is done in int and overflows before the result is widened to long.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(1 + 2 + "" + 1 + 2);
    }
}
$q$,null,$q$["33", "3 12", "1212", "312"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$1 + 2 is evaluated first as numbers (3). Once a String is involved the remaining operands are appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(Math.round(-2.5) + " " + Math.round(2.5));
    }
}
$q$,null,$q$["-2 2", "-3 3", "-2 3", "-3 2"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Math.round rounds halves towards positive infinity, so -2.5 becomes -2 and 2.5 becomes 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        new X();
    }
}
class X {
    static { System.out.print("S"); }
    { System.out.print("I"); }
    X() { System.out.print("C"); }
}$q$,null,$q$["SIC", "SCI", "CIS", "ISC"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The static initialiser runs once when the class loads, then the instance initialiser, then the constructor body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static void f(Object o) { System.out.println("Object"); }
    static void f(String s) { System.out.println("String"); }
    public static void main(String[] args) throws Exception {
        f(null);
    }
}
$q$,null,$q$["Compile error", "Object", "String", "NullPointerException"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$The compiler picks the most specific applicable overload, and String is more specific than Object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    @SuppressWarnings("finally")
    static int f() {
        try { return 1; }
        finally { return 2; }
    }
    public static void main(String[] args) throws Exception {
        System.out.println(f());
    }
}
$q$,null,$q$["3", "2", "Compile error", "1"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A return in finally overrides the value returned from try. It is considered bad practice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        List<Integer> l = new ArrayList<>(List.of(1, 2, 3));
        try {
            for (Integer i : l) l.remove(i);
        } catch (Exception e) {
            System.out.println(e.getClass().getSimpleName());
        }
    }
}
$q$,null,$q$["No output", "IndexOutOfBoundsException", "ConcurrentModificationException", "NullPointerException"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Removing from a list while iterating it with a for-each loop makes the iterator detect the change and fail fast.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        try (R a = new R("A"); R b = new R("B")) {
            System.out.print("body ");
        }
    }
}
class R implements AutoCloseable {
    String n;
    R(String n) { this.n = n; }
    public void close() { System.out.print("close" + n + " "); }
}$q$,null,$q$["body closeA closeB", "body closeB closeA", "closeA closeB body", "body"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Resources are closed in the reverse order of their creation, after the body has run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(new ArrayList<String>().getClass() == new ArrayList<Integer>().getClass());
    }
}
$q$,null,$q$["null", "false", "Compile error", "true"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Type parameters are erased at run time, so both lists are plain ArrayList objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(IntStream.rangeClosed(1, 5).filter(i -> i % 2 == 1).sum());
    }
}
$q$,null,$q$["6", "9", "15", "5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The odd numbers 1, 3 and 5 are summed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What must be true for objects used as HashMap keys?$q$,null,$q$["They must be Strings", "They must implement Comparable", "Equal objects must return the same hashCode", "They must be immutable by language rules"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$If a.equals(b) is true, a.hashCode() must equal b.hashCode(). Otherwise lookups fail.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which collection allows a null key?$q$,null,$q$["ConcurrentHashMap", "Hashtable", "TreeMap with natural ordering", "HashMap"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$HashMap permits one null key. Hashtable and ConcurrentHashMap reject null keys, and TreeMap with natural order throws on null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the volatile keyword guarantee for a field?$q$,null,$q$["Mutual exclusion", "Atomic increments", "That the field is final", "Writes by one thread become visible to other threads, and reads are not cached"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$volatile gives visibility and ordering but not atomicity, so count++ on a volatile field is still not thread-safe.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does synchronized on an instance method lock on?$q$,null,$q$["The object the method is called on (this)", "The method's code", "Nothing, it is only a hint", "The class object"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Two threads calling synchronized instance methods on the same object are serialised.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a variable whose value cannot be changed after it is assigned?$q$,null,$q$["static", "immutable", "final", "const"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A final variable can be assigned once. const is a reserved word in Java but is not used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement ends a loop immediately?$q$,null,$q$["stop", "end", "exit", "break"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$break leaves the nearest enclosing loop or switch. continue skips to the next iteration.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method compares the contents of two strings?$q$,null,$q$["equals", "==", "same", "compareRef"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$== compares references. equals compares the characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- python: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword defines a function in Python?$q$,null,$q$["fun", "func", "function", "def"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Functions are created with def.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What type does 3 / 2 produce in Python 3?$q$,null,$q$["int", "double", "decimal", "float"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$/ always produces a float; // is floor division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these data types is immutable?$q$,null,$q$["tuple", "dict", "set", "list"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Tuples cannot be changed after creation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does len({1, 2, 2, 3}) return?$q$,null,$q$["3", "4", "2", "It raises an error"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A set removes duplicates, leaving 1, 2 and 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which list method adds an item to the end?$q$,null,$q$["push", "insert_end", "add", "append"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$append adds one item at the end.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the // operator do?$q$,null,$q$["Raises to a power", "Float division", "Comments the line", "Floor division"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$// divides and rounds down.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does list(range(2, 8, 2)) produce?$q$,null,$q$["[2, 4, 6, 8]", "[2, 4, 6]", "[2, 3, 4, 5, 6, 7]", "[4, 6, 8]"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$range stops before 8 and steps by 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement creates a dictionary?$q$,null,$q$["d = {'a': 1}", "d = ('a': 1)", "d = <'a': 1>", "d = ['a': 1]"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Curly braces with key: value pairs make a dict.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a decorator do?$q$,null,$q$["Creates a thread", "Wraps a function to extend its behaviour", "Imports a module", "Defines a class"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A decorator takes a function and returns a new function.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the GIL do in CPython?$q$,null,$q$["Collects garbage", "Allows true parallel threads", "Compiles code to machine code", "Lets only one thread execute Python bytecode at a time"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The Global Interpreter Lock limits CPU-bound threading.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the best way to open a file so it is always closed?$q$,null,$q$["f.open(path)", "f = open(path) and hope", "Use eval", "with open(path) as f:"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The with statement closes the file even on errors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does *args collect in a function definition?$q$,null,$q$["A dictionary", "Extra positional arguments as a tuple", "Keyword arguments", "A set"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$*args gathers any extra positional arguments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the average time complexity of x in some_set?$q$,null,$q$["O(log n)", "O(1)", "O(n)", "O(n log n)"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Sets are hash based, so membership is constant time on average.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these types are mutable?$q$,null,$q$["str", "tuple", "dict", "list"]$q$::jsonb,$q$[2, 3]$q$::jsonb,3,$q$Lists and dictionaries can be changed in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which statements about generators are true?$q$,null,$q$["They produce values lazily", "They store all values in memory", "They use yield", "They can be iterated only once"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,4,$q$Generators yield one value at a time and are exhausted after one pass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Python uses indentation to define code blocks.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Indentation is part of the syntax.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A Python list must contain items of the same type.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Lists can mix types.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$is compares identity while == compares values.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Two equal lists are == but not necessarily the same object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
print([1, 2, 3][-1])$q$,null,$q$["3", "1", "An error", "-1"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Index -1 is the last element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
print('ab' * 2 + 'c')$q$,null,$q$["An error", "ab2c", "abc", "ababc"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$'ab' * 2 repeats the string, then 'c' is appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
def f(x, l=[]):
    l.append(x)
    return l
f(1)
print(f(2))$q$,null,$q$["[1, 2]", "[2]", "[1]", "An error"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The default list is created once and shared across calls.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$print('Total: ' + 5) raises an error. What is the fix?$q$,null,$q$["Use +=", "Use int('Total')", "Use str(5) or an f-string", "Remove print"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Strings and ints cannot be added without conversion.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You must process a 5 GB text file with little memory. Which approach is best?$q$,null,$q$["Call readlines()", "Iterate over the file object line by line", "Call read() and split it", "Load it with eval"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Iterating a file reads lazily, one line at a time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Count vowels$q$,$q$Count vowels$q$,null,null,3,$q$Loop over the characters and count those in the vowel set.$q$,$q${"description": "Count the vowels (a, e, i, o, u, ignoring case) in a line of text.", "input_format": "A single line of text.", "output_format": "Print the number of vowels.", "constraints": "1 <= length <= 1000", "examples": [{"input": "Hello World", "output": "3"}, {"input": "PYTHON", "output": "1"}]}$q$::jsonb,array['python'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$Hello World$q$,$q$3$q$,false,1),($q$PYTHON$q$,$q$1$q$,false,2),($q$aeiou AEIOU$q$,$q$10$q$,true,3),($q$rhythm$q$,$q$0$q$,true,4),($q$Programming is fun$q$,$q$5$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Python$q$ and qq.text=$q$Count vowels$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Balanced brackets$q$,$q$Balanced brackets$q$,null,null,5,$q$Push openers on a stack and match each closer with the top of the stack.$q$,$q${"description": "Check whether a string of brackets ()[]{} is balanced.", "input_format": "A single line containing only ( ) [ ] { }.", "output_format": "Print YES if balanced, otherwise NO.", "constraints": "1 <= length <= 1000", "examples": [{"input": "{[()]}", "output": "YES"}, {"input": "([)]", "output": "NO"}]}$q$::jsonb,array['python'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q${[()]}$q$,$q$YES$q$,false,1),($q$([)]$q$,$q$NO$q$,false,2),($q$((()))$q$,$q$YES$q$,true,3),($q$((($q$,$q$NO$q$,true,4),($q${[}]$q$,$q$NO$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Python$q$ and qq.text=$q$Balanced brackets$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(type(5))$q$,null,$q$["number", "int", "<class 'int'>", "<type 'int'>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$type() returns the class of the object, which Python 3 prints as <class 'int'>.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(len('hello'))$q$,null,$q$["hello", "5", "6", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$len() counts the characters in a string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which symbol starts a single-line comment in Python?$q$,null,$q$["--", "#", "//", "/*"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Everything after # on a line is ignored. Python has no /* */ comments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(7 // 2)$q$,null,$q$["4", "2", "3.5", "3"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$// is floor division, so 7 // 2 is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(2 ** 3)$q$,null,$q$["8", "6", "23", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$** is the exponent operator, so 2 ** 3 is 8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print('ab' * 3)$q$,null,$q$["ab3", "ababab", "aaabbb", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Multiplying a string by an integer repeats it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword defines a function?$q$,null,$q$["define", "function", "def", "fn"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A function is created with def name(parameters):.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(bool([]))$q$,null,$q$["None", "True", "False", "[]"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$An empty list is falsy, so bool([]) is False.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print([1, 2, 3][-1])$q$,null,$q$["2", "3", "1", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A negative index counts from the end, so -1 is the last element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which built-in function reads a line of text typed by the user?$q$,null,$q$["input", "get", "read", "scanf"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$input(prompt) returns what the user typed as a string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(10 / 4)$q$,null,$q$["2.0", "2", "3", "2.5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$/ is true division and always returns a float in Python 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print('Hello'[1])$q$,null,$q$["Hello", "H", "l", "e"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Indexes start at 0, so index 1 is the second character.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which list method adds an item to the end of the list?$q$,null,$q$["append", "add", "push", "insert_end"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$list.append(x) adds x at the end. insert() needs a position.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(len({1, 2, 2, 3}))$q$,null,$q$["2", "4", "3", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A set keeps only unique values, so {1, 2, 2, 3} has 3 elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print([x * x for x in range(4)])$q$,null,$q$["[0, 2, 4, 6]", "[0, 1, 2, 3]", "[1, 4, 9, 16]", "[0, 1, 4, 9]"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$range(4) gives 0 to 3, and each value is squared.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(sorted('bca'))$q$,null,$q$["['b', 'c', 'a']", "abc", "['a', 'b', 'c']", "('a', 'b', 'c')"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$sorted() always returns a list, here of single characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

d = {'a': 1}
print(d.get('b', 0))$q$,null,$q$["1", "0", "KeyError", "None"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$dict.get returns the default (0) instead of raising KeyError when the key is missing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print('a,b,c'.split(','))$q$,null,$q$["a b c", "('a', 'b', 'c')", "['a,b,c']", "['a', 'b', 'c']"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$split(',') breaks the string at each comma and returns a list.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(list(enumerate('ab', start=1)))$q$,null,$q$["[(0, 'a'), (1, 'b')]", "{1: 'a', 2: 'b'}", "[('a', 1), ('b', 2)]", "[(1, 'a'), (2, 'b')]"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$enumerate pairs a counter with each item. start=1 begins counting at 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

def f(a, l=[]):
    l.append(a)
    return l

f(1)
print(f(2))$q$,null,$q$["[2]", "[]", "[1, 2]", "[1]"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The default list is created once, when the function is defined, and shared by every call that omits it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

def f():
    try:
        return 'try'
    finally:
        print('finally', end=' ')
print(f())$q$,null,$q$["finally try", "try", "finally", "try finally"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The finally block runs before the function actually returns, so 'finally ' is printed first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(any([0, '', None]), all([]))$q$,null,$q$["True True", "False True", "True False", "False False"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$any() is False when nothing is truthy. all() of an empty sequence is True.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

a = [1, 2]
b = a
b.append(3)
print(a)$q$,null,$q$["[3]", "[1, 2]", "[1, 2, 3]", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$a and b name the same list, so changes through b are visible through a.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

a = [1]
b = [1]
print(a == b, a is b)$q$,null,$q$["False True", "False False", "True False", "True True"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$== compares values and is compares identity. The two lists are equal but separate objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(round(2.5), round(3.5))$q$,null,$q$["3 3", "2 3", "3 4", "2 4"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Python rounds halves to the nearest even number (banker's rounding), so 2.5 becomes 2 and 3.5 becomes 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(bool('False'))$q$,null,$q$["False", "True", "None", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Any non-empty string is truthy, whatever it says.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(divmod(-7, 2))$q$,null,$q$["(-3, -1)", "(-4, -1)", "(-4, 1)", "(-3, 1)"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Floor division rounds towards minus infinity, so -7 // 2 is -4 and the remainder is -7 - (-4 * 2) = 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print({1, 2} | {2, 3}, {1, 2} & {2, 3})$q$,null,$q$["{1, 2, 3} {2}", "{1, 3} {2}", "{2} {1, 2, 3}", "{1, 2} {2, 3}"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$| is union and & is intersection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

fs = [lambda: i for i in range(3)]
print([f() for f in fs])$q$,null,$q$["[2, 2, 2]", "[0, 1, 2]", "[3, 3, 3]", "[0, 0, 0]"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Each lambda looks up i when it is called, after the loop ended with i = 2 (late binding).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

g = (x for x in range(3))
print(sum(g), sum(g))$q$,null,$q$["3 0", "3 3", "0 0", "3 6"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$A generator can be consumed only once. The second sum() sees an exhausted generator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

def deco(fn):
    def wrapper(*a, **k):
        return fn(*a, **k)
    return wrapper

@deco
def hello():
    pass

print(hello.__name__)$q$,null,$q$["wrapper", "hello", "None", "deco"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Without functools.wraps the decorated function is replaced by wrapper and loses its original name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

def f(a, *b, c=0):
    return (a, b, c)

print(f(1, 2, 3, c=4))$q$,null,$q$["(1, [2, 3], 4)", "(1, 2, 3, 4)", "(1, (2, 3), 4)", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Extra positional arguments are collected into the tuple b. c can only be given by keyword.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

class A:
    x = []

a = A()
b = A()
a.x.append(1)
print(b.x)$q$,null,$q$["Error", "[]", "[1]", "None"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$x is a class attribute shared by all instances, so the append is visible through b.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the Global Interpreter Lock (GIL) in CPython do?$q$,null,$q$["Lets only one thread execute Python bytecode at a time within a process", "Locks global variables against change", "Makes all code run on one CPU core of the machine", "Prevents any use of threads"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The GIL means CPU-bound threads do not run in parallel. I/O-bound threads and multiple processes still help.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword catches an exception in Python?$q$,null,$q$["handle", "except", "catch", "rescue"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$try: ... except ValueError: ... is the structure. A finally block always runs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator checks whether a value is in a list?$q$,null,$q$["includes", "contains", "has", "in"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$3 in [1, 2, 3] is True.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- csharp: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a compile-time constant in C#?$q$,null,$q$["const", "final", "static", "readonly"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$const values are fixed at compile time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the entry point of a C# console application?$q$,null,$q$["Program()", "Start()", "The Main method", "Run()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Execution begins in Main.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which type stores true or false values?$q$,null,$q$["bit", "Boolean only", "flag", "bool"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$bool is the alias of System.Boolean.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the base class of all types in C#?$q$,null,$q$["System.Type", "Base", "System.Object", "Root"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Every type derives from object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword allows a method to be overridden in a derived class?$q$,null,$q$["virtual", "abstract only", "override", "new"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The derived class then uses override.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a using statement guarantee for an IDisposable object?$q$,null,$q$["A new thread starts", "Dispose is called when the block ends", "The object is garbage collected immediately", "The object is locked"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$using wraps try/finally with Dispose.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which collection type is generic and type safe?$q$,null,$q$["Hashtable", "Array", "List<T>", "ArrayList"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$List<T> stores items of one declared type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does LINQ stand for?$q$,null,$q$["Logic In Queue", "Language Integrated Query", "Linked Index Query", "Low-level Input Query"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$LINQ queries collections using C# syntax.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the main difference between a struct and a class in C#?$q$,null,$q$["A class is a value type", "A struct is a value type and a class is a reference type", "A struct is always faster", "There is no difference"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Structs are copied by value; classes by reference.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is async/await mainly used for?$q$,null,$q$["Writing non-blocking asynchronous code", "Manual memory layout", "Faster compilation", "Multiple inheritance"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$await frees the thread while an operation completes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which operator provides a default when a value is null?$q$,null,$q$["?:", "??", "=>", "::"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$a ?? b returns b if a is null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does string? mean with nullable reference types enabled?$q$,null,$q$["The string may be null", "A raw string literal", "The string is optional in a method", "A question string"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The ? marks the reference as nullable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword prevents a class from being inherited?$q$,null,$q$["private", "final", "static readonly", "sealed"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$sealed classes cannot be subclassed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are value types in C#?$q$,null,$q$["enum types", "int", "struct types", "string"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,3,$q$string is a reference type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are valid C# access modifiers?$q$,null,$q$["friend", "public", "internal", "protected"]$q$::jsonb,$q$[1, 2, 3]$q$::jsonb,4,$q$friend is a C++ concept.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$C# is a statically typed language.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Types are checked at compile time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A C# interface can contain instance fields.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Interfaces cannot declare instance fields.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$string is a reference type that behaves immutably.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Changing a string creates a new instance.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
Console.WriteLine(7 / 2);$q$,null,$q$["3", "3.5", "3.0", "4"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Both operands are int, so integer division is used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int? x = null; Console.WriteLine(x ?? 9);$q$,null,$q$["9", "0", "An error", "null"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The null-coalescing operator supplies 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
var l = new List<int>{1,2,3}; Console.WriteLine(l.Where(n => n > 1).Count());$q$,null,$q$["0", "3", "1", "2"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Two elements (2 and 3) pass the filter.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does int x = "5"; fail?$q$,null,$q$["The new keyword is missing", "var must be used", "x is reserved", "A string cannot be implicitly converted to int"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Use int.Parse("5") to convert.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A desktop app freezes while waiting for a web request made synchronously. What is the fix?$q$,null,$q$["Add more RAM", "Use goto", "Make the call async and await it", "Call Thread.Sleep"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Awaiting keeps the UI thread responsive.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Reverse the words$q$,$q$Reverse the words$q$,null,null,3,$q$Split the line, reverse the array and join it again.$q$,$q${"description": "Print the words of a sentence in reverse order.", "input_format": "One line of words separated by single spaces.", "output_format": "Print the words in reverse order separated by single spaces.", "constraints": "1 <= length <= 1000", "examples": [{"input": "I love coding", "output": "coding love I"}, {"input": "hello", "output": "hello"}]}$q$::jsonb,array['csharp'],$q${"lang": "csharp", "starter": "using System;\n\nclass Program {\n    static void Main() {\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$I love coding$q$,$q$coding love I$q$,false,1),($q$hello$q$,$q$hello$q$,false,2),($q$one two three four$q$,$q$four three two one$q$,true,3),($q$The quick brown fox$q$,$q$fox brown quick The$q$,true,4),($q$C sharp is fun$q$,$q$fun is sharp C$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C#$q$ and qq.text=$q$Reverse the words$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Anagram check$q$,$q$Anagram check$q$,null,null,5,$q$Lower-case both words, sort their letters and compare.$q$,$q${"description": "Two words are anagrams if they use the same letters the same number of times, ignoring case.", "input_format": "Two lines, each with one word.", "output_format": "Print Anagram or Not Anagram.", "constraints": "1 <= length <= 100", "examples": [{"input": "listen\nsilent", "output": "Anagram"}, {"input": "hello\nworld", "output": "Not Anagram"}]}$q$::jsonb,array['csharp'],$q${"lang": "csharp", "starter": "using System;\n\nclass Program {\n    static void Main() {\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$listen
silent$q$,$q$Anagram$q$,false,1),($q$hello
world$q$,$q$Not Anagram$q$,false,2),($q$Dusty
Study$q$,$q$Anagram$q$,true,3),($q$abc
abcd$q$,$q$Not Anagram$q$,true,4),($q$aabb
abab$q$,$q$Anagram$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C#$q$ and qq.text=$q$Anagram check$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a variable whose type is inferred by the compiler?$q$,null,$q$["auto", "var", "let", "dynamic only"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$var infers a static type from the initialiser at compile time, for example var n = 5; is an int.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword prevents a field from being changed after construction?$q$,null,$q$["static", "const only", "readonly", "sealed"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$readonly fields can be assigned in a declaration or constructor. const values must be compile-time constants.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the result of the expression 7 / 2 when both operands are int?$q$,null,$q$["4", "3.5", "2", "3"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Dividing two ints performs integer division and discards the remainder.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which type represents a true or false value?$q$,null,$q$["boolean", "bit", "Boolean only", "bool"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$bool is the C# keyword for System.Boolean.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement is used to handle exceptions?$q$,null,$q$["check ... handle", "using ... end", "try ... catch", "if ... else"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Code that may throw goes in try, and the matching exception type is handled in catch.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you write a single-line comment in C#?$q$,null,$q$["# comment", "' comment", "// comment", "-- comment"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$C# uses // for line comments and /* */ for block comments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method is the entry point of a console application with a Main method?$q$,null,$q$["void Run()", "static void Main(string[] args)", "public void Start()", "static void Init()"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The runtime looks for a static Main. Newer templates may use top-level statements that the compiler wraps in Main.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these is a value type?$q$,null,$q$["int", "string", "class instance", "object"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$int is a struct. string and classes are reference types.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the default value of an uninitialised int field?$q$,null,$q$["-1", "0", "null", "undefined"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Numeric fields are zero-initialised. Reference-type fields default to null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator concatenates two strings?$q$,null,$q$["<<", "+", "&&", "||"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The + operator joins strings. String interpolation with $"..." is often clearer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword is used to inherit from a base class?$q$,null,$q$[": (colon)", "inherits", "extends", "implements only"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$C# writes class Dog : Animal. The colon is also used for interfaces.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which access modifier makes a member visible only inside its own class?$q$,null,$q$["private", "public", "protected", "internal"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$private is the most restrictive. Members are private by default in a class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which collection stores items in a resizable list with index access?$q$,null,$q$["Hashtable", "Array only", "Stack<T>", "List<T>"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$List<T> grows as items are added and supports indexing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword creates an instance of a class?$q$,null,$q$["new", "instance", "make", "create"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$var p = new Person(); calls the constructor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does string interpolation look like in C#?$q$,null,$q$["$\"Hello {name}\"", "f\"Hello {name}\"", "\"Hello \" % name", "\"Hello ${name}\""]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A $ before the string lets you put expressions inside braces.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does LINQ's Where do?$q$,null,$q$["Sorts a sequence", "Filters a sequence by a condition", "Counts the items", "Transforms each item"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Where keeps the items for which the predicate returns true. Select transforms items.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When does a LINQ query such as list.Where(x => x > 5) actually run?$q$,null,$q$["When the list is created", "When the result is enumerated (deferred execution)", "At compile time", "At the line where it is written"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The query describes the work. ToList(), foreach or Count() cause it to execute.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is boxing?$q$,null,$q$["Converting a value type to object, which allocates it on the heap", "Converting an int to a string", "Wrapping code in a using block", "Putting a class in a struct"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Boxing copies the value into a heap object and can hurt performance in loops.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement about strings in C# is true?$q$,null,$q$["Strings cannot be compared with ==", "Strings are always null-terminated arrays", "Strings are immutable, so operations return new strings", "Strings are mutable value types"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Use StringBuilder for repeated concatenation in loops.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the virtual keyword on a method allow?$q$,null,$q$["The method to run asynchronously", "The method to be hidden from reflection", "A derived class can override it", "The method to be called without an object"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The derived class uses override. Without virtual, a method cannot be overridden.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is an interface in C#?$q$,null,$q$["A namespace", "A kind of struct", "A contract of members that implementing types must provide", "A class that can be instantiated"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$A class can implement many interfaces but inherits from only one base class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the purpose of the using statement with an IDisposable object?$q$,null,$q$["Dispose is called automatically when the block ends, even after an exception", "It prevents garbage collection", "It imports a namespace", "It makes the object static"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$using var f = File.OpenRead(path); closes the file at the end of the scope.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the await keyword do in an async method?$q$,null,$q$["Blocks the calling thread", "Pauses the method without blocking the thread until the task completes", "Cancels the task", "Starts a new thread"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$await returns control to the caller and resumes when the awaited task finishes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why is calling .Result or .Wait() on a Task inside a UI or ASP.NET (classic) context risky?$q$,null,$q$["It disables exceptions", "It makes the task run twice", "It can cause a deadlock by blocking the context the continuation needs", "It always throws"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Prefer await all the way. ConfigureAwait(false) helps in library code.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does async void do differently from async Task?$q$,null,$q$["It returns a value", "It is faster", "It runs on a separate thread", "Exceptions cannot be caught by the caller and the method cannot be awaited"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$async void is meant for event handlers only. Use Task for everything else.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the lock statement do?$q$,null,$q$["Allows only one thread at a time to run the block for the same lock object", "Makes a variable read-only", "Pauses all threads", "Encrypts data"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$lock(obj) uses a monitor. Avoid locking on this or on public objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Threading$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a struct best suited for?$q$,null,$q$["Shared state", "Large objects with inheritance", "Singletons", "Small, short-lived value types that are copied on assignment"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Structs are value types. Large structs are expensive to copy and cannot inherit from other structs or classes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When does the garbage collector free an object?$q$,null,$q$["Immediately when the variable goes out of scope", "Only when memory is full", "When it is no longer reachable from any root, at a time the GC chooses", "When Dispose is called"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Finalisation timing is non-deterministic, which is why IDisposable is used for resources like files and sockets.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does Span<T> make possible?$q$,null,$q$["Working with a slice of memory without copying or allocating", "Running code in parallel", "Streaming over a network", "Locking a region of an array"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Span<T> is a ref struct that lives on the stack, so it cannot be stored in a field of a normal class or captured by a lambda.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between IEnumerable<T> and IQueryable<T>?$q$,null,$q$["IEnumerable is only for arrays", "They are identical", "IQueryable cannot be filtered", "IQueryable builds an expression tree that a provider such as EF can translate, for example to SQL"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$With IEnumerable the filtering happens in memory after all data is loaded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the risk of enumerating the same LINQ query twice?$q$,null,$q$["The second enumeration returns nothing", "The work (and any side effects or database call) may be repeated", "It sorts the list", "It throws an exception"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Materialise with ToList() when the results are needed more than once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & LINQ$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the sealed modifier do on a class?$q$,null,$q$["Hides it from other assemblies", "Makes it thread-safe", "Makes it abstract", "Prevents other classes from inheriting from it"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Sealed classes cannot be base classes, which can also enable some compiler optimisations.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between an abstract class and an interface?$q$,null,$q$["An interface can hold fields", "There is no difference", "An abstract class can hold state and implementation, and a class inherits only one", "An abstract class can be instantiated"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Interfaces define contracts, though default interface methods allow limited implementation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which is the better way to rethrow an exception without losing the stack trace?$q$,null,$q$["return ex;", "throw ex;", "throw;", "throw new Exception(ex.Message);"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$throw; preserves the original stack trace. throw ex; resets it to the current line.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the null-conditional operator in user?.Name do?$q$,null,$q$["Returns null instead of throwing when user is null", "Throws when user is null", "Checks the type of user", "Converts null to an empty string"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The whole expression evaluates to null if the left side is null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the ?? operator do?$q$,null,$q$["Declares a nullable type", "Throws if null", "Compares two values", "Returns the left value if not null, otherwise the right value"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$name ?? "unknown" supplies a default for null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$C#$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- mongodb: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How does MongoDB store data?$q$,null,$q$["As BSON documents in collections", "As graph edges", "As rows in tables", "As key-only values"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Documents are JSON-like BSON objects grouped in collections.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method inserts a single document?$q$,null,$q$["addOne", "put", "insertOne", "append"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$db.users.insertOne({...}) adds one document.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method retrieves documents from a collection?$q$,null,$q$["select", "find", "query", "get"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$find accepts a filter and returns a cursor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which operator matches values greater than a given value?$q$,null,$q$["$greater", "$gt", "$above", "$more"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$$gt, $gte, $lt and $lte are the comparison operators.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which method updates the first document that matches a filter?$q$,null,$q$["updateOne", "setOne", "changeOne", "modify"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$updateOne(filter, update) changes a single document.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which operator sets a field to a new value in an update?$q$,null,$q$["$change", "$assign", "$put", "$set"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$$set changes or adds the named field.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the _id field?$q$,null,$q$["The collection name", "An optional description", "A unique identifier indexed by default", "A version number"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Every document has a unique _id.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which aggregation stage filters documents?$q$,null,$q$["$group", "$sort", "$match", "$project"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$$match works like a query filter inside a pipeline.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which command creates an ascending index on email?$q$,null,$q$["db.createIndex(users)", "db.users.createIndex({ email: 1 })", "db.users.addIndex(email)", "db.users.index('email')"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Index keys use 1 for ascending and -1 for descending.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you sort results by age in descending order?$q$,null,$q$[".sort({ age: -1 })", ".sort({ age: 'desc' })", ".sort({ age: 0 })", ".order({ age: -1 })"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A value of -1 means descending.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is sharding?$q$,null,$q$["Compressing data", "Distributing data across multiple servers", "Backing up data", "Encrypting data"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Sharding scales horizontally using a shard key.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Replication & Sharding$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a replica set?$q$,null,$q$["A copy of a collection", "A shard key", "A set of indexes", "A group of mongod instances holding the same data for redundancy"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$One primary accepts writes and secondaries replicate it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Replication & Sharding$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which aggregation stage groups documents by a key and computes totals?$q$,null,$q$["$skip", "$unwind", "$limit", "$group"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$$group uses accumulators like $sum and $avg.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which stage outputs one document per element of an array field?$q$,null,$q$["$split", "$expand", "$lookup", "$unwind"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$$unwind deconstructs arrays.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does $lookup do?$q$,null,$q$["Sorts documents", "Performs a left outer join with another collection", "Forces an index", "Runs text search"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$$lookup joins documents from a second collection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are valid BSON/MongoDB data types?$q$,null,$q$["ObjectId", "Date", "String", "Table"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,3,$q$MongoDB has no table type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are logical query operators?$q$,null,$q$["$or", "$and", "$sum", "$nor"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,4,$q$$sum is an aggregation accumulator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$MongoDB requires every document in a collection to have the same fields.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Collections are schema-flexible.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A MongoDB collection can store documents with different structures.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Documents in one collection may differ.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$MongoDB supports multi-document transactions on replica sets.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Transactions are available on replica sets and sharded clusters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Replication & Sharding$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$If 3 of 5 users have age >= 18, what does this return?
db.users.countDocuments({ age: { $gte: 18 } })$q$,null,$q$["3", "5", "0", "2"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$countDocuments counts only matching documents.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$With documents where n is 1, 2 and 3, what does this return?
db.c.aggregate([{ $group: { _id: null, t: { $sum: '$n' } } }])$q$,null,$q$["{ _id: null, t: 6 }", "6", "An error", "{ t: 3 }"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Grouping with _id null sums every document.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$db.users.find({ name: 'A' }).update(...) fails. What is the correct approach?$q$,null,$q$["Use updateOne or updateMany with a filter and update document", "Use rename", "Use insert", "Use drop"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Cursors have no update method; use collection update methods.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$A query on a collection with 10 million documents is slow. What is the first sensible step?$q$,null,$q$["Add more fields", "Remove _id", "Run explain() and add a suitable index", "Restart the server"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$explain shows whether the query scans the whole collection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$Orders contain items that are always read together with the order. What is the best design?$q$,null,$q$["Embed the items inside the order document", "Store items as one long string", "Store each item in a separate collection and join every time", "Create one collection per item"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Embedding avoids joins when data is accessed together.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','intermediate',$q$You need a unique email for every user. What should you do?$q$,null,$q$["Create a unique index on email", "Use sharding", "Use the _id field as email text", "Check emails in the browser"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A unique index makes MongoDB reject duplicates.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v1','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What kind of database is MongoDB?$q$,null,$q$["A document database that stores JSON-like (BSON) documents", "A key-value store only", "A relational database with tables and joins only", "A graph database"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Documents with flexible fields are grouped in collections.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is a collection in MongoDB?$q$,null,$q$["An index", "A group of documents, roughly like a table", "A single document", "A database server"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A collection holds documents that usually share a purpose but need not share a schema.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method finds documents matching a filter?$q$,null,$q$["find()", "get()", "query()", "select()"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$db.users.find({ age: { $gt: 18 } }) returns a cursor over matching documents.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which update operator changes the value of a field?$q$,null,$q$["$assign", "$set", "$put", "$change"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$db.users.updateOne({ _id: id }, { $set: { age: 30 } }) changes only the named field.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method deletes all documents matching a filter?$q$,null,$q$["removeAll()", "clear()", "dropMany()", "deleteMany()"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$deleteOne removes the first match and deleteMany removes every match.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator means greater than in a query filter?$q$,null,$q$["$greater", "$above", "$gt", "$more"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$$gt, $gte, $lt, $lte, $eq and $ne are the comparison operators.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which format does MongoDB use to store documents internally?$q$,null,$q$["CSV", "XML", "BSON", "YAML"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$BSON is a binary JSON-like format with extra types such as Date and ObjectId.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method sorts the results of a query?$q$,null,$q$["arrange()", "sort({ field: 1 })", "orderBy()", "order()"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$1 means ascending and -1 means descending.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does db.users.find({}).limit(5) return?$q$,null,$q$["The first five fields", "At most five documents", "Exactly five documents", "The count of documents"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$limit caps the number of documents the cursor returns.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does db.users.countDocuments({ active: true }) return?$q$,null,$q$["The size of the collection in bytes", "The number of indexes", "The number of documents that match the filter", "The list of matching documents"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$countDocuments runs a count with the filter. estimatedDocumentCount uses metadata and takes no filter.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which feature lets documents in one collection have different fields?$q$,null,$q$["Flexible schema", "Stored procedures", "Foreign keys", "Normalisation"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$MongoDB does not force a fixed schema, although validation rules can be added.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is an ObjectId?$q$,null,$q$["A 12-byte unique identifier used by default for _id", "An index name", "A collection name", "A password hash"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$It contains a timestamp, random value and counter, so ids are roughly time-ordered.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which tool is the official graphical interface for MongoDB?$q$,null,$q$["pgAdmin", "phpMyAdmin", "SQL Developer", "MongoDB Compass"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Compass lets you browse data, build queries and analyse indexes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which cloud service hosts MongoDB as a managed database?$q$,null,$q$["DynamoDB", "Redis Cloud", "Firebase", "MongoDB Atlas"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Atlas runs MongoDB clusters on cloud providers with backups and monitoring.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the aggregation pipeline?$q$,null,$q$["A way to copy a collection", "A sequence of stages that transform documents, such as $match then $group", "A replication method", "A list of indexes"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Each stage passes its output to the next.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which aggregation stage groups documents and computes totals such as sums?$q$,null,$q$["$limit", "$project", "$sort", "$group"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$$group uses an _id expression for the key and accumulators such as $sum and $avg.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why place $match as early as possible in a pipeline?$q$,null,$q$["It reduces the number of documents later stages must process and can use indexes", "It adds an index", "It sorts the data", "It is required first by syntax"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$An early $match filters data before heavier stages.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the upsert option do in an update?$q$,null,$q$["Deletes unmatched documents", "Creates an index", "Inserts a new document if no document matches the filter", "Updates every document"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$updateOne(filter, update, { upsert: true }) either updates the match or creates a document from the filter and update.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which operator adds an item to an array field?$q$,null,$q$["$append", "$add", "$insert", "$push"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$$push appends a value. $addToSet adds only when the value is not already present.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does { age: { $in: [20, 30] } } match?$q$,null,$q$["Documents without age", "Documents whose age is 20 or 30", "Documents with an array age", "Documents whose age is between 20 and 30"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$$in matches any value in the list.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does an index on a field do?$q$,null,$q$["Speeds up queries on that field at the cost of extra storage and slower writes", "Removes duplicates", "Makes the field unique automatically", "Encrypts the field"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Without an index MongoDB scans the whole collection (a COLLSCAN).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does explain() show for a query?$q$,null,$q$["The contents of the result", "The user permissions", "The server logs", "How MongoDB plans to run it, including whether an index is used"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Look for IXSCAN (index used) versus COLLSCAN (full scan) and compare documents examined with documents returned.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When is embedding related data in one document usually a good choice?$q$,null,$q$["When it changes constantly on its own", "When many documents must share it", "When the data is read together and the embedded part is small and bounded", "When the embedded data grows without limit"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Embedding gives single-read access. Unbounded arrays risk the 16 MB document limit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does $lookup do in an aggregation pipeline?$q$,null,$q$["Performs a left outer join with another collection", "Searches text", "Looks up an index", "Converts types"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$$lookup adds an array of matching documents from the foreign collection to each input document.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does $unwind do?$q$,null,$q$["Sorts an array", "Flattens a nested object", "Removes a field", "Outputs one document for each element of an array field"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$A document with a three-element array becomes three documents, each with one element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A compound index is on { a: 1, b: 1 }. Which query can use it efficiently for its filter?$q$,null,$q$["{ b: 6 } only", "{ a: 5, b: 6 }, and also { a: 5 }", "Only { b: 6, a: 5 } when written in that order", "Neither a nor b queries"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$An index can serve queries on a left prefix of its keys (a, or a and b). A query on b alone cannot use the index for seeking.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a covered query?$q$,null,$q$["A query inside a transaction", "A query answered entirely from an index without reading documents", "A query that is encrypted", "A query on a capped collection"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$It needs all filtered and returned fields to be in the index and _id excluded unless indexed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a TTL index do?$q$,null,$q$["Automatically removes documents after a set time", "Limits write speed", "Duplicates documents to another server", "Encrypts documents with a key"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$TTL indexes work on date fields and are useful for sessions and logs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Indexing & Performance$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In a replica set, which member accepts writes by default?$q$,null,$q$["The config server", "The arbiter", "Any secondary", "The primary"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Secondaries replicate from the primary. Reads from secondaries may be stale.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Replication & Sharding$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does sharding do?$q$,null,$q$["Spreads a large collection across several servers by a shard key", "Encrypts data", "Compresses data", "Copies data for backup"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$A poor shard key (for example a monotonically increasing value) can create a hot shard.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Replication & Sharding$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does write concern { w: 'majority' } mean?$q$,null,$q$["The write goes to a majority of collections", "The write is cached", "The write is faster", "The write is acknowledged only after a majority of replica set members have it"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$It protects against losing a write after a failover, at the cost of latency.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Consistency$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When are multi-document transactions most appropriate in MongoDB?$q$,null,$q$["For every single insert", "Only on standalone servers", "Instead of indexes", "When several documents must change atomically and a schema redesign cannot avoid it"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Single-document operations are already atomic, and good schema design often removes the need for transactions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Consistency$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the main risk of an array in a document that can grow without bound?$q$,null,$q$["Arrays cannot be indexed", "The document may exceed the 16 MB size limit and updates become slower", "It disables the _id index", "Arrays are not allowed in BSON"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Use a separate collection with references, or bucket documents, for unbounded data.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the $set operator on a nested path such as { 'address.city': 'Pune' } do?$q$,null,$q$["Replaces the whole address object", "Creates a new collection", "Fails because of the dot", "Updates only the city field inside the address subdocument"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Dot notation targets a field inside an embedded document without replacing the rest of it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Schema Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method returns only the first document that matches a filter?$q$,null,$q$["find().one", "first()", "findOne()", "get()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$findOne returns a single document or null, not a cursor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which mongosh command lists the databases on the server?$q$,null,$q$["show collections", "show dbs", "db.list()", "list databases"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$show dbs lists databases. show collections lists collections in the current database.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator combines conditions so that any one may be true?$q$,null,$q$["$any", "$or", "$either", "$union"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q${ $or: [ { a: 1 }, { b: 2 } ] } matches documents satisfying either clause.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$CRUD$q$,'igeeks-v3','validated' from domains d where d.name=$q$MongoDB$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- sql: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which SQL statement retrieves rows from a table?$q$,null,$q$["GET", "SELECT", "READ", "FETCH"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$SELECT is the query statement. The others are not SQL statements for reading rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause filters rows before they are returned?$q$,null,$q$["WHERE", "HAVING", "LIMIT", "GROUP BY"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$WHERE keeps only the rows that satisfy a condition. HAVING filters groups after aggregation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword removes duplicate rows from a result?$q$,null,$q$["UNIQUE", "DIFFERENT", "SINGLE", "DISTINCT"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$SELECT DISTINCT returns each distinct row once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause sorts the result?$q$,null,$q$["SORT BY", "ARRANGE", "ORDER BY", "GROUP BY"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$ORDER BY sorts ascending by default. Add DESC for descending order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator matches a text pattern such as names starting with 'A'?$q$,null,$q$["EQUALS", "MATCH", "LIKE", "SIMILAR"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$name LIKE 'A%' matches values that start with A. % stands for any run of characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does SELECT * FROM students return?$q$,null,$q$["Only the primary key column", "Every column of every row in students", "The number of rows", "Only the first row"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The asterisk means all columns, and with no WHERE clause all rows are returned.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement adds new rows to a table?$q$,null,$q$["APPEND", "ADD", "INSERT", "UPDATE"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$INSERT INTO table (columns) VALUES (...) creates rows. UPDATE changes existing ones.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement changes values in existing rows?$q$,null,$q$["ALTER", "MODIFY", "UPDATE", "CHANGE"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$UPDATE ... SET column = value [WHERE ...]. ALTER changes the table structure, not its rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which constraint uniquely identifies each row and does not allow NULL?$q$,null,$q$["PRIMARY KEY", "CHECK", "FOREIGN KEY", "DEFAULT"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A primary key is unique and not null. A table can have only one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp;$q$,null,$q$["1", "5", "6", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$COUNT(*) counts every row, and the table has 5 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select max(sal) from emp;$q$,null,$q$["60", "50", "70", "240"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$MAX returns the largest salary, 70.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(dept) from emp;$q$,null,$q$["2", "1", "4", "5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$COUNT(column) ignores NULLs. Ed has no department, so 4 values are counted.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(distinct dept) from emp;$q$,null,$q$["3", "4", "2", "5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The distinct non-null departments are IT and HR.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select sum(sal) from emp where dept = 'HR';$q$,null,$q$["160", "110", "40", "80"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Cy and Di earn 40 each, so the sum is 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select (avg(sal))::int from emp where dept = 'IT';$q$,null,$q$["120", "50", "60", "70"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The IT salaries are 50 and 70, whose average is 60.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp where dept is null;$q$,null,$q$["4", "1", "5", "0"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$NULL cannot be compared with =. IS NULL finds the one row with no department.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select name from emp order by sal desc limit 1;$q$,null,$q$["Ann", "Ed", "Bob", "Cy"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Sorting salaries from high to low and taking the first row gives Bob (70).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

select 1;
select 'a' || 'b';$q$,null,$q$["ba", "ab", "a b", "a||b"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$|| concatenates strings in standard SQL and PostgreSQL.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause groups rows so that aggregate functions work on each group?$q$,null,$q$["ORDER BY", "GROUP BY", "PARTITION", "COLLECT"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$GROUP BY puts rows with the same value in one group, and aggregates such as SUM are then computed per group.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp where sal >= 50;$q$,null,$q$["3", "2", "4", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Ann (50), Bob (70) and Ed (60) earn at least 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e join d on e.d_id = d.id;$q$,null,$q$["3", "5", "15", "4"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$An inner join drops Ed, who has no department. The other 4 employees match.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e left join d on e.d_id = d.id;$q$,null,$q$["3", "15", "4", "5"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A left join keeps every employee, including Ed, whose department columns are NULL.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select d.name from d left join e on e.d_id = d.id where e.id is null;$q$,null,$q$["HR", "Ops", "IT", "Ed"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A left join from d with e.id IS NULL finds departments with no employees. Only Ops has none.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from d cross join e;$q$,null,$q$["5", "15", "8", "3"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A cross join pairs every row of d (3) with every row of e (5): 15 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the difference between INNER JOIN and LEFT JOIN?$q$,null,$q$["LEFT JOIN also keeps left-table rows that have no match", "INNER JOIN keeps unmatched rows from both tables", "LEFT JOIN only returns matching rows", "There is no difference when a foreign key exists"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$INNER JOIN returns only matching pairs. LEFT JOIN adds the unmatched rows of the left table with NULLs on the right.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where d_id not in (select id from d where name = 'IT');$q$,null,$q$["3", "4", "5", "2"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$d_id values not in {1} are 2 and 2 (Cy, Di). Ed's d_id is NULL, so NULL NOT IN (...) is unknown and he is excluded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from (select sal from e union select sal from e) x;$q$,null,$q$["5", "2", "10", "4"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$UNION removes duplicates. The distinct salaries are 50, 70, 40 and 60. UNION ALL would keep all 10 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select string_agg(d.name, ',' order by d.name) from (select d_id from e group by d_id having sum(sal) > 100) x join d on d.id = x.d_id;$q$,null,$q$["IT,HR", "IT", "HR", "Ops"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$HAVING keeps groups whose salary total exceeds 100. IT totals 120 and HR totals 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select coalesce(max(sal), 0) from e where d_id = 3;$q$,null,$q$["NULL", "3", "0", "40"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$No employee is in department 3, so MAX is NULL. COALESCE replaces it with 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select sum(case when sal >= 50 then 1 else 0 end) from e;$q$,null,$q$["3", "4", "5", "2"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$CASE gives 1 for salaries 50, 70 and 60, so the sum is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where sal between 40 and 50;$q$,null,$q$["4", "3", "2", "1"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$BETWEEN is inclusive: 50, 40 and 40 qualify.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select name from e where name like '_o%';$q$,null,$q$["Ann", "Ed", "Cy", "Bob"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The pattern needs any single character, then 'o'. Only Bob matches.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

select 1;
select length('database');$q$,null,$q$["8", "9", "7", "4"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The word database has 8 characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

select 1;
select substring('database' from 1 for 4);$q$,null,$q$["datab", "base", "atab", "data"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$substring from position 1 for 4 characters returns 'data'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a foreign key constraint enforce?$q$,null,$q$["Referential integrity: values must exist in the referenced table", "That the column is never NULL", "That the column is unique", "That the column is indexed automatically in every database"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A foreign key prevents rows that point to a parent row that does not exist.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which normal form removes partial dependencies on part of a composite key?$q$,null,$q$["First normal form (1NF)", "Third normal form (3NF)", "Boyce-Codd normal form (BCNF)", "Second normal form (2NF)"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$2NF requires every non-key attribute to depend on the whole key, not just a part of it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which ACID property guarantees that committed data survives a system crash?$q$,null,$q$["Atomicity", "Consistency", "Durability", "Isolation"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Durability means a committed transaction is not lost, usually through write-ahead logging.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the main effect of adding an index to a column?$q$,null,$q$["Faster inserts and updates", "The column becomes unique", "The column can no longer contain NULL", "Faster lookups on that column at the cost of slower writes and more storage"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$An index is an extra structure that must be maintained on every write.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select string_agg(name, ',' order by sal desc, name) from (select * from e order by sal desc, name limit 2) x;$q$,null,$q$["Ann,Ed", "Bob,Ann", "Bob,Ed", "Ed,Bob"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The two highest salaries are Bob (70) and Ed (60).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where d_id is null or sal > 60;$q$,null,$q$["2", "5", "1", "3"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Ed has no department and Bob earns 70, so two rows satisfy the OR condition.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(r::text, ',' order by id) from (select id, rank() over (order by amt desc) r from s) x;$q$,null,$q$["5,2,3,3,1", "1,2,3,3,5", "4,2,3,3,1", "5,2,3,4,1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Amounts in descending order are 50, 30, 20, 20, 10. The two 20s tie for rank 3 and the next rank is 5, leaving a gap.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(r::text, ',' order by id) from (select id, dense_rank() over (order by amt desc) r from s) x;$q$,null,$q$["4,2,3,3,1", "1,2,3,3,4", "4,2,3,4,1", "5,2,3,3,1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$dense_rank does not leave gaps after ties, so the values 50, 30, 20, 10 rank 1, 2, 3, 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rt::text, ',' order by id) from (select id, sum(amt) over (order by id) rt from s) x;$q$,null,$q$["130,130,130,130,130", "10,40,60,80,130", "10,30,20,20,50", "10,40,60,80,100"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$With ORDER BY the window sum is a running total: 10, 10+30, +20, +20, +50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rn::text, ',' order by id) from (select id, row_number() over (partition by rep order by id) rn from s) x;$q$,null,$q$["1,1,1,1,1", "1,2,1,2,1", "2,1,2,1,1", "1,2,3,4,5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$row_number restarts at 1 for each rep: A has ids 1 and 2, B has 3 and 4, C has 5.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select sum(coalesce(p, 0)) from (select lag(amt) over (order by id) p from s) x;$q$,null,$q$["60", "80", "50", "130"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$lag gives NULL, 10, 30, 20, 20. Treating NULL as 0 the total is 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

select 1;
with recursive t(n) as (select 1 union all select n + 1 from t where n < 5) select sum(n) from t;$q$,null,$q$["15", "10", "120", "5"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The recursive CTE produces 1 to 5, whose sum is 15.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s a join s b on a.amt = b.amt and a.id < b.id;$q$,null,$q$["2", "1", "0", "4"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Only ids 3 and 4 share an amount (20). The a.id < b.id condition counts the pair once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s where amt > (select avg(amt) from s);$q$,null,$q$["1", "5", "3", "2"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The average is 26, so 30 and 50 are above it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s a where exists (select 1 from s b where b.rep = a.rep and b.id <> a.id);$q$,null,$q$["2", "3", "4", "5"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Reps A and B each have two rows, so each of their 4 rows has another row with the same rep. C has only one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rep, ',' order by rep) from (select rep from s group by rep having sum(amt) >= 50) x;$q$,null,$q$["B,C", "A,B,C", "A", "C"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The group totals are A = 40, B = 40, C = 50. Only C reaches 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from (select amt from s group by amt having count(*) > 1) x;$q$,null,$q$["2", "5", "0", "1"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Only the amount 20 appears more than once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select max(amt) filter (where rep = 'A') from s;$q$,null,$q$["50", "40", "10", "30"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$FILTER restricts the aggregate to rep A rows (10 and 30), so MAX is 30.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(distinct rep, ',' order by rep) from s;$q$,null,$q$["A", "A,B,C", "A,A,B,B,C", "C,B,A"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$DISTINCT removes duplicate reps before they are joined into one string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from (select id from s except select id from s where amt >= 30) x;$q$,null,$q$["3", "2", "5", "4"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$EXCEPT removes ids 2 and 5 (amounts 30 and 50) from the five ids, leaving 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select coalesce(nullif(amt, 20), -1) from s where id = 3;$q$,null,$q$["0", "NULL", "-1", "20"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$NULLIF returns NULL when the two values are equal. COALESCE then replaces that NULL with -1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which isolation level in the SQL standard prevents dirty reads, non-repeatable reads and phantom reads?$q$,null,$q$["READ COMMITTED", "READ UNCOMMITTED", "REPEATABLE READ", "SERIALIZABLE"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Only SERIALIZABLE rules out all three anomalies in the standard. (PostgreSQL's REPEATABLE READ also avoids phantoms, but the standard does not require it.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a deadlock?$q$,null,$q$["Two or more transactions each wait for a lock held by another, so none can proceed", "A failed COMMIT", "A table that cannot be read", "A transaction that runs for too long"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The database detects the cycle and aborts one transaction so the others can continue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a covering index?$q$,null,$q$["An index that contains every column a query needs, so the table need not be read", "A temporary index created by the optimiser", "An index shared by two tables", "An index on the primary key"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$With a covering index the engine can answer the query from the index alone (an index-only scan).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What extra rule does Boyce-Codd normal form (BCNF) add to third normal form?$q$,null,$q$["Every determinant must be a candidate key", "Every table must have a surrogate key", "No multi-valued attributes", "No transitive dependencies on non-key attributes only"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$BCNF requires that whenever X determines Y, X must be a superkey. It fixes rare anomalies that 3NF allows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A query filters WHERE LOWER(email) = 'a@x.com' on a large table with a normal index on email. Why might the index not be used?$q$,null,$q$["Indexes only work on numbers", "LOWER is not a SQL function", "The function on the column prevents a plain index lookup", "The index is too large"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$A plain index stores the raw values. Use an expression index on LOWER(email), or a case-insensitive type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does EXPLAIN ANALYZE show that EXPLAIN alone does not?$q$,null,$q$["Which users have access", "The table definitions", "The actual run times and row counts from executing the query", "The query's syntax errors"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$EXPLAIN shows the planned strategy. ANALYZE runs the query and reports real timings. Beware: it really executes data-changing statements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A column contains NULLs. What does WHERE col <> 5 do with rows where col is NULL?$q$,null,$q$["Treats NULL as 0", "Includes them, because NULL is not 5", "Raises an error", "Excludes them, because NULL <> 5 is unknown"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Comparisons with NULL give unknown, and WHERE keeps only rows where the condition is true. Use IS DISTINCT FROM to include them.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between UNION and UNION ALL?$q$,null,$q$["They are identical", "UNION removes duplicate rows and UNION ALL keeps them", "UNION needs the same table and UNION ALL does not", "UNION ALL removes duplicates and UNION keeps them"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$UNION ALL is faster because it skips the duplicate-removal step.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- dotnet: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does CLR stand for in .NET?$q$,null,$q$["Common Language Runtime", "Central Library Runtime", "Compiled Language Runner", "Common Library Resource"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The CLR executes managed code.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command-line tool builds and runs .NET projects?$q$,null,$q$["npm", "pip", "dotnet CLI", "gradle"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Use commands such as dotnet build and dotnet run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file extension does a C# project file use?$q$,null,$q$[".net", ".cproj", ".proj.json", ".csproj"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The .csproj file describes the project and its packages.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is middleware in ASP.NET Core?$q$,null,$q$["Components that handle requests and responses in a pipeline", "A database layer", "A compiler", "A UI library"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Each component can act before and after the next one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How do you register a scoped service in ASP.NET Core?$q$,null,$q$["new Service()", "builder.Services.AddScoped<T>()", "app.UseDI()", "services.Push()"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$AddScoped creates one instance per request.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which service lifetime creates one instance per HTTP request?$q$,null,$q$["Scoped", "Static", "Transient", "Singleton"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Singleton is one per app; Transient is one per injection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which ORM is commonly used with .NET?$q$,null,$q$["Hibernate", "Entity Framework Core", "Mongoose", "Sequelize"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$EF Core maps C# classes to database tables.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is appsettings.json used for?$q$,null,$q$["Compiling code", "Defining only routes", "Storing binaries", "Application configuration values"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Configuration is read into IConfiguration.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which attribute marks a controller action as an HTTP GET endpoint?$q$,null,$q$["[Get]", "[Read]", "[Fetch]", "[HttpGet]"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Attributes map actions to HTTP verbs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How does modern .NET differ from the old .NET Framework?$q$,null,$q$["It cannot build web apps", "It is cross-platform and open source", "It has no CLI", "It runs only on Windows"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Modern .NET runs on Windows, Linux and macOS.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does JIT compilation do?$q$,null,$q$["Links libraries", "Compiles IL to native machine code at runtime", "Obfuscates code", "Minifies files"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The JIT compiles methods on first use.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is Blazor used for?$q$,null,$q$["Only mobile apps", "Database migrations", "Building web UIs with C#", "Container hosting"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Blazor runs C# in the browser or on the server.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which command creates a new web API project?$q$,null,$q$["dotnet init web", "dotnet new webapi", "dotnet make api", "dotnet create api"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$dotnet new uses project templates.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does IActionResult represent in a controller?$q$,null,$q$["A DI container", "A view model only", "The result of an action such as Ok() or NotFound()", "A database row"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$It lets actions return different HTTP responses.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are .NET languages?$q$,null,$q$["C#", "Visual Basic", "Ruby (native .NET language)", "F#"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$Ruby is not a first-party .NET language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are built into ASP.NET Core?$q$,null,$q$["A SQL Server cluster manager", "Routing", "Dependency injection", "Configuration system"]$q$::jsonb,$q$[1, 2, 3]$q$::jsonb,4,$q$Cluster management is outside ASP.NET Core.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$.NET applications can run on Linux.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Modern .NET is cross-platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$Entity Framework migrations track changes to the database schema.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Migrations generate and apply schema changes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$Singleton services are created anew for every HTTP request.$q$,null,null,$q$"false"$q$::jsonb,1,$q$A singleton is created once for the app lifetime.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does a GET request to / return?
app.MapGet("/", () => "Hi");$q$,null,$q$["An empty page", "500", "Hi", "404"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The lambda's return value is the response body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this return?
new[]{3,1,2}.OrderBy(x => x).First()$q$,null,$q$["0", "3", "1", "2"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$OrderBy sorts ascending, so the first element is 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$A controller cannot be reached at /api/items. What is a likely cause?$q$,null,$q$["Using HTTP", "The wrong font", "Controllers are not mapped (missing MapControllers or route attribute)", "A missing CSS file"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Without MapControllers the endpoints are never registered.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$The app throws "Unable to resolve service for type X". What fixes it?$q$,null,$q$["Register X in the dependency injection container", "Rename the class", "Restart the computer", "Delete the bin folder"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$DI can only inject registered services.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','intermediate',$q$You must run logging code before every request. What should you add?$q$,null,$q$["A middleware", "A view", "A migration", "A database trigger"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Middleware runs in the request pipeline.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Average of numbers$q$,$q$Average of numbers$q$,null,null,3,$q$Add the numbers, divide by N and format with two decimals.$q$,$q${"description": "Compute the average of N numbers.", "input_format": "The first line has N. The second line has N space-separated numbers.", "output_format": "Print the average rounded to 2 decimal places.", "constraints": "1 <= N <= 1000", "examples": [{"input": "3\n1 2 3", "output": "2.00"}, {"input": "4\n10 20 30 45", "output": "26.25"}]}$q$::jsonb,array['csharp'],$q${"lang": "csharp", "starter": "using System;\n\nclass Program {\n    static void Main() {\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$3
1 2 3$q$,$q$2.00$q$,false,1),($q$4
10 20 30 45$q$,$q$26.25$q$,false,2),($q$1
7$q$,$q$7.00$q$,true,3),($q$5
1 2 2 3 3$q$,$q$2.20$q$,true,4),($q$2
-4 5$q$,$q$0.50$q$,true,5)) as v(i,o,h,p)
where d.name=$q$.NET$q$ and qq.text=$q$Average of numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command creates a new console project with the .NET CLI?$q$,null,$q$["dotnet start console", "dotnet new console", "dotnet init console", "dotnet create console"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$dotnet new <template> creates a project from a template.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which command runs a .NET project from source?$q$,null,$q$["dotnet run", "dotnet go", "dotnet exec project", "dotnet start"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$dotnet run builds if needed and then starts the application.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file describes a .NET project's target framework and package references?$q$,null,$q$["The .csproj file", "appsettings.json", "package.json", "Program.cs"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The project file is XML and lists the TargetFramework and PackageReference items.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which tool downloads packages for a .NET project?$q$,null,$q$["NuGet", "npm", "Maven", "pip"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$NuGet is the package manager for .NET. dotnet add package installs one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does the CLR do?$q$,null,$q$["Runs .NET code, manages memory and handles exceptions and security", "Hosts websites", "Stores data", "Compiles C# to machine code before deployment only"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The Common Language Runtime executes the intermediate language (IL), using a JIT compiler.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which pattern does ASP.NET Core MVC follow?$q$,null,$q$["Model-View-ViewModel", "Client-Server only", "Publish-Subscribe", "Model-View-Controller"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Controllers handle requests, models carry data and views render HTML.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file typically holds the application's startup code in a modern ASP.NET Core project?$q$,null,$q$["Main.config", "Startup.xml", "Program.cs", "App.cs only"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Since .NET 6 the minimal hosting model puts service registration and the middleware pipeline in Program.cs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which attribute marks a controller method as handling HTTP GET?$q$,null,$q$["[Get]", "[FromGet]", "[HttpGet]", "[Route.Get]"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$[HttpGet], [HttpPost] and similar attributes map methods to HTTP verbs and routes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which file normally stores application settings such as connection strings?$q$,null,$q$["appsettings.json", "config.js", "settings.ini", "web.xml"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The configuration system reads appsettings.json, environment variables and other providers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does app.MapGet("/", () => "Hi") do in a minimal API?$q$,null,$q$["Maps GET requests for / to a handler that returns Hi", "Starts a database", "Reads a value from a map", "Creates a controller"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Minimal APIs define endpoints with lambdas instead of controllers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is Entity Framework Core?$q$,null,$q$["A UI framework", "A testing tool", "An object-relational mapper (ORM) for working with databases using .NET objects", "A web server"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$EF Core translates LINQ queries to SQL and tracks changes to entities.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which EF Core class represents a session with the database?$q$,null,$q$["DataSession", "DbContext", "DbConnection only", "DbSet"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A DbContext exposes DbSet<T> properties for tables and saves changes with SaveChanges().$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method writes tracked changes to the database in EF Core?$q$,null,$q$["SaveChanges()", "Flush()", "Update()", "Commit()"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Changes accumulated in the context are sent in one transaction by SaveChanges or SaveChangesAsync.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is dependency injection?$q$,null,$q$["Installing a package", "Importing a namespace", "Providing the objects a class needs from outside instead of creating them inside", "Writing code without classes"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$ASP.NET Core has a built-in container and injects services through constructors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Where are services registered in a minimal-hosting ASP.NET Core app?$q$,null,$q$["The .csproj file", "builder.Services in Program.cs", "app.Run()", "appsettings.json"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$builder.Services.AddScoped<IMyService, MyService>() adds a registration before the app is built.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Why does the order of app.UseAuthentication() and app.UseAuthorization() matter?$q$,null,$q$["Only one may be used", "Authentication must run first so authorisation can see the user's identity", "They can be in any order", "Authorisation must run first"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The pipeline runs in the order added. Authorisation needs the user set by authentication.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the [ApiController] attribute provide?$q$,null,$q$["HTML rendering", "Database access", "Authentication", "Automatic model validation responses and binding source inference"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$It returns 400 responses automatically when model validation fails.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which return type lets an action return different HTTP results such as Ok or NotFound?$q$,null,$q$["string only", "IActionResult (or ActionResult<T>)", "object", "void"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$IActionResult and helpers like Ok(), NotFound() and BadRequest() give control over the status code.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which service lifetime creates a new instance every time it is requested?$q$,null,$q$["Singleton", "Static", "Scoped", "Transient"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Use transient for lightweight, stateless services.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What happens if a singleton service depends on a scoped service?$q$,null,$q$["The app does not start", "It captures a scoped service for the app's lifetime, which the container may reject in development", "It works normally", "The scoped service becomes transient"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$This captive dependency is a bug. The default scope validation in development throws an exception.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does an EF Core migration do?$q$,null,$q$["Moves data between servers", "Installs EF Core", "Backs up the database", "Records a change to the model as code that can update the database schema"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$dotnet ef migrations add creates the migration and dotnet ef database update applies it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a JWT bearer token in an Authorization header represent?$q$,null,$q$["An HTML session ID", "A cookie encryption key", "A database password", "A signed token that carries claims about the user"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The server validates the signature and expiry, then reads the claims, without storing a session.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security & Auth$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does IOptions<T> help with?$q$,null,$q$["Routing", "Writing logs", "Caching responses", "Binding a section of configuration to a strongly typed class that can be injected"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$builder.Services.Configure<MyOptions>(config.GetSection("My")) lets classes receive typed settings.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the N+1 query problem in EF Core?$q$,null,$q$["Running queries on N threads", "Loading a list and then issuing one extra query per item for related data", "A migration conflict", "Having N+1 tables"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Use Include() or a projection with Select to load the data in one query.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does AsNoTracking() do?$q$,null,$q$["Removes duplicates", "Disables the database connection", "Makes queries run in parallel", "Skips change tracking for read-only queries, which saves memory and time"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Tracking is only needed when you intend to modify and save the entities.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why is a DbContext not thread-safe?$q$,null,$q$["It keeps mutable state such as the change tracker, so one instance must not be used by parallel operations", "It uses static fields", "It is a singleton", "It uses reflection"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Use one context per unit of work, typically one per request, or a factory for concurrent work.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does EF Core do when two users update the same row and a concurrency token is configured?$q$,null,$q$["Silently overwrites the other change", "Locks the table", "Merges the values", "Throws DbUpdateConcurrencyException when the row changed since it was read"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$A rowversion or concurrency token column enables optimistic concurrency checking.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Entity Framework & Data$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the JIT compiler do in the .NET runtime?$q$,null,$q$["Compiles C# to IL", "Optimises SQL", "Downloads packages", "Compiles IL to native machine code at run time, method by method"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Tiered compilation first produces quick code and recompiles hot methods with more optimisation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the CancellationToken parameter on async methods allow?$q$,null,$q$["The caller to request cancellation of the operation cooperatively", "Making the method synchronous", "Setting a timeout automatically", "Retrying a task"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Code checks the token or passes it to I/O calls. In ASP.NET Core, RequestAborted signals a disconnected client.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which hosting server is cross-platform and used behind a reverse proxy by default in ASP.NET Core?$q$,null,$q$["Kestrel", "Apache", "IIS Express only", "Nginx module"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Kestrel is the built-in cross-platform web server. It is often placed behind IIS, Nginx or another proxy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the purpose of health checks in ASP.NET Core?$q$,null,$q$["Measuring CPU of the developer machine", "Checking code quality", "Endpoints that report whether the app and its dependencies are working, used by load balancers and orchestrators", "Testing the UI"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$app.MapHealthChecks("/health") can include checks for the database, cache and other services.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why should you validate the Origin and use anti-forgery tokens for cookie-authenticated forms?$q$,null,$q$["To speed up login", "To compress responses", "To hide cookies", "To prevent cross-site request forgery (CSRF)"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Browsers send cookies automatically, so a malicious site could trigger actions. Anti-forgery tokens prove the request came from your page.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Security & Auth$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why register HttpClient through IHttpClientFactory instead of creating new HttpClient objects per request?$q$,null,$q$["It encrypts traffic", "It makes requests synchronous", "It is shorter to write", "It manages connection pooling and DNS refresh and avoids socket exhaustion"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Creating many HttpClient instances can exhaust sockets. The factory reuses handlers safely.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Dependency Injection & Config$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between app.Use and app.Run when adding inline middleware?$q$,null,$q$["Run can call next", "Use can call next to continue the pipeline, while Run is terminal", "They are identical", "Use is for routes only"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Run adds a terminal middleware that ends the pipeline. Use receives a next delegate.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$ASP.NET Core$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does dotnet publish do?$q$,null,$q$["Creates a new project", "Runs the unit tests", "Compiles the app and gathers it with its dependencies into a folder ready to deploy", "Uploads the code to GitHub"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The output can be copied to a server. Options such as -c Release and --self-contained control the result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which file holds the local launch profiles (URLs, environment) used by dotnet run in development?$q$,null,$q$["appsettings.Production.json", "launchSettings.json", "global.json", "web.config"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$launchSettings.json lives in Properties and sets values such as applicationUrl and ASPNETCORE_ENVIRONMENT.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Runtime & Tooling$q$,'igeeks-v3','validated' from domains d where d.name=$q$.NET$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- ce-quant: 70 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A shirt priced at 800 rupees is sold at a 15% discount. What is the selling price in rupees?$q$,null,$q$["700", "120", "680", "640"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Discount = 15% of 800 = 120, so the selling price is 800 − 120 = 680.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is 20% of 250?$q$,null,$q$["50", "40", "25", "45"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$20% = 1/5, and 250 ÷ 5 = 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Three-fourths of a number is 45. What is the number?$q$,null,$q$["60", "90", "75", "34"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$If 3/4 of x is 45, then x = 45 × 4/3 = 60.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$The price of a laptop is first raised by 25% and then reduced by 20%. What is the net change in price?$q$,null,$q$["5% decrease", "Increase of 20%", "5% increase", "No change"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$1.25 × 0.80 = 1.00, so the price returns to the original value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A population of 20,000 grows by 10% every year. What will it be after 2 years?$q$,null,$q$["22,000", "24,000", "24,200", "24,400"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$20,000 × 1.1 × 1.1 = 24,200. Growth compounds on the new value each year.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Sales in four quarters were 120, 150, 90 and 140 units. What percentage of the yearly total was sold in the fourth quarter?$q$,null,$q$["28%", "30%", "26%", "25%"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Total = 500, and 140 ÷ 500 = 28%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$An article bought for 250 rupees is sold for 300 rupees. What is the profit percentage?$q$,null,$q$["20%", "16%", "50%", "25%"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Profit = 50, and profit % = 50/250 × 100 = 20%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Profit, Loss & Discount$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A shopkeeper gives successive discounts of 20% and 10% on an item marked at 1,000 rupees. What does the customer pay in rupees?$q$,null,$q$["730", "700", "720", "770"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$After 20%: 800. After a further 10% of 800: 720. Discounts multiply (0.8 × 0.9), they do not add.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Profit, Loss & Discount$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$The cost price of 15 articles equals the selling price of 12 articles. What is the profit percentage?$q$,null,$q$["30%", "25%", "20%", "12.5%"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Each article sells for 15/12 = 1.25 times its cost, a 25% profit.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Profit, Loss & Discount$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A shopkeeper marks an item 40% above its cost price and then allows a 25% discount. What is his profit percentage?$q$,null,$q$["10%", "15%", "5%", "0%"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Selling price = 1.40 × 0.75 = 1.05 of the cost, so the profit is 5%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Profit, Loss & Discount$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$The ratio of boys to girls in a class of 40 is 3:5. How many girls are there?$q$,null,$q$["24", "20", "25", "15"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The parts add up to 8, so each part is 5 students and girls = 5 × 5 = 25.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ratio, Proportion & Mixtures$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A 40-litre mixture of milk and water is in the ratio 3:1. How many litres of water must be added to make the ratio 3:2?$q$,null,$q$["15", "20", "5", "10"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Milk = 30 L and water = 10 L. For 3:2 water must be 20 L, so add 10 L.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ratio, Proportion & Mixtures$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$If 40% of A equals 25% of B, what is the ratio A:B?$q$,null,$q$["4:5", "2:5", "8:5", "5:8"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$0.40A = 0.25B gives A/B = 25/40 = 5/8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ratio, Proportion & Mixtures$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$If 6 pencils cost 42 rupees, what do 15 pencils cost in rupees?$q$,null,$q$["84", "120", "105", "90"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$One pencil costs 7 rupees, and 15 × 7 = 105.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ratio, Proportion & Mixtures$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A car travels 150 km in 2.5 hours. What is its average speed in km/h?$q$,null,$q$["60", "375", "65", "55"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Speed = distance ÷ time = 150 ÷ 2.5 = 60 km/h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Convert a speed of 72 km/h into metres per second.$q$,null,$q$["15", "72", "25", "20"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Multiply by 5/18: 72 × 5/18 = 20 m/s.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Two trains of lengths 150 m and 100 m run in opposite directions at 54 km/h and 36 km/h. How many seconds do they take to cross each other?$q$,null,$q$["15", "8", "12", "10"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Relative speed = 90 km/h = 25 m/s. Total length 250 m, so time = 250/25 = 10 s.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A boat moves at 15 km/h in still water and the stream flows at 3 km/h. How many hours does it need to go 72 km downstream?$q$,null,$q$["6", "4.8", "4", "5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Downstream speed = 15 + 3 = 18 km/h, so time = 72/18 = 4 hours.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A man walking at 5 km/h reaches his office 12 minutes late. Walking at 6 km/h he is 10 minutes early. How far is the office in km?$q$,null,$q$["11", "10", "12", "9"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$d/5 − d/6 = 22/60 hour, which gives d = 11 km.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A car covers the first half of a journey at 40 km/h and the second half at 60 km/h. What is its average speed for the whole journey in km/h?$q$,null,$q$["48", "52", "50", "45"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$For equal distances the average speed is the harmonic mean: 2×40×60/(40+60) = 48.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$5 workers build a wall in 12 days. How many days would 10 workers take, working at the same rate?$q$,null,$q$["8", "12", "24", "6"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Total work = 5 × 12 = 60 worker-days, so 10 workers need 6 days.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time & Work$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A can finish a job in 12 days and B in 18 days. How many days do they take working together?$q$,null,$q$["15", "6", "7.2", "7.5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Combined rate = 1/12 + 1/18 = 5/36 per day, so the job takes 36/5 = 7.2 days.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time & Work$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Two pipes fill a tank in 20 and 30 minutes. A third pipe empties it in 60 minutes. If all three are open, how many minutes does it take to fill the tank?$q$,null,$q$["10", "18", "15", "12"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Net rate = 1/20 + 1/30 − 1/60 = 4/60, so the tank fills in 15 minutes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time & Work$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A can do a piece of work in 10 days and B in 15 days. They work together for 4 days and then A leaves. How many more days will B need to finish the work?$q$,null,$q$["4", "5", "7.5", "6"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$In 4 days they finish 4 × (1/10 + 1/15) = 2/3. The remaining 1/3 at B's rate of 1/15 per day takes 5 days.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time & Work$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A can finish a job in 6 days and B in 3 days. They work on alternate days, starting with A. In how many days is the job finished?$q$,null,$q$["4.5", "3", "5", "4"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A does 1/6 and B does 1/3 in two days (half the job). Four days finish the whole job exactly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time & Work$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the simple interest on 5,000 rupees at 8% per year for 3 years?$q$,null,$q$["1,200", "1,500", "1,000", "400"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$SI = P × R × T / 100 = 5000 × 8 × 3 / 100 = 1,200.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the compound interest on 10,000 rupees at 10% per year for 2 years, compounded annually?$q$,null,$q$["2,000", "2,100", "2,200", "2,310"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Amount = 10,000 × 1.1² = 12,100, so the interest is 2,100.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A sum becomes three times itself in 5 years at simple interest. In how many years will it become six times itself?$q$,null,$q$["10", "25", "12.5", "15"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Tripling means interest = 2P in 5 years (0.4P per year). To reach 6P we need 5P of interest, which takes 12.5 years.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between the compound interest and the simple interest on 8,000 rupees at 5% per year for 2 years?$q$,null,$q$["20", "10", "40", "200"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$For two years the difference is P(r/100)² = 8000 × 0.0025 = 20.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the average of 12, 18, 24, 30 and 36?$q$,null,$q$["24", "26", "22", "25"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The sum is 120 and 120 ÷ 5 = 24.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$The average of 5 numbers is 26. When one of them, 30, is removed, what is the average of the remaining four?$q$,null,$q$["26", "27", "24", "25"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Total = 130. Remaining total = 100, and 100 ÷ 4 = 25.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$The sum of two numbers is 45 and their difference is 9. What is the larger number?$q$,null,$q$["18", "24", "27", "36"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The larger number = (45 + 9)/2 = 27.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the sum of the first 10 natural numbers?$q$,null,$q$["45", "66", "50", "55"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$1 + 2 + … + 10 = 10 × 11 / 2 = 55.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the value of √144 + ∛27?$q$,null,$q$["12", "15", "21", "39"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$√144 = 12 and ∛27 = 3, so the total is 15.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$If x + 7 = 19, what is the value of 3x?$q$,null,$q$["12", "19", "57", "36"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$x = 12, so 3x = 36.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the LCM of 12 and 18?$q$,null,$q$["72", "216", "6", "36"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$12 = 2² × 3 and 18 = 2 × 3². The LCM takes the highest powers: 2² × 3² = 36.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the HCF of 36 and 60?$q$,null,$q$["6", "24", "12", "18"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$36 = 2² × 3² and 60 = 2² × 3 × 5. The common part is 2² × 3 = 12.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the smallest prime number greater than 50?$q$,null,$q$["59", "53", "51", "57"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$51 = 3 × 17 and 52 is even, so the next prime is 53.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How many three-digit numbers are divisible by 7?$q$,null,$q$["129", "128", "130", "127"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The smallest is 105 and the largest is 994, giving (994 − 105)/7 + 1 = 128.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How many zeros are at the end of 25! (25 factorial)?$q$,null,$q$["7", "4", "5", "6"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Count the factors of 5: 25/5 = 5 and 25/25 = 1, so 5 + 1 = 6 trailing zeros.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the last digit of 7 raised to the power 2026?$q$,null,$q$["7", "1", "3", "9"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The last digits of powers of 7 repeat as 7, 9, 3, 1. Since 2026 mod 4 = 2, the digit is 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the remainder when 2 raised to the power 50 is divided by 7?$q$,null,$q$["2", "6", "4", "1"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$2³ = 8 leaves remainder 1, so powers cycle with period 3. 50 mod 3 = 2, giving 2² = 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How many positive divisors does 360 have?$q$,null,$q$["24", "20", "30", "18"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$360 = 2³ × 3² × 5, so the count is (3+1)(2+1)(1+1) = 24.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$If the roots of x² − 7x + k = 0 differ by 3, what is k?$q$,null,$q$["14", "12", "8", "10"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The roots are 5 and 2 (sum 7, difference 3), so k = 5 × 2 = 10.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$If log base 2 of x plus log base 2 of (x − 2) equals 3, what is x?$q$,null,$q$["2", "4", "6", "\u22122"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$x(x − 2) = 8 gives x² − 2x − 8 = 0, so x = 4 or −2. Only x = 4 keeps both logarithms defined.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A rectangle is 14 cm long and 9 cm wide. What is its area in square centimetres?$q$,null,$q$["23", "252", "46", "126"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Area = length × width = 14 × 9 = 126.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$The area of a square is 81 square metres. What is its perimeter in metres?$q$,null,$q$["18", "36", "27", "81"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The side is 9 m, so the perimeter is 4 × 9 = 36 m.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How many diagonals does a hexagon have?$q$,null,$q$["15", "6", "9", "12"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A polygon with n sides has n(n − 3)/2 diagonals: 6 × 3 / 2 = 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the sum of the interior angles of a pentagon, in degrees?$q$,null,$q$["360", "450", "720", "540"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The sum is (n − 2) × 180 = 3 × 180 = 540.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the angle between the hands of a clock at 3:30?$q$,null,$q$["75\u00b0", "105\u00b0", "60\u00b0", "90\u00b0"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The hour hand is at 105° and the minute hand at 180°, so the angle is 75°.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$The radius of a cylinder is doubled and its height is halved. What happens to its volume?$q$,null,$q$["It stays the same", "It doubles", "It halves", "It becomes four times"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Volume ∝ r² × h, so the factor is 2² × 1/2 = 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How many squares of all sizes are there on a 4 × 4 grid of unit squares?$q$,null,$q$["20", "16", "25", "30"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$1² + 2² + 3² + 4² = 1 + 4 + 9 + 16 = 30.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Geometry & Mensuration$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In how many distinct ways can the letters of the word LEVEL be arranged?$q$,null,$q$["120", "60", "15", "30"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$5 letters with L repeated twice and E repeated twice: 5!/(2! × 2!) = 30.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Two fair dice are rolled. What is the probability that the sum is 8?$q$,null,$q$["7/36", "5/36", "1/6", "1/9"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The pairs (2,6), (3,5), (4,4), (5,3), (6,2) give 5 favourable outcomes out of 36.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A committee of 3 is chosen from 5 men and 4 women. In how many ways can it include at least one woman?$q$,null,$q$["84", "80", "64", "74"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Total C(9,3) = 84. Committees with no woman = C(5,3) = 10. So 84 − 10 = 74.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$One card is drawn from a standard 52-card deck. What is the probability that it is a king or a heart?$q$,null,$q$["4/13", "5/13", "17/52", "3/13"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$There are 13 hearts plus 3 other kings = 16 cards, and 16/52 = 4/13. The king of hearts must not be counted twice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A bag has 4 red and 5 blue balls. Two balls are drawn without replacement. What is the probability that both have the same colour?$q$,null,$q$["4/9", "5/9", "1/2", "41/81"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$(C(4,2) + C(5,2)) / C(9,2) = 16/36 = 4/9. The figure 41/81 would be the answer with replacement.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In how many ways can 6 people sit around a circular table?$q$,null,$q$["720", "24", "120", "60"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$For circular arrangements fix one person and arrange the others: (6 − 1)! = 120.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A father is three times as old as his son. After 12 years he will be twice as old as the son. What is the son's present age in years?$q$,null,$q$["15", "8", "12", "10"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$3s + 12 = 2(s + 12) gives s = 12. Check: father 36, son 12; in 12 years 48 and 24.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Series & Ages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the sum of the first 6 terms of the series 2 + 6 + 18 + …?$q$,null,$q$["728", "486", "729", "1,456"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$This is a geometric series with ratio 3: 2(3⁶ − 1)/(3 − 1) = 728.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Series & Ages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is 0.375 written as a fraction in simplest form?$q$,null,$q$["5/8", "3/5", "3/8", "1/3"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$0.375 = 375/1000 = 3/8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Averages & Numbers$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Aman invests 6,000 rupees for 12 months and Bharat invests 8,000 rupees for 6 months. They share a profit of 3,000 rupees. How much does Aman get in rupees?$q$,null,$q$["1,800", "1,200", "2,000", "1,500"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Capital × time: 72,000 : 48,000 = 3 : 2. Aman gets 3/5 of 3,000 = 1,800.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ratio, Proportion & Mixtures$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A sum of money doubles itself in 8 years at simple interest. What is the annual rate of interest?$q$,null,$q$["15%", "10%", "12.5%", "8%"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Interest equals the principal in 8 years, so rate = 100/8 = 12.5% per year.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A bag holds 3 red and 2 blue balls. One red ball is drawn and not replaced. What is the probability the next ball is red?$q$,null,$q$["1/2", "2/5", "3/5", "3/4"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$After one red is removed there are 2 red among 4 balls, so the probability is 2/4 = 1/2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Permutations, Combinations & Probability$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the smallest number that leaves a remainder of 3 when divided by 4, 5 or 6?$q$,null,$q$["63", "23", "123", "183"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The LCM of 4, 5 and 6 is 60, so the number is 60 + 3 = 63.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number System$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How many minutes are there in 2.5 hours?$q$,null,$q$["250", "120", "150", "125"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$2.5 × 60 = 150.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A train 200 m long passes a pole in 10 seconds. What is its speed in km/h?$q$,null,$q$["60", "20", "80", "72"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Speed = 200/10 = 20 m/s = 20 × 18/5 = 72 km/h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Time, Speed & Distance$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the value of 1/2 + 1/6 + 1/12 + 1/20 + 1/30?$q$,null,$q$["4/5", "5/6", "1", "3/4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Each term is 1/(n(n+1)) = 1/n − 1/(n+1), so the sum telescopes to 1 − 1/6 = 5/6.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Series & Ages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the compound interest rate that makes a sum double in exactly 2 years? (Choose the nearest value.)$q$,null,$q$["41.4%", "25%", "100%", "50%"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$(1 + r)² = 2 gives r = √2 − 1 ≈ 41.4%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Interest$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which is greater: 40% of 50 or 50% of 38?$q$,null,$q$["40% of 50", "50% of 38", "Cannot be determined", "They are equal"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$40% of 50 = 20 and 50% of 38 = 19.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Percentages$q$,'igeeks-v2','validated' from domains d where d.name=$q$Quantitative Aptitude$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- ce-reasoning: 57 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Find the next number in the series 3, 6, 12, 24, …$q$,null,$q$["36", "30", "48", "42"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Each term is double the previous one, so the next term is 24 × 2 = 48.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Find the next number: 2, 5, 10, 17, 26, …$q$,null,$q$["36", "35", "37", "38"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The differences 3, 5, 7, 9 rise by 2 each time, so the next difference is 11 and 26 + 11 = 37.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Find the next letter: Z, X, V, T, …$q$,null,$q$["P", "Q", "S", "R"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Each letter moves two places backwards in the alphabet: T → R.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Find the next number: 2, 3, 5, 9, 17, 33, …$q$,null,$q$["49", "66", "64", "65"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The differences 1, 2, 4, 8, 16 double each time, so the next difference is 32 and 33 + 32 = 65.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Find the next number: 7, 10, 16, 28, 52, …$q$,null,$q$["104", "96", "76", "100"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The differences are 3, 6, 12, 24, so the next is 48 and 52 + 48 = 100.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Find the next number: 4, 9, 25, 49, 121, …$q$,null,$q$["144", "169", "196", "225"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$These are squares of consecutive primes (2, 3, 5, 7, 11), so the next is 13² = 169.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Find the next number: 0, 7, 26, 63, 124, …$q$,null,$q$["196", "215", "200", "216"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Each term is a cube minus one: 1³−1, 2³−1, … so the next is 6³ − 1 = 215.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Find the next number: 3, 8, 18, 38, 78, …$q$,null,$q$["158", "148", "156", "160"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Each term is twice the previous term plus 2: 78 × 2 + 2 = 158.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Find the next number: 2, 12, 36, 80, 150, …$q$,null,$q$["210", "264", "240", "252"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The terms are n² × (n + 1): 1²×2, 2²×3, 3²×4, 4²×5, 5²×6, so the next is 6² × 7 = 252.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Find the next group: ACE, FHJ, KMO, …$q$,null,$q$["PQR", "PRS", "OQS", "PRT"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Inside each group letters skip one (+2). Each group starts 5 letters after the previous start: A, F, K, P → PRT.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What replaces the question mark? 3 9 27 / 4 16 64 / 5 25 ?$q$,null,$q$["150", "100", "75", "125"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Each row is n, n², n³, so the last row is 5, 25, 125.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What replaces the question mark? (2, 3, 12), (4, 5, 40), (6, 7, ?)$q$,null,$q$["91", "78", "84", "42"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$In every group the third number is 2 × first × second: 2×2×3=12, 2×4×5=40, so 2×6×7 = 84.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Number & Letter Series$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$If CAT is written as DBU, how is DOG written in the same code?$q$,null,$q$["DPH", "ENH", "EPH", "EPG"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Every letter moves one place forward: D→E, O→P, G→H.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Coding & Decoding$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$If TABLE is coded as UBCMF, how is CHAIR coded?$q$,null,$q$["DIBJR", "BGZHQ", "DIBKS", "DIBJS"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Every letter is shifted one place forward: C→D, H→I, A→B, I→J, R→S.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Coding & Decoding$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a certain code, 2 is written as 5, 3 as 10, 4 as 17 and 5 as 26. What is the code for 7?$q$,null,$q$["48", "49", "37", "50"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The rule is n² + 1: 2²+1=5, 3²+1=10, 4²+1=17, so 7²+1 = 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Coding & Decoding$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a code language, 'tea is hot' is 'ka lo mi', 'hot coffee' is 'mi pa' and 'coffee is sweet' is 'pa lo ru'. What is the code for 'tea'?$q$,null,$q$["ka", "lo", "pa", "mi"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'hot' = mi (common to the first two), 'is' = lo (common to the first and third). The word left in the first sentence is 'tea' = ka.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Coding & Decoding$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$In a code, day is called night, night is called sun and sun is called moon. When can we see the stars in this code language?$q$,null,$q$["Night", "Day", "Sun", "Moon"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Stars are seen at night in real life, and 'night' is called 'sun' in this code.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Coding & Decoding$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A is the brother of B, and B is the sister of C. How is C related to A?$q$,null,$q$["Brother only", "Sister only", "Cousin", "Brother or sister"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A and B are siblings and B and C are siblings, so C is A's sibling. The gender of C is not given.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Blood Relations$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Pointing to a man, Rita says, 'He is the son of my mother's only brother.' How is the man related to Rita?$q$,null,$q$["Nephew", "Brother", "Cousin", "Uncle"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Her mother's brother is her maternal uncle, and his son is her cousin.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Blood Relations$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A is the sister of B. C is the mother of B. D is the father of C. E is the mother of D. How is A related to D?$q$,null,$q$["Granddaughter", "Great-granddaughter", "Daughter", "Niece"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$C is the mother of both A and B. D is C's father, so A is D's granddaughter.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Blood Relations$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Pointing to a photograph, Meera says, 'He is the son of the only son of my father's father.' How is the man related to Meera?$q$,null,$q$["Uncle", "Brother", "Father", "Cousin"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Her father's father has only one son, who is her father. The man is that father's son, so he is Meera's brother.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Blood Relations$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A man walks 5 km north, then 5 km east and then 5 km south. How far is he from the starting point?$q$,null,$q$["15 km", "0 km", "10 km", "5 km"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The north and south legs cancel, leaving him 5 km east of the start.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Direction Sense$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Starting facing west, Arun walks 10 m, turns left and walks 5 m, turns left and walks 10 m, then turns right and walks 5 m. Where is he with respect to the start?$q$,null,$q$["10 m south", "15 m south", "10 m north", "5 m south-west"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$He goes 10 m west, 5 m south, 10 m east (back in line with the start), then 5 m south: 10 m south in total.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Direction Sense$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A person faces north. He turns 90° clockwise, then 135° anticlockwise and then 180° clockwise. In which direction does he face now?$q$,null,$q$["South-west", "East", "North-west", "South-east"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$90 − 135 + 180 = 135° clockwise from north, which is south-east.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Direction Sense$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Ravi ranks 7th from the top and 15th from the bottom in a class. How many students are in the class?$q$,null,$q$["22", "20", "21", "23"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Total = 7 + 15 − 1 = 21, because Ravi is counted in both ranks.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a row of 40 students, A is 12th from the left and B is 15th from the right. How many students are between A and B?$q$,null,$q$["13", "14", "15", "12"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$B is (40 − 15 + 1) = 26th from the left. Between 12th and 26th there are 26 − 12 − 1 = 13 students.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A is older than B but younger than C. D is older than C. E is younger than B. Who is the youngest?$q$,null,$q$["A", "B", "E", "C"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The order from oldest is D > C > A > B > E.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Neha is 14th from the front and 19th from the back in a queue. Mini stands 6 places ahead of Neha. How many people are behind Mini?$q$,null,$q$["26", "24", "25", "23"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The queue has 14 + 19 − 1 = 32 people. Mini is 8th from the front, so 32 − 8 = 24 people are behind her.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which letter is the 5th to the right of the 10th letter from the left of the English alphabet?$q$,null,$q$["O", "M", "P", "N"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The 10th letter is J. Five places to its right is O.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$If the letters of the word SOLUTION are arranged in alphabetical order, which letter is third from the right?$q$,null,$q$["O", "S", "T", "U"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Alphabetical order: I, L, N, O, O, S, T, U. From the right: U, T, S.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Ranking & Order$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Statements: All pens are books. All books are papers. Conclusions: I. All pens are papers. II. Some papers are pens. Which follows?$q$,null,$q$["Neither I nor II", "Only II", "Only I", "Both I and II"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$I follows by chaining the two statements. II follows because if all pens are papers, some papers must be pens.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Syllogisms & Deductions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Statements: No cat is a dog. All dogs are animals. Conclusions: I. No cat is an animal. II. Some animals are not cats. Which follows?$q$,null,$q$["Both I and II", "Neither I nor II", "Only I", "Only II"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Dogs are animals and no dog is a cat, so some animals are not cats (II). Nothing says that cats cannot be animals, so I does not follow.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Syllogisms & Deductions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Statements: Some doctors are teachers. All teachers are singers. Conclusions: I. Some doctors are singers. II. All doctors are singers. Which follows?$q$,null,$q$["Only I", "Both I and II", "Neither I nor II", "Only II"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The doctors who are teachers are also singers, so I follows. Nothing is known about doctors who are not teachers, so II does not.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Syllogisms & Deductions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Statement: A company announces a 30% discount on its annual membership. Assumptions: I. Some people may be attracted to buy the membership. II. The company wants to reduce the number of members. Which is implicit?$q$,null,$q$["Only II", "Both I and II", "Neither I nor II", "Only I"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Offering a discount assumes it may attract buyers. It would be odd to assume that the company wants fewer members.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Syllogisms & Deductions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the odd one out: Mercury, Venus, Moon, Mars$q$,null,$q$["Venus", "Mars", "Moon", "Mercury"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Mercury, Venus and Mars are planets. The Moon is a natural satellite.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Odd One Out & Analogies$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Book is to Reading as Fork is to ____$q$,null,$q$["Eating", "Cutting", "Cooking", "Kitchen"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A book is used for reading and a fork is used for eating.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Odd One Out & Analogies$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the odd number out: 8, 27, 64, 100, 125$q$,null,$q$["8", "100", "125", "27"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$8, 27, 64 and 125 are perfect cubes. 100 is not.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Odd One Out & Analogies$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Cardiologist is to Heart as Nephrologist is to ____$q$,null,$q$["Lungs", "Kidney", "Liver", "Brain"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A cardiologist treats the heart and a nephrologist treats the kidneys.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Odd One Out & Analogies$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the odd number out: 17, 23, 29, 33, 41$q$,null,$q$["17", "29", "33", "41"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$All of them except 33 are prime numbers; 33 = 3 × 11.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Odd One Out & Analogies$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$If today is Monday, which day will it be after 100 days?$q$,null,$q$["Wednesday", "Tuesday", "Friday", "Thursday"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$100 = 14 × 7 + 2, so the day is two days after Monday: Wednesday.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Calendar & Clock$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$How many times do the hands of a clock coincide in 12 hours?$q$,null,$q$["12", "22", "11", "10"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The hands coincide 11 times in 12 hours, because the 12th overlap falls exactly at the end of the cycle.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Calendar & Clock$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$14 November 2026 is a Saturday. Which day of the week is 1 January 2027?$q$,null,$q$["Saturday", "Friday", "Thursday", "Sunday"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$From 14 November to 1 January is 48 days. 48 = 6 × 7 + 6, so the day is six days after Saturday: Friday.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Calendar & Clock$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A cube painted red on all faces is cut into 27 equal small cubes. How many small cubes have exactly two faces painted?$q$,null,$q$["8", "6", "12", "1"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Only the cubes on the 12 edges (one per edge, in the middle) have exactly two painted faces.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Cubes & Visual Logic$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A cube painted on all faces is cut into 27 equal small cubes. How many small cubes have no painted face?$q$,null,$q$["1", "3", "8", "6"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Only the centre cube is completely inside, so exactly one cube has no paint.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Cubes & Visual Logic$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A 4 × 4 × 4 cube painted on all faces is cut into 64 unit cubes. How many unit cubes have exactly one face painted?$q$,null,$q$["8", "12", "24", "32"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Each face has a 2 × 2 block of cubes with exactly one painted face: 4 × 6 = 24.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Cubes & Visual Logic$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Five friends P, Q, R, S and T sit in a row. R is at the extreme left and P at the extreme right. Q does not sit next to R. T sits immediately to the left of S. Who sits in the middle?$q$,null,$q$["P", "Q", "T", "S"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$R is first and P last. Q cannot be second, and T must be directly left of S, so the order is R, T, S, Q, P. The middle seat belongs to S.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$Six people A to F sit around a circular table facing the centre. D sits opposite A. B sits to the immediate right of A. C sits to the immediate left of D. E sits opposite B. Who sits opposite C?$q$,null,$q$["B", "F", "E", "A"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Listing seats clockwise from A: A, F, E, D, C, B. C is opposite the second seat, which holds F.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the word that cannot be made from the letters of the word EDUCATION: DUCAT, ACTION, EDUCATE, TONE$q$,null,$q$["EDUCATE", "DUCAT", "TONE", "ACTION"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$EDUCATE needs two E's but EDUCATION has only one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$The next figure in a pattern of squares grows by adding one row and one column each time (1×1, 2×2, 3×3, …). How many unit squares does the 6th figure contain?$q$,null,$q$["25", "30", "36", "42"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The nth figure holds n × n unit squares, so the 6th has 36.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which of these is the next term in the series: AZ, BY, CX, DW, …$q$,null,$q$["DV", "EU", "FV", "EV"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The first letter moves forward and the second moves backward by one place each time: E and V.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A number is doubled and 9 is added to it. The result divided by 3 gives 15. What is the number?$q$,null,$q$["21", "24", "18", "12"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$(2x + 9)/3 = 15 gives 2x + 9 = 45, so x = 18.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of the following is a pair of numbers whose product is 144 and whose sum is 30?$q$,null,$q$["6 and 24", "9 and 16", "8 and 18", "12 and 12"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Only 6 and 24 give both a product of 144 and a sum of 30.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$If 'A + B' means A is the mother of B, 'A − B' means A is the brother of B and 'A × B' means A is the father of B, which expression shows that P is the paternal uncle of Q?$q$,null,$q$["P \u00d7 R \u2212 Q", "P + R \u00d7 Q", "P \u2212 R \u00d7 Q", "P \u2212 R + Q"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$P − R: P is the brother of R. R × Q: R is the father of Q. So P is Q's paternal uncle.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A man introduces a woman as the daughter of the only son of his mother. How is the woman related to the man?$q$,null,$q$["Cousin", "Niece", "Daughter", "Sister"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The only son of his mother is the man himself, so the woman is his daughter.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In a certain code language, MOUSE is written as PRXVH. How is CHAIR written?$q$,null,$q$["EKBJT", "DIBJS", "FJDLU", "FKDLU"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Each letter moves three places forward: C→F, H→K, A→D, I→L, R→U.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Four friends compare ages: Ann is older than Bo. Cy is younger than Di. Bo is older than Di. Who is the second youngest?$q$,null,$q$["Cy", "Di", "Ann", "Bo"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The order from oldest is Ann > Bo > Di > Cy, so the second youngest is Di.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Find the odd one out in the series: 121, 169, 225, 289, 350$q$,null,$q$["350", "121", "225", "289"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The others are squares of odd numbers (11, 13, 15, 17). 350 is not a perfect square.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Seating Arrangement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Logical Reasoning$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- ce-verbal: 64 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct word: Neither of the two books ____ interesting.$q$,null,$q$["are", "have been", "were", "is"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Neither is treated as singular when it refers to one of two items, so it takes 'is'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct word: Each of the students ____ a laptop.$q$,null,$q$["are having", "were", "has", "have"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$'Each' is singular, so the verb is 'has'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct sentence about a third-person subject.$q$,null,$q$["He doesn't know the answer.", "He not knows the answer.", "He doesn't knows the answer.", "He don't know the answer."]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$With a third-person singular subject, the helping verb is 'doesn't' and the main verb stays in its base form.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: The number of students ____ increased this year.$q$,null,$q$["has", "were", "have", "are"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'The number of' is singular, so it takes 'has'. (Compare 'A number of students are absent', which is plural.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: If I ____ you, I would apologise at once.$q$,null,$q$["was", "were", "am", "will be"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The unreal conditional uses the subjunctive 'were' for all persons.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the correct word: I suggest that he ____ the form today.$q$,null,$q$["will submit", "submitted", "submit", "submits"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$After verbs of suggestion or demand, the subjunctive uses the base form of the verb: 'he submit'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the correct word: Neither the manager nor the employees ____ aware of the change.$q$,null,$q$["has been", "is", "were", "was"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$With 'neither … nor' the verb agrees with the nearer subject. 'Employees' is plural, so 'were' fits.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the correct pronoun: Between you and ____, the plan will not work.$q$,null,$q$["me", "myself", "I", "mine"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$After a preposition the object form 'me' is required.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the parallel structure: She likes hiking, swimming and ____.$q$,null,$q$["read", "she reads", "reading", "to read"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The items in a list must share the same form. 'Hiking' and 'swimming' are -ing forms, so 'reading' completes the series.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which sentence is free from a dangling modifier?$q$,null,$q$["The trees looked beautiful walking down the road.", "Walking down the road, I thought the trees looked beautiful.", "Walking down the road, the trees looked beautiful.", "Walking down the road, beautiful trees were seen by me looking."]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The modifier 'Walking down the road' must describe the person who walks, so that person ('I') must follow it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Grammar & Agreement$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct word: She has been working here ____ 2019.$q$,null,$q$["since", "from", "for", "during"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Since' is used with a starting point in time, while 'for' is used with a length of time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct article: He is ____ honest man.$q$,null,$q$["no article", "a", "the", "an"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Honest' begins with a vowel sound because the h is silent, so 'an' is used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct word: The meeting is scheduled ____ Monday.$q$,null,$q$["in", "by", "at", "on"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'On' is used before days of the week.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct form: I am looking forward to ____ you.$q$,null,$q$["meeting", "met", "have met", "meet"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$In the phrase 'look forward to', 'to' is a preposition and is followed by an -ing form.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: She is senior ____ me in the company.$q$,null,$q$["over", "than", "from", "to"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Senior' is followed by 'to', not 'than'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: He is very good ____ mathematics.$q$,null,$q$["in", "at", "on", "for"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The usual collocation is 'good at' a subject or skill.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: Hardly had he reached the station ____ the train left.$q$,null,$q$["then", "when", "after", "than"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$'Hardly' is followed by 'when'. ('No sooner' is followed by 'than'.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: No sooner did he arrive ____ it began to rain.$q$,null,$q$["than", "but", "then", "when"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'No sooner' pairs with 'than'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the sentence that uses 'despite' correctly.$q$,null,$q$["Despite the rain, we went out.", "Despite of the rain, we went out.", "Despite the rain, but we went out.", "In despite the rain, we went out."]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Despite' is never followed by 'of'. ('In spite of' is the other correct form.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Tenses & Prepositions$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Change to passive voice: The committee approved the plan.$q$,null,$q$["The committee was approved by the plan.", "The plan is approved by the committee.", "The plan was approved by the committee.", "The plan had approved the committee."]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The object becomes the subject and the verb takes 'was + past participle' to keep the past tense.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Change to reported speech: He said, "I am tired."$q$,null,$q$["He said that I am tired.", "He said that he is being tired.", "He said me that he was tired.", "He said that he was tired."]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$In reported speech the present tense moves back to the past and the pronoun changes from I to he.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correctly formed question tag: She can swim, ____?$q$,null,$q$["can't she", "won't she", "isn't she", "doesn't she"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A positive statement takes a negative tag that repeats the same auxiliary verb 'can'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct word: The new policy will ____ all employees.$q$,null,$q$["effects", "effect", "affect", "afect"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$'Affect' is the verb meaning to influence. 'Effect' is normally a noun meaning a result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which sentence uses the possessive correctly?$q$,null,$q$["The company announced it's results.", "The company announced it results.", "The company announced its' results.", "The company announced its results."]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Its' is the possessive. 'It's' always means 'it is' or 'it has'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which sentence uses a semicolon correctly?$q$,null,$q$["I was tired; because I went to bed early.", "I was tired, I went; to bed early.", "I was; tired I went to bed early.", "I was tired; I went to bed early."]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A semicolon joins two independent clauses. A clause beginning with 'because' is not independent.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Arrange these sentences in order. P: He opened the door. Q: Someone knocked loudly. R: He walked slowly to the door. S: No one was there.$q$,null,$q$["QPRS", "RQSP", "QRPS", "PQRS"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$First there is a knock (Q), then he walks to the door (R), opens it (P) and finds no one (S).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Sentence Transformation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct spelling of the word for a place to stay.$q$,null,$q$["Accomadation", "Accommodation", "Accomodation", "Acommodation"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Accommodation has a double c and a double m.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct spelling of the word meaning 'essential'.$q$,null,$q$["Necessery", "Necesary", "Necessary", "Neccessary"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Necessary has one c and two s's.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct spelling of the word meaning 'an event that happens'.$q$,null,$q$["Occurence", "Ocurrence", "Occurrance", "Occurrence"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Occurrence has a double c and a double r.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct plural of 'analysis'.$q$,null,$q$["analyses", "analysises", "analysis", "analysi"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Words ending in -sis change to -ses in the plural.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the correct plural of 'child'.$q$,null,$q$["children", "childrens", "childes", "childs"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Child' has an irregular plural, 'children'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the word that fits: She gave her ____ to the proposal after a long discussion.$q$,null,$q$["assent", "ascent", "accent", "ascend"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Assent' means agreement. 'Ascent' means a climb.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the past tense of 'lead'?$q$,null,$q$["leaded", "led", "leed", "lead"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$'Lead' is an irregular verb: lead, led, led.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these words is a noun?$q$,null,$q$["quickly", "happiness", "run", "beautiful"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$'Happiness' names a feeling, so it is a noun. 'Quickly' is an adverb and 'beautiful' an adjective.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct comparative form: This is the ____ of the two books.$q$,null,$q$["good", "best", "more good", "better"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$When two things are compared the comparative 'better' is used. 'Best' is for three or more.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Spelling & Confused Words$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the word closest in meaning to 'rapid'.$q$,null,$q$["steady", "careful", "swift", "slow"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$'Rapid' and 'swift' both describe something that happens quickly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the word opposite in meaning to 'ancient'.$q$,null,$q$["antique", "old", "historic", "modern"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Ancient' means very old, so 'modern' is its opposite.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the word opposite in meaning to 'generous'.$q$,null,$q$["stingy", "lavish", "kind", "noble"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A stingy person is unwilling to give, the opposite of generous.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the word closest in meaning to 'enormous'.$q$,null,$q$["tiny", "huge", "ordinary", "heavy"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$'Enormous' means very large, like 'huge'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the word closest in meaning to 'candid'.$q$,null,$q$["secretive", "polite", "frank", "hesitant"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A candid person speaks honestly and openly, which is what 'frank' means.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the word opposite in meaning to 'scarce'.$q$,null,$q$["rare", "limited", "abundant", "costly"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$'Scarce' means in short supply and 'abundant' means plentiful.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the word opposite in meaning to 'benevolent'.$q$,null,$q$["generous", "gracious", "charitable", "malevolent"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Benevolent' means wishing good, and 'malevolent' means wishing harm.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does 'ephemeral' mean?$q$,null,$q$["Extremely large", "Easy to break", "Hidden from view", "Lasting a very short time"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$An ephemeral thing, like a mayfly's life, lasts only a short while.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the word closest in meaning to 'obsequious'.$q$,null,$q$["servile", "arrogant", "indifferent", "sincere"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$An obsequious person is excessively eager to please and obey, which is servile behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the word opposite in meaning to 'taciturn'.$q$,null,$q$["reserved", "talkative", "gloomy", "silent"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A taciturn person says very little, so 'talkative' is the opposite.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does 'ubiquitous' mean?$q$,null,$q$["Rarely seen", "Easily damaged", "Very old", "Present everywhere"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A ubiquitous thing, such as smartphones, seems to be found everywhere.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the word that best completes the sentence: The judge's ruling was so ____ that nobody could dispute it.$q$,null,$q$["incontrovertible", "tentative", "ambiguous", "arbitrary"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Incontrovertible' means impossible to deny, which fits the idea that no one could dispute it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the word that best completes the sentence: Her argument, though persuasive, was ____ because it ignored the evidence.$q$,null,$q$["fallacious", "cogent", "lucid", "compelling"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Fallacious' means based on a mistaken idea. The word 'though' signals a contrast with 'persuasive'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the word that best completes the sentence: Far from being ____, the new manager was surprisingly approachable.$q$,null,$q$["aloof", "friendly", "cordial", "helpful"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$'Far from being' introduces the opposite of 'approachable'. An aloof person keeps a distance.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Vocabulary$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does the idiom 'a piece of cake' mean?$q$,null,$q$["Something very easy", "A small gift", "A difficult task", "Something very sweet"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The idiom describes a task that needs hardly any effort.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose one word for 'government by the people'.$q$,null,$q$["Democracy", "Autocracy", "Bureaucracy", "Monarchy"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$In a democracy the people hold power, directly or through elected representatives.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the idiom 'to bite the bullet' mean?$q$,null,$q$["To act hastily", "To lose your temper", "To refuse to listen", "To face a painful situation bravely"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The phrase refers to enduring something unpleasant because it cannot be avoided.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the idiom 'once in a blue moon' mean?$q$,null,$q$["Every night", "Without warning", "In bad weather", "Very rarely"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A blue moon is a rare event, so the idiom means 'hardly ever'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose one word for 'a person who is present everywhere'.$q$,null,$q$["Omniscient", "Ominous", "Omnipresent", "Omnipotent"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$'Omnipresent' means present everywhere. 'Omniscient' means all-knowing and 'omnipotent' all-powerful.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the idiom 'to throw in the towel' mean?$q$,null,$q$["To give up", "To start again", "To clean up", "To win easily"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The phrase comes from boxing, where a towel thrown into the ring signals surrender.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Idioms & One-word Substitution$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Passage: Priya wakes at five every day to run before work. She says the quiet streets help her think. Question: Why does Priya run so early?$q$,null,$q$["Her coach tells her to", "She dislikes the sun", "She has to reach work early", "The quiet streets help her think"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The passage states it directly: the quiet streets help her think.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Passage: Urban gardens have grown in popularity not merely because they supply fresh vegetables, but because they give city residents a shared purpose. Neighbours who would otherwise never speak end up trading seeds and advice. Question: What does the passage suggest about urban gardens?$q$,null,$q$["They are cheaper than supermarkets", "They are mainly for experts", "They have replaced parks", "They build community as well as provide food"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The words 'not merely' show that food is only part of the value. The shared purpose and conversation among neighbours is the rest.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Passage: The company's profits rose sharply last year. However, most of the increase came from a one-time sale of property rather than from selling more products. Question: What can be inferred?$q$,null,$q$["The core business did not necessarily improve", "Profits will keep rising", "The property was sold at a loss", "The company sold more products than ever"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The rise came from a one-off sale, so it says little about the ordinary business.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Passage: Critics argue that the subsidy rewards short-term thinking. Supporters reply that without immediate incentives few households would adopt the new technology at all. Question: What is the supporters' main point?$q$,null,$q$["The technology is already popular", "Short-term thinking is a good habit", "Critics have not studied the subsidy", "Immediate incentives are needed to get people to adopt the technology"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Supporters answer the criticism by saying adoption would not happen without immediate rewards.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Passage: The minister's statement, hedged with phrases such as 'in some cases' and 'it may be argued', committed him to nothing. Question: What is the author's attitude to the statement?$q$,null,$q$["Indifferent to its content", "Critical, suggesting it was evasive", "Enthusiastic about its clarity", "Admiring of its caution"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Saying the statement 'committed him to nothing' shows the author sees it as evasive.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which word is closest in meaning to 'meticulous'?$q$,null,$q$["modest", "careful", "careless", "quick"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A meticulous person pays great attention to detail, which is what 'careful' expresses.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Choose the sentence that uses subject pronouns correctly.$q$,null,$q$["Her and me went to the market.", "Me and her went to the market.", "She and I went to the market.", "She and me went to the market."]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The subject form 'she' and 'I' is needed because they are the subject of 'went'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Choose the sentence with correct subject–verb agreement.$q$,null,$q$["The committee has submitted its report.", "The committees has submitted its report.", "The committee has submitted their reports.", "The committee have submitted its report."]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A committee acting as one unit takes a singular verb and the singular pronoun 'its'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Choose the correct use of 'fewer' or 'less': There are ____ cars on the road today than yesterday.$q$,null,$q$["lesser", "less", "least", "fewer"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$'Fewer' is used with countable nouns such as cars. 'Less' is used with uncountable ones.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Reading Comprehension$q$,'igeeks-v2','validated' from domains d where d.name=$q$Verbal Ability$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
-- ce-analytical: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A shop sold 40, 55, 35 and 50 pens on four consecutive days. What was the average number of pens sold per day?$q$,null,$q$["50", "45", "47", "42"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The total is 180 and 180 ÷ 4 = 45.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Revenue (in crore rupees) was 80 in 2022, 100 in 2023, 90 in 2024 and 126 in 2025. In which year was the percentage growth over the previous year the highest?$q$,null,$q$["2022", "2025", "2023", "2024"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Growth: 2023 = 25%, 2024 = −10%, 2025 = 40%. The highest growth is in 2025.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Using the same revenue figures (80, 100, 90, 126 crore rupees for 2022 to 2025), what was the percentage fall in revenue from 2023 to 2024?$q$,null,$q$["9%", "12.5%", "11.1%", "10%"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The fall is 10 out of the 2023 value of 100, which is 10%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A company's break-even point is the number of units at which revenue equals cost. Fixed costs are 20,000 rupees and each unit adds 50 rupees to profit after variable costs. How many units must be sold to break even?$q$,null,$q$["500", "200", "400", "1,000"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Break-even units = fixed cost ÷ contribution per unit = 20,000 ÷ 50 = 400.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Marks of seven students are 12, 7, 15, 9, 20, 11 and 7. What is the median mark?$q$,null,$q$["10", "12", "9", "11"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Sorted: 7, 7, 9, 11, 12, 15, 20. The middle (fourth) value is 11.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$The mean of five numbers is 20 and the median is 18. If the largest number is increased by 10, what happens?$q$,null,$q$["The mean stays 20 and the median becomes 28", "The mean becomes 30 and the median 28", "Both mean and median increase by 10", "The mean becomes 22 and the median stays 18"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The total rises by 10, so the mean rises by 2. The median is the middle value and is unaffected.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which value is closest to 19.8% of 2,520?$q$,null,$q$["600", "400", "500", "450"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$19.8% is almost 20%, and 20% of 2,520 is 504, so the closest value is 500.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In a survey, 70% of people like tea and 60% like coffee. What is the minimum percentage that must like both?$q$,null,$q$["10%", "40%", "20%", "30%"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$70 + 60 = 130, which is 30 more than 100. At least 30% must therefore like both.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$In a class of 60 students, 35 like tea, 30 like coffee and 10 like neither. How many like both?$q$,null,$q$["10", "25", "15", "20"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$50 students like at least one drink. Both = 35 + 30 − 50 = 15.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A and B invest in a business: A puts in 6,000 rupees for 12 months and B puts in 8,000 rupees for 6 months. If the profit is 3,000 rupees, what is A's share?$q$,null,$q$["1,200", "2,000", "1,800", "1,500"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Capital × time is 72,000 for A and 48,000 for B, a ratio of 3:2, so A gets 3/5 of 3,000 = 1,800.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Trace the code: x = 3; y = 4; x = x + y; y = x − y; x = x − y. What are the final values of x and y?$q$,null,$q$["x = 4, y = 3", "x = 7, y = 3", "x = 3, y = 4", "x = 4, y = 7"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$After the three steps x = 7, y = 3, then x = 4. The values have been swapped.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does this loop give? sum = 0; for i = 1 to 5: sum = sum + i × i$q$,null,$q$["25", "30", "55", "15"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The sum is 1 + 4 + 9 + 16 + 25 = 55.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$i = 1; while i < 100: i = i × 2. How many times does the loop body run?$q$,null,$q$["8", "7", "5", "6"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$i takes the values 1, 2, 4, 8, 16, 32, 64, so the body runs 7 times and ends with i = 128.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$n = 10; count = 0; while n > 1: if n is even then n = n / 2 else n = 3n + 1; count = count + 1. What is the final count?$q$,null,$q$["6", "8", "5", "7"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$10 → 5 → 16 → 8 → 4 → 2 → 1 takes 6 steps.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$f(1) = 1 and f(n) = f(n − 1) + 2n for n > 1. What is f(5)?$q$,null,$q$["27", "29", "31", "25"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$f(2) = 5, f(3) = 11, f(4) = 19, f(5) = 29.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which expression is equivalent to NOT (A AND B)?$q$,null,$q$["A AND (NOT B)", "A OR B", "(NOT A) AND (NOT B)", "(NOT A) OR (NOT B)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$De Morgan's law: the negation of an AND is the OR of the negations.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A function maps 2 to 8, 3 to 27 and 4 to 64. What does it map 5 to?$q$,null,$q$["100", "75", "150", "125"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The outputs are cubes of the inputs, so 5 maps to 125.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Algorithms & Pseudo-code$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A study finds that cities with more ice cream sales also have more drowning incidents. Which explanation best avoids assuming that one causes the other?$q$,null,$q$["Drowning increases the appetite for ice cream", "Ice cream makes swimmers tired", "Hot weather increases both ice cream sales and swimming", "Ice cream vendors are often near water"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A third factor (hot weather) can drive both, so the correlation does not show that one causes the other.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Argument: Our new training programme worked, because exam scores rose after it was introduced. Which finding would most strengthen this argument?$q$,null,$q$["The training lasted two weeks", "A similar group that did not take the training showed no rise in scores", "Scores had been rising for several years", "Many students liked the trainer"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A comparison group with no improvement rules out other explanations for the rise.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A school says a new homework policy raised exam scores. Which fact would most weaken this claim?$q$,null,$q$["The exam was made easier this year", "The school has a new principal", "More students attended the exam", "The policy was announced in September"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$If the exam itself became easier, the higher scores may have nothing to do with the policy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Argument: Every successful founder works long hours. Rahul works long hours. So Rahul is a successful founder. What is the flaw?$q$,null,$q$["It assumes working long hours is enough for success", "It contradicts the first statement", "It uses an unfamiliar word", "It assumes Rahul is a founder"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The first statement says success requires long hours, not that long hours guarantee success.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$The statement 'If it rains, the match is cancelled' is true and the match was not cancelled. What must be true?$q$,null,$q$["The match was cancelled for another reason", "The match was held in the rain", "It did not rain", "It rained"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$If rain always leads to cancellation, then no cancellation means there was no rain.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the best conclusion from this? 'All employees at the firm hold a degree. Sana does not hold a degree.'$q$,null,$q$["The firm hires only graduates in some cases", "Sana is not an employee at the firm", "Sana will apply to the firm", "Sana is an employee without a degree"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$If every employee has a degree, someone without one cannot be an employee.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A claim states: 'Most users of the app are satisfied, so the app is the best on the market.' Which is the weakest part of this reasoning?$q$,null,$q$["It mentions the market", "It talks about users", "Satisfaction alone does not show that no other app is better", "It uses the word 'most'"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Being liked by most of its users does not compare the app with others.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Critical Reasoning$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the value of x? I. x² = 9. II. x > 0. Which is correct?$q$,null,$q$["Neither is enough even together", "Both statements together are needed", "Statement I alone is enough", "Statement II alone is enough"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$I gives x = 3 or −3. II removes −3. Together they give x = 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Sufficiency$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Is the integer n even? I. n + 1 is odd. II. n² is divisible by 4. Which is correct?$q$,null,$q$["Both together are needed", "Each statement alone is sufficient", "Only statement II is sufficient", "Only statement I is sufficient"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$If n + 1 is odd, n is even. If n² is divisible by 4, n must be even. Either statement settles it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Sufficiency$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$On an island, knights always tell the truth and knaves always lie. A says: 'B is a knave.' B says: 'A and I are of the same type.' What are A and B?$q$,null,$q$["A is a knave and B is a knight", "Both are knights", "Both are knaves", "A is a knight and B is a knave"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$If A were a knave, B would be a knight and B's statement would be false, which is impossible. So A is a knight, B is a knave, and B's false statement is consistent.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A says 'B lies'. B says 'C lies'. C says 'A and B both lie'. Each is either always truthful or always lying. Who tells the truth?$q$,null,$q$["Only A", "A and C", "Only C", "Only B"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Testing the cases, the only consistent assignment is that B is truthful and A and C lie.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Three boxes are labelled Apples, Oranges and Mixed, but every label is wrong. You may take one fruit from one box without looking inside. Which box should you pick from to fix all labels?$q$,null,$q$["The box labelled Apples", "Any box works equally well", "The box labelled Oranges", "The box labelled Mixed"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The Mixed box must be pure. Whatever fruit you draw tells you its true contents, and the other two follow because their labels are wrong.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Nine coins look identical but one is heavier. What is the minimum number of weighings on a balance scale that guarantees finding it?$q$,null,$q$["2", "3", "1", "4"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Split into three groups of three. One weighing finds the group, and a second finds the coin.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Amit, Bina and Chetan own a cat, a dog and a parrot, one each. Amit owns neither the dog nor the parrot. Chetan does not own the dog. Who owns the parrot?$q$,null,$q$["Bina", "Amit", "Chetan", "Cannot be determined"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Amit owns the cat. Chetan cannot have the dog, so Chetan has the parrot and Bina has the dog.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A farmer must take a wolf, a goat and a cabbage across a river in a boat that carries him and one item. The wolf eats the goat and the goat eats the cabbage if left alone. What should he take first?$q$,null,$q$["The wolf", "The goat", "The cabbage", "Nothing"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Taking the goat first leaves the wolf and the cabbage together, which is safe. Taking anything else leaves the goat in danger.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Logic Puzzles$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$The chance of rain is 30% on each of two days, independently. What is the probability of at least one rainy day?$q$,null,$q$["49%", "60%", "9%", "51%"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The chance of no rain on both days is 0.7 × 0.7 = 0.49, so at least one rainy day has probability 0.51.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Probability & Estimation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A person types 40 words per minute. A page has 300 words. How many minutes are needed to type 12 pages?$q$,null,$q$["120", "90", "80", "100"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$12 pages hold 3,600 words, and 3,600 ÷ 40 = 90 minutes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Probability & Estimation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A tank holds 50 litres and leaks 2 litres per hour. It is filled at 10 am. At what time does it become empty?$q$,null,$q$["10 am the next day", "11 am the next day", "10 pm the same day", "9 pm the same day"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$50 ÷ 2 = 25 hours, and 25 hours after 10 am is 11 am the next day.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Probability & Estimation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Two people work in parallel on tasks A (2 hours), B (3 hours, which must follow A) and C (1 hour, independent). What is the minimum total time?$q$,null,$q$["4 hours", "6 hours", "5 hours", "3 hours"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A then B form a chain of 5 hours. The second person does C during that time, so the total is 5 hours.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Probability & Estimation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A meeting is at 4:00 pm IST. London is 5.5 hours behind IST (ignore daylight saving). What is the local time in London?$q$,null,$q$["10:30 am", "11:30 am", "10:00 am", "9:30 am"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$4:00 pm minus 5 hours 30 minutes is 10:30 am.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Probability & Estimation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Six people shake hands once with everyone else in the group. How many handshakes take place?$q$,null,$q$["12", "15", "30", "36"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The number of handshakes is C(6, 2) = 15.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A staircase pattern uses 1, 3, 6, 10 blocks in its first four steps. How many blocks does the 8th figure use?$q$,null,$q$["45", "32", "36", "28"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$These are triangular numbers n(n+1)/2. For n = 8 the count is 36.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$One triangle needs 3 matchsticks, two triangles in a row need 5, and three need 7. How many matchsticks are needed for 20 triangles in a row?$q$,null,$q$["60", "41", "40", "43"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The count is 2n + 1, so 20 triangles need 41 sticks.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A rectangular field has a fixed perimeter of 40 metres. What is the maximum possible area in square metres?$q$,null,$q$["99", "96", "110", "100"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$For a fixed perimeter the area is largest for a square. Each side is 10 m, so the area is 100.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A clock gains 5 minutes every hour. It was set correctly at noon. What time does it show when the true time is 6 pm?$q$,null,$q$["6:05 pm", "6:30 pm", "6:25 pm", "6:35 pm"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$In 6 hours it gains 30 minutes, so it shows 6:30 pm.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A bag has 3 red and 2 blue balls. One red ball is removed. What is the chance that the next ball drawn is red?$q$,null,$q$["1/2", "3/5", "3/4", "2/5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$After removing one red ball, 2 of the remaining 4 balls are red.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which fraction is the greatest? 5/8, 7/11, 3/5, 2/3$q$,null,$q$["2/3", "3/5", "7/11", "5/8"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$As decimals: 0.625, 0.636, 0.6 and 0.667. The largest is 2/3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$If all rectangles are shapes with four sides and figure Z has five sides, what can you conclude?$q$,null,$q$["Z is not a rectangle", "Z is a square", "Nothing can be said", "Z is a rectangle"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A rectangle must have four sides, so a five-sided figure cannot be one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A team of 4 completes one third of a task in 5 days. How many more days will 6 people take to finish, at the same rate per person?$q$,null,$q$["10", "6.67", "7.5", "5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$One person does 1/60 of the task per day, so 6 people do 1/10 per day. The remaining 2/3 takes 20/3 days.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Patterns & Optimisation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A bar chart shows monthly sales of 30, 45, 25 and 40 units for January to April. In which month were sales the lowest?$q$,null,$q$["January", "March", "February", "April"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The values are Jan 30, Feb 45, Mar 25 and Apr 40, so March has the smallest value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Daily temperatures in a week were Monday 31, Tuesday 33, Wednesday 29, Thursday 35 and Friday 32 degrees Celsius. On which day was it hottest?$q$,null,$q$["Monday", "Tuesday", "Friday", "Thursday"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The highest reading is 35, which was on Thursday.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A recipe needs 3 cups of flour for 12 biscuits. How many cups are needed for 36 biscuits?$q$,null,$q$["6", "12", "9", "8"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$36 biscuits is three times the recipe, so 3 × 3 = 9 cups.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A pie chart of a 2,000-person survey shows that 25% chose option A. How many people chose option A?$q$,null,$q$["800", "250", "400", "500"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$25% of 2,000 = 2,000 ÷ 4 = 500.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the value of 8 + 6 × 2 − 4 ÷ 2?$q$,null,$q$["12", "26", "24", "18"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Multiplication and division come first: 6 × 2 = 12 and 4 ÷ 2 = 2. Then 8 + 12 − 2 = 18.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$A train leaves at 9:45 am and arrives at 12:10 pm. How long is the journey?$q$,null,$q$["2 hours 15 minutes", "2 hours 35 minutes", "2 hours 25 minutes", "3 hours 25 minutes"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$From 9:45 to 12:00 is 2 hours 15 minutes, and 10 more minutes make 2 hours 25 minutes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$count = 0; for i = 1 to 10: if i is even then count = count + 1. What is the value of count at the end?$q$,null,$q$["4", "10", "5", "6"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The even numbers from 1 to 10 are 2, 4, 6, 8 and 10, so count is 5.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A phone costing 18,000 rupees is bought on a 12-month instalment plan with total interest of 1,800 rupees. What is the monthly instalment in rupees?$q$,null,$q$["1,650", "1,500", "1,800", "1,350"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Total payable = 18,000 + 1,800 = 19,800, and 19,800 ÷ 12 = 1,650.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A company's sales in the first three quarters were 200, 250 and 300 units. The yearly average per quarter was 275. How many units were sold in the fourth quarter?$q$,null,$q$["375", "325", "300", "350"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The yearly total is 4 × 275 = 1,100. The fourth quarter is 1,100 − 750 = 350.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$How many different 3-letter codes can be made from the letters A, B, C, D, E if no letter repeats and order matters?$q$,null,$q$["125", "10", "120", "60"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The number of arrangements is 5 × 4 × 3 = 60.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A fair coin is tossed 3 times. What is the probability of getting exactly two heads?$q$,null,$q$["1/8", "1/4", "3/8", "1/2"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Of the 8 equally likely outcomes, HHT, HTH and THH have exactly two heads: 3/8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A sorted list of 1,000 items is searched with binary search. What is the largest number of comparisons that may be needed?$q$,null,$q$["8", "500", "10", "100"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Each comparison halves the list. Since 2¹⁰ = 1,024 ≥ 1,000, at most 10 comparisons are needed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Using the 'rule of 72', roughly how many years does it take for money to double at 9% annual compound growth?$q$,null,$q$["9", "8", "6", "12"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The rule of 72 gives 72 ÷ 9 = 8 years.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$A shirt is marked 1,200 rupees with 25% off. A second shop sells the same shirt for 950 rupees. Which is cheaper and by how much?$q$,null,$q$["The first shop, by 250 rupees", "Both are equal", "The second shop, by 50 rupees", "The first shop, by 50 rupees"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The first shop sells at 900 rupees, which is 50 rupees less than 950.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$In a table, A scored 60, B scored 75 and C scored 90 in a test marked out of 120. Who scored exactly 62.5%?$q$,null,$q$["B", "A", "C", "Nobody"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$75 out of 120 is 62.5%.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Interpretation$q$,'igeeks-v2','validated' from domains d where d.name=$q$Analytical Thinking$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
