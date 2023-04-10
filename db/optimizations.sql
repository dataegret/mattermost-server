create index concurrently posts_rootid_createat_partial on posts using btree(rootid, createat) where coalesce(deleteat, 0) = 0;
create index concurrently idx_posts_message_txt2 on posts using gin(to_tsvector('russian'::regconfig, message::text));
