/* SQLINES DEMO *** ****
 *   用户账户 TCC 库
 ***********************/

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TCC_TRANSACTION_ACCOUNT
(
    TRANSACTION_ID   int NOT NULL auto_increment primary key COMMENT 'ID',
    DOMAIN           varchar(100) DEFAULT NULL COMMENT '事务域',
    GLOBAL_TX_ID     varbinary(32) NOT NULL COMMENT '全局事务ID',
    BRANCH_QUALIFIER varbinary(32) NOT NULL COMMENT '分支事务标识符',
    CONTENT          varbinary(8000) NOT NULL COMMENT '事务对象内容',
    STATUS           int          DEFAULT NULL COMMENT '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)',
    TRANSACTION_TYPE int          DEFAULT NULL COMMENT '事务类型: 1 主事务；2 分支事务',
    RETRIED_COUNT    int          DEFAULT NULL COMMENT '事务恢复重试次数',
    CREATE_TIME      datetime     DEFAULT NULL COMMENT '创建时间',
    LAST_UPDATE_TIME datetime     DEFAULT NULL COMMENT '最后更新时间',
    VERSION          int          DEFAULT NULL COMMENT '版本号',
    CONSTRAINT unique_tx UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
);


/* SQLINES DEMO *** ****
 *   积分账户 TCC 库
 ***********************/

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TCC_TRANSACTION_POINT
(
    TRANSACTION_ID   int NOT NULL auto_increment primary key COMMENT 'ID',
    DOMAIN           character varying(100) DEFAULT NULL COMMENT '事务域',
    GLOBAL_TX_ID     varbinary(32) NOT NULL COMMENT '全局事务ID',
    BRANCH_QUALIFIER varbinary(32) NOT NULL COMMENT '分支事务标识符',
    CONTENT          varbinary(8000) NOT NULL COMMENT '事务对象内容',
    STATUS           int                    DEFAULT NULL COMMENT '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)',
    TRANSACTION_TYPE int                    DEFAULT NULL COMMENT '事务类型: 1 主事务；2 分支事务',
    RETRIED_COUNT    int                    DEFAULT NULL COMMENT '事务恢复重试次数',
    CREATE_TIME      datetime               DEFAULT NULL COMMENT '创建时间',
    LAST_UPDATE_TIME datetime               DEFAULT NULL COMMENT '最后更新时间',
    VERSION          int                    DEFAULT NULL COMMENT '版本号',
    CONSTRAINT unique_tx_point UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
);

/* SQLINES DEMO *** ****
 *   资金账户 TCC 库
 ***********************/

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TCC_TRANSACTION_CAPITAL
(
    TRANSACTION_ID   int NOT NULL primary key auto_increment COMMENT 'ID',
    DOMAIN           character varying(100) DEFAULT NULL COMMENT '事务域',
    GLOBAL_TX_ID     varbinary(32) NOT NULL COMMENT '全局事务ID',
    BRANCH_QUALIFIER varbinary(32) NOT NULL COMMENT '分支事务标识符',
    CONTENT          varbinary(8000) NOT NULL COMMENT '事务对象内容',
    STATUS           int                    DEFAULT NULL COMMENT '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)',
    TRANSACTION_TYPE int                    DEFAULT NULL COMMENT '事务类型: 1 主事务；2 分支事务',
    RETRIED_COUNT    int                    DEFAULT NULL COMMENT '事务恢复重试次数',
    CREATE_TIME      datetime               DEFAULT NULL COMMENT '创建时间',
    LAST_UPDATE_TIME datetime               DEFAULT NULL COMMENT '最后更新时间',
    VERSION          int                    DEFAULT NULL COMMENT '版本号',
    CONSTRAINT unique_tx_capital UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
);