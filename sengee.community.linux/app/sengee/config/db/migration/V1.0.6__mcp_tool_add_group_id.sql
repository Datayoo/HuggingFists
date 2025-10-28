alter table moo_mcp_tool add column group_id varchar(24) default  null;
update moo_mcp_tool t  set group_id = (select group_id from moo_mcp_srv s where s.res_id=t.mcp_srv_id);