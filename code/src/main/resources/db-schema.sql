--创建bbsDB数据库
drop database if exists cqanswer;

/*==============================================================*/
/* Database: cqanswer                                           */
/*==============================================================*/
create database cqanswer;

use cqanswer;

/*==============================================================*/
/* Table: ANSWER                                                */
/*==============================================================*/
create table ANSWER
(
   UUID                 char(32),
   Q_UUID               char(32),
   TITLE                varchar(50),
   CONTENT              varchar(500),
   R_COUNT              int comment '该回答每没认同一次进行累加',
   NR_COUNT             int comment '该回答每被否认则累加',
   A_DATE               date
);

alter table ANSWER comment '回答';

/*==============================================================*/
/* Table: QUESTION                                              */
/*==============================================================*/
create table QUESTION
(
   UUID                 char(32),
   TITLE                varchar(100),
   CONTENT              varchar(500) comment '粘贴代码',
   U_UUID               char(32),
   Q_TIME               date,
   A_COUNT              int,
   Q_COUNT              int,
   Q_LEVER              int,
   M_CODE               varchar(20)
);

alter table QUESTION comment '问题';

/*==============================================================*/
/* Table: SYS_MODULE                                            */
/*==============================================================*/
create table SYS_MODULE
(
   UUID                 char(32),
   NAME                 varchar(20),
   CODE                 varchar(20),
   INFO                 varchar(500),
   REMARK               varchar(500),
   PARENT_CODE          varchar(20)
);

alter table SYS_MODULE comment '系统模块';

/*==============================================================*/
/* Table: SYS_NOTICE_TYPE                                       */
/*==============================================================*/
create table SYS_NOTICE_TYPE
(
   UUID                 char(32),
   TYPE_CODE            varchar(10),
   TYPE_NAME            varchar(10)
);

alter table SYS_NOTICE_TYPE comment '系统通知类型';

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
create table SYS_USER
(
   UUID                 char(32),
   ACCOUNTS             varchar(30),
   PASSWORD             varchar(30),
   LAST_LOGIN_TIME      date
);

alter table SYS_USER comment '注册用户登陆信息';

/*==============================================================*/
/* Table: SYS_USER_INFO                                         */
/*==============================================================*/
create table SYS_USER_INFO
(
   UUID                 char(32),
   NAME                 varchar(50),
   TEL                  varchar(20),
   EMAIL                varchar(50),
   ACCEPT_Q             varchar(1),
   ACCEPT_Q_NOTICE      varchar(1),
   ACCEPT_A_NOTICE      varchar(1),
   Q_NOTICE_TYPE        varchar(2),
   A_NOTICE_TYPE        varchar(2)
);

alter table SYS_USER_INFO comment '用户基础信息';

/*==============================================================*/
/* Table: USER_ANSWER                                           */
/*==============================================================*/
create table USER_ANSWER
(
   U_UUID               char(32),
   Q_UUID               char(32),
   A_UUID               char(32),
   A_DATE               date
);

alter table USER_ANSWER comment '用户回答表记录用户对某个回答的认同操作';

/*==============================================================*/
/* Table: USER_QUESTION                                         */
/*==============================================================*/
create table USER_QUESTION
(
   U_UUID               char(32),
   Q_UUID               char(32),
   Q_DATE               date
);

alter table USER_QUESTION comment '用户问题表记录用户对某个问题的同问操作';

