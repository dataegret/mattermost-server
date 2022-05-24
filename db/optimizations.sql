create index concurrently posts_rootid_createat_partial on posts using btree(rootid, createat) where coalesce(deleteat, 0) = 0;
