alter table students add column password_hash text, add column password_salt text, add column login_tries int default 0, add column locked_until timestamptz;
