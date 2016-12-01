-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: shop43
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sp_goods`
--

DROP TABLE IF EXISTS `sp_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_name` varchar(64) NOT NULL COMMENT '商品名称',
  `goods_shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_number` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `goods_weight` decimal(10,2) NOT NULL DEFAULT '100.00' COMMENT '重量，单位克',
  `goods_big_logo` char(128) NOT NULL DEFAULT '' COMMENT '商品大图',
  `goods_small_logo` char(128) NOT NULL DEFAULT '' COMMENT '商品小图',
  `cat_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类',
  `brand_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品品牌',
  `goods_is_sale` enum('出售','停售') NOT NULL DEFAULT '出售' COMMENT '是否在售',
  `goods_introduce` text COMMENT '商品详情',
  `goods_is_qiang` enum('抢','不抢') NOT NULL DEFAULT '不抢' COMMENT '是否抢购',
  `goods_is_hot` enum('热','不热') NOT NULL DEFAULT '不热' COMMENT '是否热卖',
  `goods_is_rec` enum('推荐','不推荐') NOT NULL DEFAULT '不推荐' COMMENT '是否推荐',
  `goods_is_new` enum('新品','不新品') NOT NULL DEFAULT '不新品' COMMENT '是否新品',
  `mg_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '操作者',
  `is_del` enum('正常','删除') NOT NULL DEFAULT '正常' COMMENT '是否被删除',
  `add_time` int(10) unsigned NOT NULL COMMENT '数据添加时间',
  `upd_time` int(10) unsigned NOT NULL COMMENT '数据修改时间',
  PRIMARY KEY (`goods_id`),
  KEY `goods_name` (`goods_name`),
  KEY `goods_shop_price` (`goods_shop_price`),
  KEY `cat_id` (`cat_id`),
  KEY `brand_id` (`brand_id`),
  KEY `mg_id` (`mg_id`),
  KEY `is_del` (`is_del`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='商品数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_goods`
--

LOCK TABLES `sp_goods` WRITE;
/*!40000 ALTER TABLE `sp_goods` DISABLE KEYS */;
INSERT INTO `sp_goods` VALUES (1,'htc01',1000.00,10,100.00,'','',0,0,'出售','good','不抢','不热','不推荐','不新品',0,'正常',1459065532,1459065532),(2,'htc02',1200.00,12,102.00,'','',0,0,'出售','good','不抢','不热','不推荐','不新品',0,'正常',1459065576,1459065576),(3,'htc03',1300.00,13,103.00,'','',0,0,'出售','very good','不抢','不热','不推荐','不新品',0,'正常',1459066061,1459066061),(4,'htc04',1400.00,14,104.00,'','',0,0,'出售','&lt;p&gt;htc04物有所值&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160327/1459068573233619.png&quot; style=&quot;width: 188px; height: 129px;&quot; title=&quot;1459068573233619.png&quot; height=&quot;129&quot; width=&quot;188&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160327/1459068573729388.jpg&quot; style=&quot;width: 148px; height: 131px;&quot; title=&quot;1459068573729388.jpg&quot; height=&quot;131&quot; width=&quot;148&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','不抢','不热','不推荐','不新品',0,'正常',1459068619,1459068619),(5,'htc05',1500.00,105,105.00,'','',0,0,'出售','<p>this telphone is very good<br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459069050,1459069050),(6,'samsung01',2100.00,21,210.00,'','',0,0,'出售','<p>good<br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459069111,1459069111),(7,'sam<span style=\'color:blue\' >sun</span>g02',2200.00,22,220.00,'','',0,0,'出售','<p>good<br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459069224,1459069224),(8,'sam&lt;script&gt;alert(456)&lt;/script&gt;sung03',2300.00,23,230.00,'','',0,0,'出售','&lt;p&gt;good&lt;br/&gt;&lt;/p&gt;','不抢','不热','不推荐','不新品',0,'正常',1459069842,1459069842),(9,'htc06',1600.00,16,160.00,'','',0,0,'出售','&lt;p&gt;this is &lt;span style=&quot;font-size: 24px;&quot;&gt;&lt;strong&gt;very&lt;/strong&gt;&lt;/span&gt; good&lt;br/&gt;&lt;/p&gt;','不抢','不热','不推荐','不新品',0,'正常',1459070117,1459070117),(10,'htc07',1700.00,17,170.00,'','',0,0,'出售','<p>this is very <span style=\"color: rgb(255, 0, 0);\">very</span> good<br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459070282,1459070282),(11,'htc08',1800.00,18,180.00,'','',0,0,'出售','<p>dddddlllll&nbsp; dddd&lt;script&gt;alert(123456)&lt;/script&gt;ddsdsd<br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459070389,1459070389),(12,'htc09',1900.00,19,190.00,'','',0,0,'出售','<p>dddd</p><p>dddddddd<span style=\"color: rgb(255, 0, 0);\">dddssss</span>sssssssssss<br/></p><p><br/></p>','不抢','不热','不推荐','不新品',0,'正常',1459070551,1459070551),(13,'iphone7',6700.00,17,170.00,'','',0,0,'出售','<p>iphone7</p><p>果然名不虚传<br /></p><p></p>','不抢','不热','不推荐','不新品',0,'正常',1459071830,1459071830),(14,'sfdsdf',232.00,343,3434.00,'','',0,0,'出售','sfddgfd<span style=\"color:rgb(255,0,0);\">hgfdhfdg</span>dfgfdgsfdsdsdsd<br />','不抢','不热','不推荐','不新品',0,'正常',1459071918,1459071918),(15,'华为手机',1000.00,10,100.00,'','',0,0,'出售','好<br />','不抢','不热','不推荐','不新品',0,'正常',1459218713,1459218713),(16,'三星手机',2000.00,20,200.00,'./Public/Upload/2016-03-29/56f9e9c66664f.jpg','',0,0,'出售','','不抢','不热','不推荐','不新品',0,'正常',1459218886,1459218886),(17,'乐视电视',3200.00,5,1200.00,'./Public/Upload/2016-03-29/56f9ec9f4e778.jpg','./Public/Upload/2016-03-29/s_56f9ec9f4e778.jpg',0,0,'出售','没有雪花，很好<br />','不抢','不热','不推荐','不新品',0,'正常',1459219615,1459219615),(18,'海尔冰箱',3100.00,3,3000.00,'./Public/Upload/2016-03-29/56f9efcbd734b.jpg','./Public/Upload/2016-03-29/s_56f9efcbd734b.jpg',0,0,'出售','很冷<br />','不抢','不热','不推荐','不新品',0,'正常',1459220427,1459220427),(19,'sdfsf',242.00,3453,24323.00,'','',0,0,'出售','','不抢','不热','不推荐','不新品',0,'正常',1459223544,1459223544),(20,'符合规范',345.00,234,345.00,'','',0,0,'出售','','不抢','不热','不推荐','不新品',0,'正常',1459223737,1459223737),(21,'小米手机',3000.00,13,130.00,'./Public/Upload/2016-03-29/56fa242a8273c.jpg','./Public/Upload/2016-03-29/s_56fa242a8273c.jpg',0,0,'出售','通话质量好<br />','不抢','不热','不推荐','不新品',0,'正常',1459233834,1459233834),(22,'海尔微波炉',340.00,14,540.00,'./Public/Upload/2016-03-29/56fa29c94f7d8.jpg','./Public/Upload/2016-03-29/s_56fa29c94f7d8.jpg',0,0,'出售','很好<br />','不抢','不热','不推荐','不新品',0,'正常',1459235273,1459235273),(23,'小米手机',3000.00,13,130.00,'./Public/Upload/2016-03-29/56fa358037a21.jpg','./Public/Upload/2016-03-29/s_56fa358037a21.jpg',0,0,'出售','通话质量好<br />','不抢','不热','不推荐','不新品',0,'正常',1459235631,1459239936);
/*!40000 ALTER TABLE `sp_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_goods_pic`
--

DROP TABLE IF EXISTS `sp_goods_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_goods_pic` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `goods_pic_big` char(128) NOT NULL DEFAULT '' COMMENT '相册大图',
  `goods_pic_mid` char(128) NOT NULL DEFAULT '' COMMENT '相册中图',
  `goods_pic_sma` char(128) NOT NULL DEFAULT '' COMMENT '相册小图',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品相册关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_goods_pic`
--

LOCK TABLES `sp_goods_pic` WRITE;
/*!40000 ALTER TABLE `sp_goods_pic` DISABLE KEYS */;
INSERT INTO `sp_goods_pic` VALUES (19,23,'./Public/UploadPics/2016-03-29/b_56fa3c00cdb50.jpg','./Public/UploadPics/2016-03-29/m_56fa3c00cdb50.jpg','./Public/UploadPics/2016-03-29/s_56fa3c00cdb50.jpg'),(14,21,'./Public/UploadPics/2016-03-29/b_56fa3acccb1e7.jpg','./Public/UploadPics/2016-03-29/m_56fa3acccb1e7.jpg','./Public/UploadPics/2016-03-29/s_56fa3acccb1e7.jpg'),(16,21,'./Public/UploadPics/2016-03-29/b_56fa3b2bcb9db.jpg','./Public/UploadPics/2016-03-29/m_56fa3b2bcb9db.jpg','./Public/UploadPics/2016-03-29/s_56fa3b2bcb9db.jpg'),(17,21,'./Public/UploadPics/2016-03-29/b_56fa3b2bcf696.jpg','./Public/UploadPics/2016-03-29/m_56fa3b2bcf696.jpg','./Public/UploadPics/2016-03-29/s_56fa3b2bcf696.jpg'),(15,21,'./Public/UploadPics/2016-03-29/b_56fa3acccd8d5.jpg','./Public/UploadPics/2016-03-29/m_56fa3acccd8d5.jpg','./Public/UploadPics/2016-03-29/s_56fa3acccd8d5.jpg'),(18,21,'./Public/UploadPics/2016-03-29/b_56fa3b2bd31e7.jpg','./Public/UploadPics/2016-03-29/m_56fa3b2bd31e7.jpg','./Public/UploadPics/2016-03-29/s_56fa3b2bd31e7.jpg');
/*!40000 ALTER TABLE `sp_goods_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_manager`
--

DROP TABLE IF EXISTS `sp_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_manager` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mg_name` varchar(32) NOT NULL,
  `mg_pwd` varchar(32) NOT NULL,
  `mg_time` int(10) unsigned NOT NULL COMMENT '时间',
  `role_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`mg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_manager`
--

LOCK TABLES `sp_manager` WRITE;
/*!40000 ALTER TABLE `sp_manager` DISABLE KEYS */;
INSERT INTO `sp_manager` VALUES (500,'linken','123456',1453083019,30),(501,'tom','123456',1453083020,31),(502,'admin','123456',1453083020,0);
/*!40000 ALTER TABLE `sp_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-29 18:03:44
