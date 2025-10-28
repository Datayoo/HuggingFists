alter table gee_pg_memento add column rsp_mode bit(1) default null;
update gee_pg_memento set rsp_mode = false where rsp_mode is null;