/*==============================================================*/
/* Database: cqanswer                                           */
/*==============================================================*/
CREATE DATABASE IF NOT EXISTS CQAnswer;

use CQAnswer;

/*==============================================================*/
/* Table: sysm_role                                                */
/*==============================================================*/
DROP TABLE IF EXISTS `sysm_role`;
CREATE TABLE `sysm_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `permissions` varchar(255) default NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sysm_user
-- ----------------------------
DROP TABLE IF EXISTS `sysm_user`;
CREATE TABLE `sysm_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` varchar(255) default NULL,
  `login_name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sysm_user_role`;
CREATE TABLE `sysm_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKC839FA2B3669CB17` (`role_id`),
  KEY `FKC839FA2BDB948EF7` (`user_id`),
  CONSTRAINT `FKC839FA2B3669CB17` FOREIGN KEY (`role_id`) REFERENCES `sysm_role` (`id`),
  CONSTRAINT `FKC839FA2BDB948EF7` FOREIGN KEY (`user_id`) REFERENCES `sysm_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;