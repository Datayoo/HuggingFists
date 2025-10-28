alter table gee_ft_state add column read_only bit(1) default null;
update gee_ft_state set read_only = false where read_only is null;