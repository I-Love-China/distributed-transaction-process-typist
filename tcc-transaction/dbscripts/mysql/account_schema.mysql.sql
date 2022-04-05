CREATE DATABASE `tcc_user`;
USE `tcc_user`;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `user`
(
    id            bigint      NOT NULL auto_increment primary key COMMENT '用户ID', -- 用户ID
    username      varchar(20) NOT NULL DEFAULT '' comment '用户名',                  -- 用户名
    password      varchar(32) NOT NULL DEFAULT '' comment '用户密码',                 -- 用户密码
    create_time   datetime    NOT NULL DEFAULT now() COMMENT '创建时间',              -- 创建时间
    modified_time datetime    NOT NULL DEFAULT now() COMMENT '修改时间',              -- 修改时间
    CONSTRAINT unique_username UNIQUE (username)
);