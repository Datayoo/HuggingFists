alter table gee_pg_memento add column design_mode varchar(32) default  null;
update gee_pg_memento set design_mode = 'CLASSIC' where design_mode is null;

alter table gee_proc_graph add column provider_type varchar(16) default  null;
update gee_proc_graph set provider_type = 'LOCAL' where provider_type is null;
alter table gee_proc_graph add column provider_id varchar(24) default  null;
alter table gee_proc_graph add column provider_name varchar(128) default  null;