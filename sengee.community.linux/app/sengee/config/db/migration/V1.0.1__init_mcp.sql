CREATE TABLE moo_mcp_metrics
(
    mt_id         VARCHAR(24) NOT NULL,
    res_type      VARCHAR(16) NOT NULL,
    res_id        VARCHAR(24) NULL,
    last_acc_time BIGINT      NULL,
    avg_rsp_mills INT         NULL,
    ttl_acc_cnt   BIGINT      NULL,
    acc_cnt_5m    BIGINT      NULL,
    acc_cnt_1d    BIGINT      NULL,
    evl_scr       DOUBLE      NULL,
    CONSTRAINT pk_moo_mcp_metrics PRIMARY KEY (mt_id)
);

CREATE TABLE moo_mcp_prompt
(
    res_id             VARCHAR(24)   NOT NULL,
    `description`      VARCHAR(4000) NULL,
    res_type           VARCHAR(32)   NULL,
    original           BIT(1)        NULL,
    `visible`          BIT(1)        NULL,
    modifiable         BIT(1)        NULL,
    i18n_id            VARCHAR(4000) NULL,
    group_uri          VARCHAR(384)  NULL,
    res_name           VARCHAR(128)  NOT NULL,
    alias              VARCHAR(128)  NULL,
    ordinal            INT           NULL,
    tags               VARCHAR(512)  NULL,
    uri                VARCHAR(1024) NOT NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    srv_type           VARCHAR(16)   NOT NULL,
    graph_xml          LONGTEXT      NULL,
    mcp_srv_id         VARCHAR(24)   NULL,
    CONSTRAINT pk_moo_mcp_prompt PRIMARY KEY (res_id)
);

CREATE TABLE moo_mcp_res
(
    res_id             VARCHAR(24)   NOT NULL,
    `description`      VARCHAR(4000) NULL,
    res_type           VARCHAR(32)   NULL,
    original           BIT(1)        NULL,
    `visible`          BIT(1)        NULL,
    modifiable         BIT(1)        NULL,
    i18n_id            VARCHAR(4000) NULL,
    group_uri          VARCHAR(384)  NULL,
    res_name           VARCHAR(128)  NOT NULL,
    alias              VARCHAR(128)  NULL,
    ordinal            INT           NULL,
    tags               VARCHAR(512)  NULL,
    uri                VARCHAR(1024) NOT NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    srv_type           VARCHAR(16)   NOT NULL,
    impl_type          VARCHAR(16)   NOT NULL,
    mime_type          VARCHAR(64)   NULL,
    template           BIT(1)        NULL,
    mcp_srv_id         VARCHAR(24)   NULL,
    CONSTRAINT pk_moo_mcp_res PRIMARY KEY (res_id)
);

CREATE TABLE moo_mcp_srv
(
    res_id             VARCHAR(24)   NOT NULL,
    `description`      VARCHAR(4000) NULL,
    res_type           VARCHAR(32)   NULL,
    original           BIT(1)        NULL,
    `visible`          BIT(1)        NULL,
    modifiable         BIT(1)        NULL,
    i18n_id            VARCHAR(4000) NULL,
    group_uri          VARCHAR(384)  NULL,
    res_name           VARCHAR(128)  NOT NULL,
    alias              VARCHAR(128)  NULL,
    ordinal            INT           NULL,
    tags               VARCHAR(512)  NULL,
    uri                VARCHAR(1024) NOT NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    srv_type           VARCHAR(16)   NOT NULL,
    srv_node           VARCHAR(128)  NULL,
    srv_url            VARCHAR(1024) NULL,
    ver                VARCHAR(64)   NULL,
    s_res              INT           NULL,
    s_prompts          INT           NULL,
    s_tools            INT           NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_moo_mcp_srv PRIMARY KEY (res_id)
);

CREATE TABLE moo_mcp_tool
(
    res_id             VARCHAR(24)   NOT NULL,
    `description`      VARCHAR(4000) NULL,
    res_type           VARCHAR(32)   NULL,
    original           BIT(1)        NULL,
    `visible`          BIT(1)        NULL,
    modifiable         BIT(1)        NULL,
    i18n_id            VARCHAR(4000) NULL,
    group_uri          VARCHAR(384)  NULL,
    res_name           VARCHAR(128)  NOT NULL,
    alias              VARCHAR(128)  NULL,
    ordinal            INT           NULL,
    tags               VARCHAR(512)  NULL,
    uri                VARCHAR(1024) NOT NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    srv_type           VARCHAR(16)   NOT NULL,
    json_schema        LONGTEXT      NULL,
    mcp_srv_id         VARCHAR(24)   NULL,
    CONSTRAINT pk_moo_mcp_tool PRIMARY KEY (res_id)
);

CREATE INDEX IDX_MCP_METRICS_ID ON moo_mcp_metrics (res_id);

ALTER TABLE moo_mcp_prompt
    ADD CONSTRAINT FK_MOO_MCP_PROMPT_ON_MCP_SRV FOREIGN KEY (mcp_srv_id) REFERENCES moo_mcp_srv (res_id);

ALTER TABLE moo_mcp_res
    ADD CONSTRAINT FK_MOO_MCP_RES_ON_MCP_SRV FOREIGN KEY (mcp_srv_id) REFERENCES moo_mcp_srv (res_id);

ALTER TABLE moo_mcp_srv
    ADD CONSTRAINT FK_MOO_MCP_SRV_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE moo_mcp_tool
    ADD CONSTRAINT FK_MOO_MCP_TOOL_ON_MCP_SRV FOREIGN KEY (mcp_srv_id) REFERENCES moo_mcp_srv (res_id);
