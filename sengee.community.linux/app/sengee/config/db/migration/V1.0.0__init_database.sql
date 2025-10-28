CREATE TABLE cho_api_calling_record
(
    res_id          VARCHAR(24)   NOT NULL,
    start_time      datetime      NOT NULL,
    start_nano_time BIGINT        NULL,
    duration        BIGINT        NULL,
    api_name        VARCHAR(128)  NULL,
    url             VARCHAR(1024) NULL,
    params          LONGTEXT      NULL,
    caller          VARCHAR(1024) NULL,
    running_state   VARCHAR(16)   NOT NULL,
    exception       LONGTEXT      NULL,
    CONSTRAINT pk_cho_api_calling_record PRIMARY KEY (res_id)
);

CREATE TABLE cho_api_ep
(
    res_id             VARCHAR(24)   NOT NULL,
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
    app_scope          VARCHAR(64)   NULL,
    method_type        VARCHAR(32)   NULL,
    api_enabled        BIT(1)        NULL,
    portrait           VARCHAR(256)  NULL,
    api_urls           LONGTEXT      NULL,
    params             LONGTEXT      NULL,
    graph_id           VARCHAR(24)   NULL,
    cs_metadata        VARCHAR(2048) NULL,
    headers_tpl        LONGTEXT      NULL,
    params_tpl         LONGTEXT      NULL,
    body_type          VARCHAR(32)   NULL,
    body_tpl           LONGTEXT      NULL,
    charset            VARCHAR(32)   NULL,
    result_type        VARCHAR(32)   NULL,
    result_exp         LONGTEXT      NULL,
    `description`      LONGTEXT      NULL,
    group_uri          VARCHAR(384)  NULL,
    api_type           VARCHAR(32)   NOT NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_cho_api_ep PRIMARY KEY (res_id)
);

CREATE TABLE gee_breakpoint
(
    bp_id        VARCHAR(24)   NOT NULL,
    bp_operator  VARCHAR(24)   NOT NULL,
    bp_port      VARCHAR(255)  NULL,
    enabled      BIT(1)        NULL,
    bp_condition VARCHAR(1024) NULL,
    process_id   VARCHAR(255)  NULL,
    creator      VARCHAR(256)  NOT NULL,
    CONSTRAINT pk_gee_breakpoint PRIMARY KEY (bp_id)
);

CREATE TABLE gee_cs_metadata
(
    csm_id      VARCHAR(24) NOT NULL,
    memento_id  VARCHAR(24) NULL,
    port_name   VARCHAR(64) NULL,
    cs_metadata LONGTEXT    NULL,
    CONSTRAINT pk_gee_cs_metadata PRIMARY KEY (csm_id)
);

CREATE TABLE gee_dict
(
    res_id             VARCHAR(24)   NOT NULL,
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
    tab_name           VARCHAR(32)   NULL,
    dict_descriptor    LONGTEXT      NULL,
    CONSTRAINT pk_gee_dict PRIMARY KEY (res_id)
);

CREATE TABLE gee_doc
(
    doc_id             VARCHAR(24)   NOT NULL,
    last_modified_time datetime      NULL,
    created_time       datetime      NULL,
    doc_name           VARCHAR(64)   NOT NULL,
    ext_name           VARCHAR(64)   NULL,
    owner_id           VARCHAR(24)   NULL,
    rel_type           VARCHAR(64)   NULL,
    note               VARCHAR(4000) NULL,
    content            BLOB          NULL,
    CONSTRAINT pk_gee_doc PRIMARY KEY (doc_id)
);

CREATE TABLE gee_feature
(
    fea_id              VARCHAR(24)   NOT NULL,
    owner_id            VARCHAR(512)  NOT NULL,
    fea_name            VARCHAR(255)  NULL,
    value               VARCHAR(4000) NULL,
    last_modifiled_time datetime      NOT NULL,
    CONSTRAINT pk_gee_feature PRIMARY KEY (fea_id)
);

CREATE TABLE gee_ft_state
(
    fs_id    VARCHAR(24)  NOT NULL,
    owner_id VARCHAR(24)  NOT NULL,
    f_name   VARCHAR(64)  NOT NULL,
    f_type   VARCHAR(64)  NOT NULL,
    f_value  VARCHAR(256) NOT NULL,
    CONSTRAINT pk_gee_ft_state PRIMARY KEY (fs_id)
);

CREATE TABLE gee_func
(
    res_id             VARCHAR(24)   NOT NULL,
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
    version            VARCHAR(64)   NULL,
    func_fmwk          VARCHAR(32)   NULL,
    expr               VARCHAR(512)  NULL,
    imper              VARCHAR(512)  NULL,
    provider           VARCHAR(1024) NULL,
    note               LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_func PRIMARY KEY (res_id)
);

CREATE TABLE gee_graph_var
(
    var_id         VARCHAR(24)   NOT NULL,
    ordinal        INT           NULL,
    var_type       VARCHAR(32)   NOT NULL,
    var_name       VARCHAR(128)  NOT NULL,
    alias          VARCHAR(128)  NULL,
    expr           LONGTEXT      NULL,
    compox         LONGTEXT      NULL,
    optional       BIT(1)        NULL,
    use_param_name BIT(1)        NULL,
    `description`  VARCHAR(4000) NULL,
    owner_id       VARCHAR(24)   NULL,
    ref_ops        VARCHAR(1024) NULL,
    memento_id     VARCHAR(24)   NOT NULL,
    CONSTRAINT pk_gee_graph_var PRIMARY KEY (var_id)
);

CREATE TABLE gee_group
(
    res_id             VARCHAR(24)   NOT NULL,
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
    icon_path          VARCHAR(128)  NULL,
    parent_id          VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_group PRIMARY KEY (res_id)
);

CREATE TABLE gee_io_action
(
    io_id        VARCHAR(24)   NOT NULL,
    io_type      VARCHAR(16)   NOT NULL,
    entity_type  VARCHAR(32)   NULL,
    media_type   VARCHAR(64)   NOT NULL,
    location     VARCHAR(1024) NULL,
    cs_metadata  LONGTEXT      NULL,
    r_cnt        BIGINT        NULL,
    r_size       BIGINT        NULL,
    op_id        VARCHAR(24)   NULL,
    op_name      VARCHAR(128)  NULL,
    fop_id       VARCHAR(128)  NULL,
    pt_id        VARCHAR(24)   NULL,
    pj_id        VARCHAR(24)   NULL,
    pg_id        VARCHAR(24)   NULL,
    res_space    VARCHAR(128)  NULL,
    created_time datetime      NULL,
    CONSTRAINT pk_gee_io_action PRIMARY KEY (io_id)
);

CREATE TABLE gee_io_style
(
    is_id       VARCHAR(24)  NOT NULL,
    op_id       VARCHAR(24)  NULL,
    op_name     VARCHAR(256) NULL,
    input       BIT(1)       NULL,
    solid       BIT(1)       NULL,
    etity_type  VARCHAR(32)  NULL,
    media_type  VARCHAR(32)  NOT NULL,
    cs_metadata LONGTEXT     NULL,
    memento_id  VARCHAR(24)  NULL,
    CONSTRAINT pk_gee_io_style PRIMARY KEY (is_id)
);

CREATE TABLE gee_job_link
(
    res_id             VARCHAR(24)  NOT NULL,
    link_type          VARCHAR(64)  NULL,
    src_id             VARCHAR(24)  NULL,
    dst_id             VARCHAR(24)  NULL,
    last_modified_time datetime     NOT NULL,
    created_time       datetime     NOT NULL,
    deleted_time       datetime     NULL,
    creator            VARCHAR(256) NOT NULL,
    last_modifier      VARCHAR(256) NOT NULL,
    CONSTRAINT pk_gee_job_link PRIMARY KEY (res_id)
);

CREATE TABLE gee_jsch_profile
(
    res_id             VARCHAR(24)   NOT NULL,
    res_name           VARCHAR(128)  NOT NULL,
    tags               VARCHAR(512)  NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    res_clu_type       VARCHAR(32)   NULL,
    owner_id           VARCHAR(24)   NULL,
    d_props            LONGTEXT      NULL,
    r_props            LONGTEXT      NULL,
    cr_id              VARCHAR(24)   NULL,
    scr_id             VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_jsch_profile PRIMARY KEY (res_id)
);

CREATE TABLE gee_llm_agent
(
    res_id             VARCHAR(24)   NOT NULL,
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
    lang               VARCHAR(32)   NULL,
    model              VARCHAR(256)  NULL,
    model_family       VARCHAR(256)  NULL,
    agent_role         VARCHAR(128)  NULL,
    assistant_role     VARCHAR(128)  NULL,
    user_role          VARCHAR(128)  NULL,
    app_ctx            LONGTEXT      NULL,
    tool_ctx           LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_llm_agent PRIMARY KEY (res_id)
);

CREATE TABLE gee_mod_release_tracker
(
    trk_id   VARCHAR(24) NOT NULL,
    graph_id VARCHAR(24) NULL,
    job_id   VARCHAR(24) NULL,
    op_id    VARCHAR(24) NULL,
    model_id VARCHAR(24) NULL,
    CONSTRAINT pk_gee_mod_release_tracker PRIMARY KEY (trk_id)
);

CREATE TABLE gee_model
(
    res_id             VARCHAR(24)   NOT NULL,
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
    model_type         VARCHAR(128)  NULL,
    cm_id              VARCHAR(255)  NULL,
    model_cat          VARCHAR(128)  NULL,
    mod_fmt            VARCHAR(64)   NULL,
    group_id           VARCHAR(24)   NULL,
    tpl_id             VARCHAR(24)   NULL,
    provider           VARCHAR(255)  NULL,
    model_st           VARCHAR(128)  NULL,
    CONSTRAINT pk_gee_model PRIMARY KEY (res_id)
);

CREATE TABLE gee_model_memento
(
    mem_id             VARCHAR(24)  NOT NULL,
    last_modified_time datetime     NOT NULL,
    created_time       datetime     NOT NULL,
    deleted_time       datetime     NULL,
    creator            VARCHAR(256) NOT NULL,
    last_modifier      VARCHAR(256) NOT NULL,
    version            VARCHAR(64)  NULL,
    algor              VARCHAR(128) NULL,
    content_id         VARCHAR(24)  NULL,
    uvm_id             VARCHAR(24)  NULL,
    enabled            BIT(1)       NULL,
    model_id           VARCHAR(24)  NULL,
    CONSTRAINT pk_gee_model_memento PRIMARY KEY (mem_id)
);

CREATE TABLE gee_moo_bundle
(
    res_id             VARCHAR(24)   NOT NULL,
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
    model_id           VARCHAR(24)   NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_moo_bundle PRIMARY KEY (res_id)
);

CREATE TABLE gee_moo_bundle_relation
(
    res_id     VARCHAR(24) NOT NULL,
    bundle_id  VARCHAR(24) NULL,
    moo_svc_id VARCHAR(24) NULL,
    CONSTRAINT pk_gee_moo_bundle_relation PRIMARY KEY (res_id)
);

CREATE TABLE gee_moo_service
(
    res_id             VARCHAR(24)   NOT NULL,
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
    model_cat          VARCHAR(128)  NULL,
    model_type         VARCHAR(128)  NULL,
    rest_url           VARCHAR(1024) NULL,
    node_id            VARCHAR(24)   NULL,
    content_id         VARCHAR(24)   NULL,
    state              VARCHAR(128)  NULL,
    model_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_moo_service PRIMARY KEY (res_id)
);

CREATE TABLE gee_moo_service_tpl
(
    res_id             VARCHAR(24)   NOT NULL,
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
    model_cat          VARCHAR(128)  NULL,
    model_type         VARCHAR(128)  NULL,
    content_id         VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_moo_service_tpl PRIMARY KEY (res_id)
);

CREATE TABLE gee_op_impl
(
    res_id             VARCHAR(24)   NOT NULL,
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
    cmp_fmwk           VARCHAR(32)   NULL,
    clazz              VARCHAR(128)  NULL,
    provider           VARCHAR(1024) NULL,
    lattices           VARCHAR(255)  NULL,
    dep_policy         VARCHAR(32)   NULL,
    summary            LONGTEXT      NULL,
    cfk_params         LONGTEXT      NULL,
    prof_id            VARCHAR(24)   NULL,
    main_jar           VARCHAR(255)  NULL,
    dependencies       LONGTEXT      NULL,
    cp_descs           LONGTEXT      NULL,
    vs_descs           LONGTEXT      NULL,
    version            VARCHAR(64)   NULL,
    help_doc           LONGTEXT      NULL,
    CONSTRAINT pk_gee_op_impl PRIMARY KEY (res_id)
);

CREATE TABLE gee_op_port
(
    port_id        VARCHAR(24)  NOT NULL,
    owner_id       VARCHAR(24)  NOT NULL,
    extendable     BIT(1)       NULL,
    res_name       VARCHAR(128) NOT NULL,
    alias          VARCHAR(128) NULL,
    flow_data_type VARCHAR(128) NULL,
    conn_limit     INT          NULL,
    optional       BIT(1)       NULL,
    port_type      VARCHAR(64)  NOT NULL,
    lattice        VARCHAR(255) NULL,
    port_io_type   VARCHAR(64)  NOT NULL,
    tags           VARCHAR(512) NULL,
    cmp_fmwk       VARCHAR(32)  NULL,
    ordinal        INT          NULL,
    CONSTRAINT pk_gee_op_port PRIMARY KEY (port_id)
);

CREATE TABLE gee_op_prof
(
    res_id             VARCHAR(24)   NOT NULL,
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
    clazz              VARCHAR(128)  NULL,
    type               VARCHAR(128)  NULL,
    version            VARCHAR(64)   NULL,
    atom               BIT(1)        NULL,
    stk_mod            BIT(1)        NULL,
    breaker            BIT(1)        NULL,
    templatable        BIT(1)        NULL,
    replica            INT           NULL,
    provider           VARCHAR(255)  NULL,
    lattices           VARCHAR(255)  NULL,
    debug_cacheable    BIT(1)        NOT NULL,
    summary            LONGTEXT      NULL,
    params             LONGTEXT      NULL,
    main_jar           VARCHAR(255)  NULL,
    dependencies       LONGTEXT      NULL,
    cp_descs           LONGTEXT      NULL,
    help_doc           LONGTEXT      NULL,
    tpl_id             VARCHAR(24)   NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_op_prof PRIMARY KEY (res_id)
);

CREATE TABLE gee_op_tracker
(
    ot_id     VARCHAR(24)  NOT NULL,
    pt_id     VARCHAR(24)  NULL,
    op_id     VARCHAR(24)  NULL,
    op_alias  VARCHAR(256) NULL,
    parent_id VARCHAR(255) NULL,
    duration  BIGINT       NULL,
    ot_state  INT          NOT NULL,
    e_msg     LONGTEXT     NULL,
    CONSTRAINT pk_gee_op_tracker PRIMARY KEY (ot_id)
);

CREATE TABLE gee_pg_memento
(
    pgm_id             VARCHAR(24)   NOT NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    version_type       VARCHAR(16)   NOT NULL,
    version            VARCHAR(32)   NULL,
    enabled            BIT(1)        NULL,
    stream_mode        BIT(1)        NULL,
    external_id        VARCHAR(24)   NULL,
    main_cmd           VARCHAR(512)  NULL,
    cmd_params         VARCHAR(512)  NULL,
    main_archive       VARCHAR(512)  NULL,
    props              LONGTEXT      NULL,
    graph_xml          LONGTEXT      NULL,
    dependencies       LONGTEXT      NULL,
    note               VARCHAR(4000) NULL,
    pd_id              VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_pg_memento PRIMARY KEY (pgm_id)
);

CREATE TABLE gee_pg_relation
(
    rel_id   VARCHAR(24) NOT NULL,
    ordinal  INT         NULL,
    src_p_id VARCHAR(24) NULL,
    src_m_id VARCHAR(24) NULL,
    rel_type VARCHAR(32) NULL,
    dst_p_id VARCHAR(24) NULL,
    dst_m_id VARCHAR(24) NULL,
    CONSTRAINT pk_gee_pg_relation PRIMARY KEY (rel_id)
);

CREATE TABLE gee_port_tracker
(
    ptr_id     VARCHAR(24) NOT NULL,
    port       VARCHAR(32) NULL,
    pa_count   BIGINT      NULL,
    p_count    BIGINT      NULL,
    maxc_count BIGINT      NULL,
    in_rate    DOUBLE      NULL,
    out_rate   DOUBLE      NULL,
    pt_id      VARCHAR(24) NULL,
    tracker_id VARCHAR(24) NULL,
    CONSTRAINT pk_gee_port_tracker PRIMARY KEY (ptr_id)
);

CREATE TABLE gee_portrait
(
    res_id             VARCHAR(24)   NOT NULL,
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
    ext_name           VARCHAR(64)   NULL,
    mime_type          VARCHAR(128)  NULL,
    note               LONGTEXT      NULL,
    content            LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_portrait PRIMARY KEY (res_id)
);

CREATE TABLE gee_portrait_relation
(
    rel_id   VARCHAR(24)  NOT NULL,
    pt_id    VARCHAR(256) NULL,
    owner_id VARCHAR(256) NULL,
    rel_type VARCHAR(256) NULL,
    CONSTRAINT pk_gee_portrait_relation PRIMARY KEY (rel_id)
);

CREATE TABLE gee_proc_graph
(
    res_id             VARCHAR(24)   NOT NULL,
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
    graph_type         VARCHAR(32)   NULL,
    cmp_fmwk           VARCHAR(32)   NULL,
    cf_ver             VARCHAR(32)   NULL,
    dev_lang           VARCHAR(16)   NULL,
    cm_type            VARCHAR(255)  NOT NULL,
    encrypt            BIT(1)        NULL,
    cm_id              VARCHAR(255)  NULL,
    crm_id             VARCHAR(255)  NULL,
    portrait           LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    provider_id        VARCHAR(24)   NULL,
    provider_name      VARCHAR(128)  NULL,
    provider_type      VARCHAR(16)   NOT NULL,
    CONSTRAINT pk_gee_proc_graph PRIMARY KEY (res_id)
);

CREATE TABLE gee_proc_job
(
    res_id             VARCHAR(24)   NOT NULL,
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
    start_time         datetime      NULL,
    end_time           datetime      NULL,
    graph_type         VARCHAR(32)   NULL,
    cmp_fmwk           VARCHAR(32)   NULL,
    dbg_mode           BIT(1)        NULL,
    bk_supported       BIT(1)        NULL,
    sub_graph          LONGTEXT      NULL,
    trigger_type       VARCHAR(16)   NOT NULL,
    job_trigger        LONGTEXT      NULL,
    parallels          INT           NULL,
    priority           INT           NOT NULL,
    running_timeout    BIGINT        NULL,
    st_cycle           BIGINT        NULL,
    jsp_id             VARCHAR(24)   NULL,
    parent_id          VARCHAR(24)   NULL,
    process_id         VARCHAR(24)   NULL,
    memento_id         VARCHAR(24)   NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_proc_job PRIMARY KEY (res_id)
);

CREATE TABLE gee_proc_task
(
    pt_id          VARCHAR(24)  NOT NULL,
    job_type       VARCHAR(32)  NULL,
    created_time   datetime     NULL,
    run_start_time datetime     NULL,
    run_end_time   datetime     NULL,
    store_exp_time datetime     NULL,
    variables_json LONGTEXT     NULL,
    graph_xml      LONGTEXT     NULL,
    evt_trigger    VARCHAR(256) NULL,
    used_resources LONGTEXT     NULL,
    ot_state       VARCHAR(16)  NOT NULL,
    tck_url        VARCHAR(512) NULL,
    e_opid         VARCHAR(128) NULL,
    e_msg          LONGTEXT     NULL,
    trigger_type   VARCHAR(16)  NOT NULL,
    job_id         VARCHAR(24)  NULL,
    rel_task_id    VARCHAR(255) NULL,
    redo_task_id   VARCHAR(255) NULL,
    space_id       VARCHAR(128) NULL,
    group_uri      VARCHAR(384) NULL,
    cr_id          VARCHAR(24)  NULL,
    CONSTRAINT pk_gee_proc_task PRIMARY KEY (pt_id)
);

CREATE TABLE gee_process_type
(
    res_id             VARCHAR(24)   NOT NULL,
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
    graph_type         BIT(1)        NULL,
    CONSTRAINT pk_gee_process_type PRIMARY KEY (res_id)
);

CREATE TABLE gee_process_type_op_group
(
    res_id      VARCHAR(24) NOT NULL,
    pro_type_id VARCHAR(24) NULL,
    op_group_id VARCHAR(24) NULL,
    CONSTRAINT pk_gee_process_type_op_group PRIMARY KEY (res_id)
);

CREATE TABLE gee_project
(
    res_id             VARCHAR(24)   NOT NULL,
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
    start_time         datetime      NOT NULL,
    end_time           datetime      NOT NULL,
    CONSTRAINT pk_gee_project PRIMARY KEY (res_id)
);

CREATE TABLE gee_project_relation
(
    rel_id   VARCHAR(24) NOT NULL,
    ordinal  INT         NULL,
    prj_id   VARCHAR(24) NULL,
    res_type VARCHAR(64) NULL,
    rel_type VARCHAR(64) NULL,
    res_id   VARCHAR(24) NULL,
    CONSTRAINT pk_gee_project_relation PRIMARY KEY (rel_id)
);

CREATE TABLE gee_prompt
(
    res_id             VARCHAR(24)   NOT NULL,
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
    prompt_type        VARCHAR(32)   NULL,
    lang               VARCHAR(32)   NULL,
    model              VARCHAR(256)  NULL,
    model_family       VARCHAR(256)  NULL,
    prompt_temp        LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_prompt PRIMARY KEY (res_id)
);

CREATE TABLE gee_res_cluster
(
    res_id             VARCHAR(24)   NOT NULL,
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
    res_clu_type       VARCHAR(32)   NULL,
    svc_addr           VARCHAR(128)  NULL,
    props              LONGTEXT      NULL,
    CONSTRAINT pk_gee_res_cluster PRIMARY KEY (res_id)
);

CREATE TABLE gee_res_desc
(
    res_id             VARCHAR(24)   NOT NULL,
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
    module             VARCHAR(64)   NOT NULL,
    desc_cat           VARCHAR(512)  NOT NULL,
    desc_xml           LONGTEXT      NULL,
    cp_descs           LONGTEXT      NULL,
    big_portrait       LONGTEXT      NULL,
    CONSTRAINT pk_gee_res_desc PRIMARY KEY (res_id)
);

CREATE TABLE gee_res_qutoa_desc
(
    res_id             VARCHAR(24)   NOT NULL,
    res_name           VARCHAR(128)  NOT NULL,
    tags               VARCHAR(512)  NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    oyez_tag           VARCHAR(128)  NULL,
    resclu_id          VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_res_qutoa_desc PRIMARY KEY (res_id)
);

CREATE TABLE gee_res_type
(
    res_id             VARCHAR(24)   NOT NULL,
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
    temp_xml           LONGTEXT      NULL,
    CONSTRAINT pk_gee_res_type PRIMARY KEY (res_id)
);

CREATE TABLE gee_script
(
    res_id             VARCHAR(24)   NOT NULL,
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
    lang               VARCHAR(32)   NULL,
    entry_func         VARCHAR(512)  NULL,
    big_portrait       LONGTEXT      NULL,
    version            VARCHAR(64)   NULL,
    env_init           LONGTEXT      NULL,
    script             LONGTEXT      NULL,
    provider           VARCHAR(1024) NULL,
    note               LONGTEXT      NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_script PRIMARY KEY (res_id)
);

CREATE TABLE gee_space
(
    res_id             VARCHAR(24)   NOT NULL,
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
    parent_id          VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_space PRIMARY KEY (res_id)
);

CREATE TABLE gee_space_relation
(
    rel_id   VARCHAR(24) NOT NULL,
    ordinal  INT         NULL,
    space_id VARCHAR(24) NULL,
    res_type VARCHAR(64) NULL,
    rel_type VARCHAR(64) NULL,
    res_id   VARCHAR(24) NULL,
    CONSTRAINT pk_gee_space_relation PRIMARY KEY (rel_id)
);

CREATE TABLE gee_svc_settings
(
    res_id             VARCHAR(24)   NOT NULL,
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
    external_id        VARCHAR(32)   NULL,
    setting_xml        LONGTEXT      NULL,
    rd_id              VARCHAR(24)   NULL,
    group_id           VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_svc_settings PRIMARY KEY (res_id)
);

CREATE TABLE gee_tag
(
    tag_id   VARCHAR(24)   NOT NULL,
    owner_id VARCHAR(24)   NOT NULL,
    t_name   VARCHAR(64)   NOT NULL,
    t_value  VARCHAR(2048) NOT NULL,
    CONSTRAINT pk_gee_tag PRIMARY KEY (tag_id)
);

CREATE TABLE gee_unverified_model
(
    mod_id             VARCHAR(24)  NOT NULL,
    last_modified_time datetime     NOT NULL,
    created_time       datetime     NOT NULL,
    deleted_time       datetime     NULL,
    creator            VARCHAR(256) NOT NULL,
    last_modifier      VARCHAR(256) NOT NULL,
    model_cat          VARCHAR(128) NULL,
    model_name         VARCHAR(128) NULL,
    model_type         VARCHAR(128) NULL,
    algor              VARCHAR(128) NULL,
    mod_fmt            VARCHAR(64)  NULL,
    graph_id           VARCHAR(24)  NULL,
    job_id             VARCHAR(24)  NULL,
    task_id            VARCHAR(24)  NULL,
    op_id              VARCHAR(24)  NULL,
    CONSTRAINT pk_gee_unverified_model PRIMARY KEY (mod_id)
);

CREATE TABLE gee_user_profile
(
    res_id    VARCHAR(24)  NOT NULL,
    namespace VARCHAR(384) NULL,
    p_key     VARCHAR(384) NULL,
    p_value   LONGTEXT     NULL,
    prf_scope VARCHAR(32)  NULL,
    CONSTRAINT pk_gee_user_profile PRIMARY KEY (res_id)
);

CREATE TABLE gee_variable
(
    var_id         VARCHAR(24)   NOT NULL,
    ordinal        INT           NULL,
    var_type       VARCHAR(32)   NOT NULL,
    var_name       VARCHAR(128)  NOT NULL,
    alias          VARCHAR(128)  NULL,
    expr           LONGTEXT      NULL,
    compox         LONGTEXT      NULL,
    optional       BIT(1)        NULL,
    use_param_name BIT(1)        NULL,
    `description`  VARCHAR(4000) NULL,
    owner_id       VARCHAR(24)   NULL,
    CONSTRAINT pk_gee_variable PRIMARY KEY (var_id)
);

CREATE TABLE morten_flow
(
    res_id             VARCHAR(24)   NOT NULL,
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
    conf               LONGTEXT      NULL,
    node_id            VARCHAR(24)   NULL,
    CONSTRAINT pk_morten_flow PRIMARY KEY (res_id)
);

CREATE TABLE morten_node
(
    res_id             VARCHAR(24)   NOT NULL,
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
    ip_addr            VARCHAR(64)   NULL,
    location           VARCHAR(256)  NULL,
    CONSTRAINT pk_morten_node PRIMARY KEY (res_id)
);

CREATE TABLE srvx_comment
(
    comment_id         VARCHAR(24)   NOT NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    parent_id          VARCHAR(24)   NULL,
    content            VARCHAR(4000) NULL,
    owner_type         VARCHAR(64)   NOT NULL,
    owner_id           VARCHAR(24)   NOT NULL,
    forward_id         VARCHAR(24)   NULL,
    ref_id             VARCHAR(24)   NULL,
    CONSTRAINT pk_srvx_comment PRIMARY KEY (comment_id)
);

CREATE TABLE srvx_comment_follows
(
    srvx_comment_comment_id VARCHAR(24) NOT NULL,
    follows_comment_id      VARCHAR(24) NOT NULL,
    CONSTRAINT pk_srvx_comment_follows PRIMARY KEY (srvx_comment_comment_id, follows_comment_id)
);

CREATE TABLE srvx_doc
(
    doc_id             VARCHAR(24)   NOT NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    doc_name           VARCHAR(64)   NOT NULL,
    ext_name           VARCHAR(64)   NULL,
    owner_type         VARCHAR(64)   NOT NULL,
    owner_id           VARCHAR(24)   NOT NULL,
    rel_type           VARCHAR(64)   NOT NULL,
    note               VARCHAR(4000) NULL,
    lang               VARCHAR(8)    NOT NULL,
    content            BLOB          NULL,
    CONSTRAINT pk_srvx_doc PRIMARY KEY (doc_id)
);

CREATE TABLE srvx_feedback
(
    res_id             VARCHAR(24)   NOT NULL,
    res_name           VARCHAR(128)  NOT NULL,
    tags               VARCHAR(512)  NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    owner_type         VARCHAR(64)   NOT NULL,
    owner_id           VARCHAR(24)   NOT NULL,
    rel_type           VARCHAR(64)   NOT NULL,
    cat                VARCHAR(255)  NULL,
    level              INT           NULL,
    status             INT           NULL,
    points             INT           NULL,
    handler            VARCHAR(255)  NULL,
    content            BLOB          NULL,
    CONSTRAINT pk_srvx_feedback PRIMARY KEY (res_id)
);

CREATE TABLE srvx_i18n_text
(
    res_id     VARCHAR(24)   NOT NULL,
    lang       VARCHAR(8)    NOT NULL,
    txt        VARCHAR(1024) NOT NULL,
    owner_type VARCHAR(64)   NOT NULL,
    owner_id   VARCHAR(255)  NOT NULL,
    CONSTRAINT pk_srvx_i18n_text PRIMARY KEY (res_id)
);

CREATE TABLE srvx_topic
(
    res_id             VARCHAR(24)   NOT NULL,
    res_name           VARCHAR(128)  NOT NULL,
    tags               VARCHAR(512)  NULL,
    enabled            BIT(1)        NULL,
    json_props         VARCHAR(4000) NULL,
    res_space          VARCHAR(128)  NULL,
    last_modified_time datetime      NOT NULL,
    created_time       datetime      NOT NULL,
    deleted_time       datetime      NULL,
    creator            VARCHAR(256)  NOT NULL,
    last_modifier      VARCHAR(256)  NOT NULL,
    owner_id           VARCHAR(24)   NOT NULL,
    owner_type         VARCHAR(64)   NOT NULL,
    rel_type           VARCHAR(64)   NOT NULL,
    content            BLOB          NULL,
    parent_id          VARCHAR(24)   NULL,
    CONSTRAINT pk_srvx_topic PRIMARY KEY (res_id)
);

CREATE TABLE srvx_topic_child_topics
(
    srvx_topic_res_id   VARCHAR(24) NOT NULL,
    child_topics_res_id VARCHAR(24) NOT NULL,
    CONSTRAINT pk_srvx_topic_childtopics PRIMARY KEY (srvx_topic_res_id, child_topics_res_id)
);

CREATE TABLE srvx_upgrader
(
    doc_id             VARCHAR(24)  NOT NULL,
    res_name           VARCHAR(128) NOT NULL,
    file_path          VARCHAR(512) NOT NULL,
    last_modified_time datetime     NOT NULL,
    CONSTRAINT pk_srvx_upgrader PRIMARY KEY (doc_id)
);

ALTER TABLE srvx_comment_follows
    ADD CONSTRAINT uc_srvx_comment_follows_follows_comment UNIQUE (follows_comment_id);

ALTER TABLE srvx_topic_child_topics
    ADD CONSTRAINT uc_srvx_topic_child_topics_childtopics_res UNIQUE (child_topics_res_id);

CREATE INDEX IDX_GEE_DOC_OWNER_ID ON gee_doc (owner_id);

CREATE INDEX IDX_GEE_DSTG_ID ON gee_pg_relation (dst_p_id);

CREATE INDEX IDX_GEE_FEA_OWN_ID ON gee_feature (owner_id);

CREATE INDEX IDX_GEE_IOA_PT_ID ON gee_io_action (pt_id);

CREATE INDEX IDX_GEE_IOA_TYPE ON gee_io_action (io_type, media_type);

CREATE INDEX IDX_GEE_OPI_CF ON gee_op_impl (cmp_fmwk);

CREATE INDEX IDX_GEE_OP_FLOW_DATA_TYPE ON gee_op_port (flow_data_type);

CREATE INDEX IDX_GEE_OP_OWNER_ID ON gee_op_port (owner_id);

CREATE INDEX IDX_GEE_OP_TCK_PT_ID ON gee_op_tracker (pt_id);

CREATE INDEX IDX_GEE_PJ_TRI_TYPE ON gee_proc_job (trigger_type);

CREATE INDEX IDX_GEE_PORTRAIT_REL_OWNER_ID ON gee_portrait_relation (owner_id);

CREATE INDEX IDX_GEE_PRJR_PRJ_ID ON gee_project_relation (prj_id);

CREATE INDEX IDX_GEE_PT_CTIME ON gee_proc_task (created_time);

CREATE INDEX IDX_GEE_PT_OP_GROUP ON gee_process_type_op_group (pro_type_id, op_group_id);

CREATE INDEX IDX_GEE_PT_REL_TASK_ID ON gee_proc_task (rel_task_id);

CREATE INDEX IDX_GEE_PT_RTIME ON gee_proc_task (run_start_time);

CREATE INDEX IDX_GEE_PT_STATE_CTIME ON gee_proc_task (ot_state, created_time);

CREATE INDEX IDX_GEE_PT_STORE_EXP_TIME ON gee_proc_task (store_exp_time);

CREATE INDEX IDX_GEE_PT_TCK_PT_ID ON gee_port_tracker (pt_id);

CREATE INDEX IDX_GEE_SPACE_CREATED_TIME ON gee_io_action (res_space, created_time);

CREATE INDEX IDX_GEE_SRCG_ID ON gee_pg_relation (src_p_id);

CREATE INDEX IDX_GEE_VAR_OWNER_ID ON gee_variable (owner_id);

CREATE INDEX IDX_GOPF_G_URI ON gee_op_prof (group_uri);

CREATE INDEX IDX_GPG_G_URI ON gee_proc_graph (group_uri);

CREATE INDEX IDX_GPT_G_URI ON gee_proc_task (group_uri);

CREATE INDEX IDX_U_PRF_NS_KEY ON gee_user_profile (namespace, p_key);

ALTER TABLE cho_api_ep
    ADD CONSTRAINT FK_CHO_API_EP_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_func
    ADD CONSTRAINT FK_GEE_FUNC_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_graph_var
    ADD CONSTRAINT FK_GEE_GRAPH_VAR_ON_MEMENTO FOREIGN KEY (memento_id) REFERENCES gee_pg_memento (pgm_id);

CREATE INDEX IDX_GEE_G_VAR_MEMENTO_ID ON gee_graph_var (memento_id);

ALTER TABLE gee_group
    ADD CONSTRAINT FK_GEE_GROUP_ON_PARENT FOREIGN KEY (parent_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_job_link
    ADD CONSTRAINT FK_GEE_JOB_LINK_ON_DST FOREIGN KEY (dst_id) REFERENCES gee_proc_job (res_id);

ALTER TABLE gee_job_link
    ADD CONSTRAINT FK_GEE_JOB_LINK_ON_SRC FOREIGN KEY (src_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_jsch_profile
    ADD CONSTRAINT FK_GEE_JSCH_PROFILE_ON_CR FOREIGN KEY (cr_id) REFERENCES gee_res_qutoa_desc (res_id);

ALTER TABLE gee_jsch_profile
    ADD CONSTRAINT FK_GEE_JSCH_PROFILE_ON_SCR FOREIGN KEY (scr_id) REFERENCES gee_res_qutoa_desc (res_id);

ALTER TABLE gee_llm_agent
    ADD CONSTRAINT FK_GEE_LLM_AGENT_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_model_memento
    ADD CONSTRAINT FK_GEE_MODEL_MEMENTO_ON_MODEL FOREIGN KEY (model_id) REFERENCES gee_model (res_id);

ALTER TABLE gee_model
    ADD CONSTRAINT FK_GEE_MODEL_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_moo_bundle
    ADD CONSTRAINT FK_GEE_MOO_BUNDLE_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_op_impl
    ADD CONSTRAINT FK_GEE_OP_IMPL_ON_PROF FOREIGN KEY (prof_id) REFERENCES gee_op_prof (res_id);

ALTER TABLE gee_op_prof
    ADD CONSTRAINT FK_GEE_OP_PROF_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_pg_memento
    ADD CONSTRAINT FK_GEE_PG_MEMENTO_ON_PD FOREIGN KEY (pd_id) REFERENCES gee_proc_graph (res_id);

ALTER TABLE gee_portrait
    ADD CONSTRAINT FK_GEE_PORTRAIT_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_port_tracker
    ADD CONSTRAINT FK_GEE_PORT_TRACKER_ON_TRACKER FOREIGN KEY (tracker_id) REFERENCES gee_op_tracker (ot_id);

ALTER TABLE gee_proc_graph
    ADD CONSTRAINT FK_GEE_PROC_GRAPH_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_proc_job
    ADD CONSTRAINT FK_GEE_PROC_JOB_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_proc_job
    ADD CONSTRAINT FK_GEE_PROC_JOB_ON_JSP FOREIGN KEY (jsp_id) REFERENCES gee_jsch_profile (res_id);

ALTER TABLE gee_proc_job
    ADD CONSTRAINT FK_GEE_PROC_JOB_ON_PARENT FOREIGN KEY (parent_id) REFERENCES gee_proc_job (res_id);

ALTER TABLE gee_proc_job
    ADD CONSTRAINT FK_GEE_PROC_JOB_ON_PROCESS FOREIGN KEY (process_id) REFERENCES gee_proc_graph (res_id);

ALTER TABLE gee_proc_task
    ADD CONSTRAINT FK_GEE_PROC_TASK_ON_CR FOREIGN KEY (cr_id) REFERENCES gee_res_qutoa_desc (res_id);

ALTER TABLE gee_proc_task
    ADD CONSTRAINT FK_GEE_PROC_TASK_ON_JOB FOREIGN KEY (job_id) REFERENCES gee_proc_job (res_id);

ALTER TABLE gee_prompt
    ADD CONSTRAINT FK_GEE_PROMPT_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_res_qutoa_desc
    ADD CONSTRAINT FK_GEE_RES_QUTOA_DESC_ON_RESCLU FOREIGN KEY (resclu_id) REFERENCES gee_res_cluster (res_id);

ALTER TABLE gee_script
    ADD CONSTRAINT FK_GEE_SCRIPT_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

CREATE INDEX IDX_GEE_GROUP_ID ON gee_script (group_id);

ALTER TABLE gee_space
    ADD CONSTRAINT FK_GEE_SPACE_ON_PARENT FOREIGN KEY (parent_id) REFERENCES gee_space (res_id);

ALTER TABLE gee_svc_settings
    ADD CONSTRAINT FK_GEE_SVC_SETTINGS_ON_GROUP FOREIGN KEY (group_id) REFERENCES gee_group (res_id);

ALTER TABLE gee_svc_settings
    ADD CONSTRAINT FK_GEE_SVC_SETTINGS_ON_RD FOREIGN KEY (rd_id) REFERENCES gee_res_desc (res_id);

ALTER TABLE morten_flow
    ADD CONSTRAINT FK_MORTEN_FLOW_ON_NODE FOREIGN KEY (node_id) REFERENCES morten_node (res_id);

ALTER TABLE srvx_comment
    ADD CONSTRAINT FK_SRVX_COMMENT_ON_FORWARD FOREIGN KEY (forward_id) REFERENCES srvx_comment (comment_id);

ALTER TABLE srvx_comment
    ADD CONSTRAINT FK_SRVX_COMMENT_ON_REF FOREIGN KEY (ref_id) REFERENCES srvx_comment (comment_id);

ALTER TABLE srvx_topic
    ADD CONSTRAINT FK_SRVX_TOPIC_ON_PARENT FOREIGN KEY (parent_id) REFERENCES srvx_topic (res_id);

ALTER TABLE srvx_comment_follows
    ADD CONSTRAINT fk_srvcomfol_on_follows_comment FOREIGN KEY (follows_comment_id) REFERENCES srvx_comment (comment_id);

ALTER TABLE srvx_comment_follows
    ADD CONSTRAINT fk_srvcomfol_on_srvxcomment_comment FOREIGN KEY (srvx_comment_comment_id) REFERENCES srvx_comment (comment_id);

ALTER TABLE srvx_topic_child_topics
    ADD CONSTRAINT fk_srvtopchitop_on_childtopics_res FOREIGN KEY (child_topics_res_id) REFERENCES srvx_topic (res_id);

ALTER TABLE srvx_topic_child_topics
    ADD CONSTRAINT fk_srvtopchitop_on_srvxtopic_res FOREIGN KEY (srvx_topic_res_id) REFERENCES srvx_topic (res_id);
