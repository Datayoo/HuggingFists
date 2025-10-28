alter table gee_feature change last_modifiled_time last_modified_time datetime not null;
alter table gee_feature add column data_type longtext default null;
alter table gee_feature modify column value longtext default null;

alter table gee_ft_state modify column f_type longtext default null;
alter table gee_ft_state modify column f_value longtext default null;