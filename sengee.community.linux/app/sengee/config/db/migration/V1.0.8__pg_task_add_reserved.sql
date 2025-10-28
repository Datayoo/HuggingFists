alter table gee_proc_task add column reserved bit(1) default null;
update gee_proc_task set reserved = false where reserved is null;