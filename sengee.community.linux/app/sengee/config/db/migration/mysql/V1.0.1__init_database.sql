update gee_pg_memento set design_mode = 'CLASSIC' where design_mode is null;
update gee_proc_graph set provider_type = 'LOCAL' where provider_type is null;
update moo_mcp_tool t  set group_id = (select group_id from moo_mcp_srv s where s.res_id=t.mcp_srv_id);
update gee_pg_memento set rsp_mode = false where rsp_mode is null;
update gee_proc_task set reserved = false where reserved is null;
update gee_ft_state set read_only = false where read_only is null;
update gee_proc_graph set cm_type = 'batch' where cm_type is null or cm_type='';
update gee_pg_memento set stream_mode = false where stream_mode is null;