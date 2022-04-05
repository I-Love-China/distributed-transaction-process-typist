create
database tcc_point;
use
`tcc_point`;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE point
(
    id      bigint NOT NULL auto_increment primary key COMMENT '积分ID', -- 积分ID
    user_id bigint comment '用户ID',                                     -- 用户ID
    value   bigint NOT NULL DEFAULT 0 COMMENT '积分',                    -- 积分
    CONSTRAINT unique_user_id UNIQUE (user_id)
);