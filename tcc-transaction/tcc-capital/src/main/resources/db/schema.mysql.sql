create
database `tcc_capital`;
use
`tcc_capital`;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE capital_account
(
    id             bigint         NOT NULL auto_increment primary key COMMENT '资金账户ID',
    balance_amount numeric(12, 2) NOT NULL DEFAULT 0 COMMENT '余额',
    user_id        bigint         NOT NULL COMMENT '用户ID',
    CONSTRAINT unique_user_id UNIQUE (user_id)
);

CREATE TABLE capital_order
(
    id                bigint         NOT NULL auto_increment primary key COMMENT '资金账户订单id', -- 资金账户ID
    user_id           bigint         NOT NULL COMMENT '用户ID',                                -- 用户ID
    merchant_order_no character varying(32) COMMENT '商家订单号',                                 -- 商家订单号
    amount            numeric(12, 2) NOT NULL COMMENT '金额',                                  -- 金额
    status            varchar(20)    NOT NULL COMMENT '状态'                                   -- 状态
);
