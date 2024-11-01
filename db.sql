/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - caiwuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`caiwuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `caiwuguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-12 11:26:21'),(2,'sex_types','性别',2,'女',NULL,'2021-03-12 11:26:21'),(3,'bumen_types','部门类型',1,'销售部',NULL,'2021-03-12 11:26:21'),(4,'bumen_types','部门类型',2,'市场部',NULL,'2021-03-12 11:26:21'),(5,'bumen_types','部门类型',3,'财务部',NULL,'2021-03-12 11:26:21'),(6,'politics_types','政治面貌',1,'群众',NULL,'2021-03-12 11:26:21'),(7,'politics_types','政治面貌',2,'党员',NULL,'2021-03-12 11:26:21'),(8,'zichan_types','资产类型',1,'流动资产',NULL,'2021-03-12 11:26:21'),(9,'zichan_types','资产类型',2,'固定资产',NULL,'2021-03-12 11:26:21'),(10,'zichan_types','资产类型',3,'无形资产',NULL,'2021-03-12 11:26:21'),(11,'jingying_types','经营类型',1,'支出',NULL,'2021-03-12 11:26:21'),(12,'jingying_types','经营类型',2,'收入',NULL,'2021-03-12 11:26:21'),(13,'bumen_types','部门类型',9,'部门9',NULL,'2021-03-12 14:54:40'),(14,'zichan_types','资产类型',4,'资产类别4',NULL,'2021-03-12 14:54:56'),(15,'bumen_types','部门类型',10,'啊啊',NULL,'2021-03-12 15:22:57');

/*Table structure for table `jingying` */

DROP TABLE IF EXISTS `jingying`;

CREATE TABLE `jingying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingying_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `jingying_types` int(11) DEFAULT NULL COMMENT '经营类型  Search111 ',
  `jingying_content` varchar(200) DEFAULT NULL COMMENT '详情',
  `jingying_money` int(11) DEFAULT NULL COMMENT '金额 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='经营';

/*Data for the table `jingying` */

insert  into `jingying`(`id`,`jingying_name`,`jingying_types`,`jingying_content`,`jingying_money`,`insert_time`,`create_time`) values (1,'支出记录1',2,'支出记录1的详情\r\n',100,'2021-03-11 11:56:55','2021-03-11 11:56:55'),(2,'支出记录2',2,'支出记录2的详情\r\n',110,'2021-03-12 11:57:15','2021-03-12 11:57:15'),(3,'支出3',1,'支出3的详情\r\n',3000,'2021-03-12 13:15:27','2021-03-12 13:15:27'),(4,'支出99',1,'萨达\r\n',888,'2021-03-12 15:21:06','2021-03-12 15:21:06');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (32,6,'admin','users','管理员','p1y69v2gngoitufruen0x7ir24nw6in1','2021-03-12 11:12:37','2021-03-12 16:15:41'),(33,1,'a1','yonghu','用户','8mlc9qp1jqdimz3r7aucf4vnpgsvjclh','2021-03-12 14:58:54','2021-03-12 16:27:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`money`,`create_time`) values (5,3,'2021-03','98.0000','2021-03-12 11:47:58'),(6,3,'2021-04','7.0000','2021-03-12 11:48:42'),(7,2,'2021-02','78.0000','2021-03-12 11:48:54'),(8,1,'2021-01','100.0000','2021-03-12 15:00:17'),(9,1,'2021-02','78.0000','2021-03-12 15:00:28'),(10,4,'2021-02','98.0000','2021-03-12 15:18:49');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111 ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门  Search111 ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='职工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`bumen_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张1','17703789999','410224199610232011',2,2,'http://localhost:8080/caiwuguanlixitong/file/download?fileName=1615520507256.jpg','汉1',1,'审犯罪','2021-03-12 11:23:22'),(2,'a2','123456','张2','17703789992','410224199610232012',2,3,'http://localhost:8080/caiwuguanlixitong/file/download?fileName=1615520495331.jpg','汉',1,'审犯罪1','2021-03-12 11:33:10'),(3,'a3','123456','张三','17703789993','410224199610232013',1,2,'http://localhost:8080/caiwuguanlixitong/file/download?fileName=1615520486060.jpg','汉',2,'审犯罪11','2021-03-12 11:33:40'),(4,'a4','123456','张4','17703789994','410224199610232014',2,9,'http://localhost:8080/caiwuguanlixitong/file/download?fileName=1615533462425.jpg','汉',2,'审犯罪','2021-03-12 15:18:34');

/*Table structure for table `zichan` */

DROP TABLE IF EXISTS `zichan`;

CREATE TABLE `zichan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zichan_name` varchar(200) DEFAULT NULL COMMENT '资产名字 Search111 ',
  `zichan_types` int(11) DEFAULT NULL COMMENT '资产类型  Search111 ',
  `zichan_content` varchar(200) DEFAULT NULL COMMENT '资产详情',
  `zichan_money` int(11) DEFAULT NULL COMMENT '资产价值 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='资产';

/*Data for the table `zichan` */

insert  into `zichan`(`id`,`zichan_name`,`zichan_types`,`zichan_content`,`zichan_money`,`create_time`) values (1,'资产1',3,'资产详情\r\n',97,'2021-03-12 11:49:33'),(2,'资产2',2,'萨达打的\r\n',1000,'2021-03-12 11:49:53'),(3,'资产3',2,'萨达\r\n',888,'2021-03-12 11:51:24'),(4,'98',1,'98的<img src=\"http://localhost:8080/caiwuguanlixitong/upload/1615533614486.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/caiwuguanlixitong/upload/1615533614486.jpg\">资产详情\r\n',87,'2021-03-12 15:20:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
