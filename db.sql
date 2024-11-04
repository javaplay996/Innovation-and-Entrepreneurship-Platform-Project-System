/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chuangxinchuangyepingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuangxinchuangyepingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuangxinchuangyepingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-06 11:06:42'),(2,'sex_types','性别',2,'女',NULL,'2021-04-06 11:06:42'),(3,'tongguo_types','是否通过',1,'通过',NULL,'2021-04-06 11:06:42'),(4,'tongguo_types','是否通过',2,'拒绝',NULL,'2021-04-06 11:06:42'),(5,'leix_types','项目类型名称',1,'项目类型1',NULL,'2021-04-06 11:06:42'),(6,'leix_types','项目类型名称',2,'项目类型2',NULL,'2021-04-06 11:06:42'),(7,'leix_types','项目类型名称',3,'项目类型3',NULL,'2021-04-06 11:06:42'),(8,'shifou_types','是否申报',1,'是',NULL,'2021-04-06 11:06:42'),(9,'shifou_types','是否申报',2,'否',NULL,'2021-04-06 11:06:42');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'222','123456','教师1',2,'410882195412124512','13846454454','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617679684692.jpg','2021-04-06 11:27:11'),(2,'555','123456','教师2',1,'410882195412144512','13846454455','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617688484273.jpg','2021-04-06 13:54:37');

/*Table structure for table `shenbao` */

DROP TABLE IF EXISTS `shenbao`;

CREATE TABLE `shenbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申报人',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '申报项目',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申报时间',
  `tongguo_types` int(11) DEFAULT NULL COMMENT '是否通过 Search111',
  `zhuanji_id` int(11) DEFAULT NULL COMMENT '审批人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='申报';

/*Data for the table `shenbao` */

insert  into `shenbao`(`id`,`yonghu_id`,`xiangmu_id`,`insert_time`,`tongguo_types`,`zhuanji_id`,`create_time`) values (7,1,1,'2021-04-06 13:18:01',1,1,'2021-04-06 13:18:01'),(9,2,3,'2021-04-06 14:06:25',2,1,'2021-04-06 14:06:25'),(10,3,4,'2021-04-06 14:13:11',1,1,'2021-04-06 14:13:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','s7gynhvniprxiyc5or8r2y3fzlr5bvkg','2021-04-06 11:09:13','2021-04-06 15:29:15'),(2,1,'333','zhuanji','用户','zmebvdb11pmq34atx0s2j38czj8yxybb','2021-04-06 13:56:07','2021-04-06 15:03:25'),(3,1,'222','jiaoshi','教师','s9jgog3ywc0g7sqp7932ml7y3mwuzhyw','2021-04-06 14:01:04','2021-04-06 15:13:36'),(4,2,'444','yonghu','用户','im2zvq0mna2l0d4cbsqocw975a9wrpyg','2021-04-06 14:03:44','2021-04-06 15:03:44'),(5,3,'666','yonghu','用户','hzpaz7rlh2sweptzaadqac2nvnyzrzh9','2021-04-06 14:11:18','2021-04-06 15:24:20'),(6,2,'555','jiaoshi','教师','7adwh54iztkk4mmcyij5dxty1ojf89lu','2021-04-06 14:14:28','2021-04-06 15:14:29'),(7,1,'333','zhuanji','专家','jt1gnfzvj1q5wnulv46czoinqf0oc61d','2021-04-06 14:15:10','2021-04-06 15:24:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_name` varchar(255) DEFAULT NULL COMMENT '项目名称 Search111',
  `xiangmu_photo` varchar(255) DEFAULT NULL COMMENT '项目预览图',
  `leix_types` int(11) DEFAULT NULL COMMENT '项目类型名称 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '发布学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '指导老师',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否申报 Search111',
  `xiangmu_content` text COMMENT '项目要求',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xiangmu_name`,`xiangmu_photo`,`leix_types`,`yonghu_id`,`jiaoshi_id`,`shifou_types`,`xiangmu_content`,`create_time`) values (1,'项目名称1','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617680959220.jpg',2,1,1,2,'项目描述 项目描述 项目描述 \r\n','2021-04-06 11:49:33'),(3,'项目名称2','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617689041489.jpg',1,2,2,2,'项目描述123\r\n','2021-04-06 14:04:09'),(4,'项目名称3','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617689572299.jpg',1,3,2,1,'我是项目描述\r\n','2021-04-06 14:13:03');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-04-06 11:06:42','日常公告','日常公告','公告信息','2021-04-06 11:06:42'),(2,'2021-04-06 11:06:42','紧急公告','紧急公告','公告信息','2021-04-06 11:06:42'),(3,'2021-04-06 11:06:42','其他公告','其他公告','公告信息','2021-04-06 11:06:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','学生1',1,'410882194511212121','17745544545','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617679595918.jpg','2021-04-06 11:26:36'),(2,'444','123456','学生2',2,'410882194211212121','17745544535','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617688444771.jpg','2021-04-06 13:54:06'),(3,'666','123456','学生3',1,'410882194511232121','17743244545','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617689418662.jpg','2021-04-06 14:10:19');

/*Table structure for table `zhuanji` */

DROP TABLE IF EXISTS `zhuanji`;

CREATE TABLE `zhuanji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanji_name` varchar(200) DEFAULT NULL COMMENT '专家姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhuanji_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `zhuanji_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `zhuanji_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='专家';

/*Data for the table `zhuanji` */

insert  into `zhuanji`(`id`,`username`,`password`,`zhuanji_name`,`sex_types`,`zhuanji_id_number`,`zhuanji_phone`,`zhuanji_photo`,`create_time`) values (1,'333','123456','专家1',1,'410882200106128948','13845455645','http://localhost:8080/chuangxinchuangyepingtai/file/download?fileName=1617679676602.jpg','2021-04-06 11:27:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
