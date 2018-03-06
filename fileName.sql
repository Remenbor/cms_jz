-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cms_development
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-02-24 06:32:29','2018-02-24 06:32:29');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `coding` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'jiuzhang','01','','2018-02-24 07:34:55','2018-02-24 07:34:55'),(2,'jishu','01001','jiuzhang','2018-02-24 07:35:17','2018-02-24 07:35:17'),(3,'renshi','01002','jiuzhang','2018-02-24 07:35:35','2018-02-24 07:35:35'),(4,'shichang','01003','jiuzhang','2018-02-24 07:35:54','2018-02-24 07:35:54');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `serial_num` varchar(255) DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  `age_limit` int(11) DEFAULT NULL,
  `borrower` varchar(255) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'lenovo','E460','001','2018-02-24',3,'','2018-01-01','2018-01-01',1,'2018-02-24 07:36:27','2018-03-05 09:00:43');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'root','2018-02-24 10:00:09','2018-02-24 10:00:09'),(2,'companyadmin','2018-02-24 10:00:09','2018-02-24 10:00:09'),(3,'departmentadmin','2018-02-24 10:00:10','2018-02-24 10:00:10'),(4,'personneladmin','2018-02-24 10:00:10','2018-02-24 10:00:10');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial_num` varchar(255) DEFAULT NULL,
  `borrower` varchar(255) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (13,'001','','2018-03-05',NULL,'2018-03-05 09:13:34','2018-03-05 09:13:34'),(14,'001','','2018-03-05',NULL,'2018-03-05 09:41:33','2018-03-05 09:41:33');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180209092933'),('20180223035446'),('20180223040231'),('20180223072026'),('20180223073139'),('20180223073507'),('20180223073614'),('20180223075158'),('20180228020547');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (3,6,1),(4,7,3),(5,8,3),(6,9,3);
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `coding` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'michael1','',1,'',0,10,'','michael1@example.com',NULL,'2018-02-24 07:18:08','2018-02-27 03:03:02','$2a$10$.617ClQicwhcWGqM/GulseFj1XPQE6/hJSP/9wKERnTgEynvJZMcS',NULL),(6,'LI','001',2,'系统管理员',0,20,'12345678','li@qq.com',0,'2018-02-26 08:03:28','2018-02-28 08:48:22','$2a$10$Yr81Pu5EnTWxftPoEtflRu9Law0GMnfiSubSVsjptiyn59a6gP.fS',NULL),(7,'RS','002',3,'RSZG',0,20,'12345678','rs@qq.com',0,'2018-02-26 08:05:11','2018-02-28 08:48:33','$2a$10$yt60IBIMJD334eSiqI/UOejHtFt/jPVpVP5RPtIhaUWi04T0xWnKS',NULL),(8,'JS','002',2,'JSZG',0,20,'12345678','js@qq.com',0,'2018-02-26 08:06:14','2018-02-26 08:06:14','$2a$10$sYviUA4zDxc10QVBXOx/ouvWeIyQClZxIJjP/7fUZ268MYGbMjEdW',NULL),(9,'SC','004',4,'SCZG',0,20,'12345678','sc@qq.com',0,'2018-02-26 08:07:12','2018-02-28 08:49:00','$2a$10$3s9UA./bSxGbXfEGe/slBO.dxDsx6m36PA.0r0jqHyo2HcvjgOOnK',NULL),(10,'JS1','005',2,'JSa',0,20,'12345678','js1@qq.com',0,'2018-02-26 08:10:02','2018-02-28 08:49:34','$2a$10$uf0JfvC.4nmQSHMDBoPPdeleudryq/DlsYkerd7yxAA9sbHS98rta',NULL),(11,'JS2','006',2,'JSb',0,20,'12345678','js2@qq.com',0,'2018-02-26 08:10:57','2018-02-28 08:49:44','$2a$10$jj8Yyh./xvXmXGhnZPV6Ye/bh400jnl/ovcydtyUj1cNYdabEe6GC',NULL),(12,'RS1','007',3,'RSa',0,20,'12345678','rs1@qq.com',0,'2018-02-26 08:11:37','2018-02-28 08:49:54','$2a$10$sw8d10UgaTsQMW7jTXVovOyLCHTPGHQ01vQOnaFx28xU/8bY6EueO',NULL),(13,'RS2','008',3,'RSb',0,20,'12345678','rs2@qq.com',0,'2018-02-26 08:12:54','2018-02-28 08:50:02','$2a$10$aNOhyPuga53Gd87Hppp50OLjphRnbuwq5sj64weqH0p29zwLePhz2',NULL),(14,'SC1','009',4,'SCa',0,20,'12345678','sc1@qq.com',0,'2018-02-26 08:13:33','2018-02-28 08:50:15','$2a$10$MZb5hk5soTANrQbgqXdbbOWX.RwmoJKQWJnBJcsuTJ5MNnRGhX/VK',NULL),(15,'SC2','010',4,'SCb',0,20,'12345678','sc2@qq.com',0,'2018-02-26 08:14:24','2018-02-28 08:50:24','$2a$10$bbNFfJxxfyArRgpUeNE96e9ZE0BoTCjUwbFwsJrNBJTGaMWauCH.K',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 10:06:43
