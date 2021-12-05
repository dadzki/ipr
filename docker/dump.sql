mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	5.7.35

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
mysqldump: Error: 'Access denied; you need (at least one of) the PROCESS privilege(s) for this operation' when trying to dump tablespaces

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,0,0,'Users','fa-users','/users',NULL,'2021-11-14 14:03:57','2021-11-14 14:03:57'),(9,0,0,'Posts','fa-book','/posts',NULL,'2021-11-14 15:23:04','2021-11-14 16:40:50'),(10,0,0,'Post Categories','fa-server','/categories',NULL,'2021-11-14 17:09:29','2021-11-14 17:09:29');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','172.24.0.1','[]','2021-11-14 13:13:45','2021-11-14 13:13:45'),(2,1,'admin','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:13:52','2021-11-14 13:13:52'),(3,1,'admin/auth/users','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:15','2021-11-14 13:14:15'),(4,1,'admin/auth/roles','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:22','2021-11-14 13:14:22'),(5,1,'admin/auth/users','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:24','2021-11-14 13:14:24'),(6,1,'admin/auth/permissions','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:27','2021-11-14 13:14:27'),(7,1,'admin/auth/menu','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:32','2021-11-14 13:14:32'),(8,1,'admin','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:14:40','2021-11-14 13:14:40'),(9,1,'admin','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:15:48','2021-11-14 13:15:48'),(10,1,'admin/auth/permissions','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:16:11','2021-11-14 13:16:11'),(11,1,'admin/auth/menu','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 13:50:21','2021-11-14 13:50:21'),(12,1,'admin/auth/users','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 14:01:06','2021-11-14 14:01:06'),(13,1,'admin/auth/menu','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 14:01:08','2021-11-14 14:01:08'),(14,1,'admin/auth/menu/3/edit','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 14:01:10','2021-11-14 14:01:10'),(15,1,'admin/auth/menu','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 14:01:43','2021-11-14 14:01:43'),(16,1,'admin/auth/menu','POST','172.24.0.1','{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Msn8yglwBO6K5fADmviCuvCHLp5d7Dlr1W5uN5AR\"}','2021-11-14 14:03:57','2021-11-14 14:03:57'),(17,1,'admin/auth/menu','GET','172.24.0.1','[]','2021-11-14 14:03:57','2021-11-14 14:03:57'),(18,1,'admin/auth/menu','GET','172.24.0.1','[]','2021-11-14 14:04:01','2021-11-14 14:04:01'),(19,1,'admin/users','GET','172.24.0.1','[]','2021-11-14 14:04:41','2021-11-14 14:04:41'),(20,1,'admin/auth/menu','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 15:22:22','2021-11-14 15:22:22'),(21,1,'admin/auth/menu','POST','172.24.0.1','{\"parent_id\":\"0\",\"title\":\"Articles\",\"icon\":\"fa-book\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Msn8yglwBO6K5fADmviCuvCHLp5d7Dlr1W5uN5AR\"}','2021-11-14 15:23:04','2021-11-14 15:23:04'),(22,1,'admin/auth/menu','GET','172.24.0.1','[]','2021-11-14 15:23:04','2021-11-14 15:23:04'),(23,1,'admin/auth/menu','GET','172.24.0.1','[]','2021-11-14 15:23:11','2021-11-14 15:23:11'),(24,1,'admin/articles','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 15:23:12','2021-11-14 15:23:12'),(25,1,'admin/articles/create','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 15:23:16','2021-11-14 15:23:16'),(26,1,'admin/articles','POST','172.24.0.1','{\"title\":\"Title1\",\"content\":\"sdfkjghdfg khdfgkljhsd flkhjdf skdhfgl sfdg\",\"_token\":\"Msn8yglwBO6K5fADmviCuvCHLp5d7Dlr1W5uN5AR\",\"_previous_\":\"https:\\/\\/localhost\\/admin\\/articles\"}','2021-11-14 15:23:57','2021-11-14 15:23:57'),(27,1,'admin/articles','GET','172.24.0.1','[]','2021-11-14 15:23:57','2021-11-14 15:23:57'),(28,1,'admin/articles/1/edit','GET','172.24.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 15:24:01','2021-11-14 15:24:01'),(29,1,'admin/articles/1','PUT','172.24.0.1','{\"title\":\"Title1\",\"content\":\"sdfkjghdfg khdfgkljhsd flkhjdf skdhfgl sfdg\",\"_token\":\"Msn8yglwBO6K5fADmviCuvCHLp5d7Dlr1W5uN5AR\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/localhost\\/admin\\/articles\"}','2021-11-14 15:24:05','2021-11-14 15:24:05'),(30,1,'admin/articles','GET','172.24.0.1','[]','2021-11-14 15:24:05','2021-11-14 15:24:05'),(31,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 16:40:21','2021-11-14 16:40:21'),(32,1,'admin/auth/menu/9/edit','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 16:40:33','2021-11-14 16:40:33'),(33,1,'admin/auth/menu/9','PUT','172.25.0.1','{\"parent_id\":\"0\",\"title\":\"Posts\",\"icon\":\"fa-book\",\"uri\":\"\\/posts\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/localhost\\/admin\\/auth\\/menu\"}','2021-11-14 16:40:50','2021-11-14 16:40:50'),(34,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 16:40:50','2021-11-14 16:40:50'),(35,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 16:42:39','2021-11-14 16:42:39'),(36,1,'admin/posts','GET','172.25.0.1','[]','2021-11-14 17:07:05','2021-11-14 17:07:05'),(37,1,'admin/posts/create','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:07:10','2021-11-14 17:07:10'),(38,1,'admin/auth/menu','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:08:00','2021-11-14 17:08:00'),(39,1,'admin/auth/menu','POST','172.25.0.1','{\"parent_id\":\"0\",\"title\":\"Post Categories\",\"icon\":\"fa-server\",\"uri\":\"\\/categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\"}','2021-11-14 17:09:29','2021-11-14 17:09:29'),(40,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 17:09:29','2021-11-14 17:09:29'),(41,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 17:09:34','2021-11-14 17:09:34'),(42,1,'admin/auth/menu','GET','172.25.0.1','[]','2021-11-14 17:10:18','2021-11-14 17:10:18'),(43,1,'admin/categories','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:10:22','2021-11-14 17:10:22'),(44,1,'admin/categories/create','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:10:25','2021-11-14 17:10:25'),(45,1,'admin/categories','POST','172.25.0.1','{\"title\":\"Cat1\",\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\",\"_previous_\":\"https:\\/\\/localhost\\/admin\\/categories\"}','2021-11-14 17:10:32','2021-11-14 17:10:32'),(46,1,'admin/categories','GET','172.25.0.1','[]','2021-11-14 17:10:32','2021-11-14 17:10:32'),(47,1,'admin/categories/create','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:10:35','2021-11-14 17:10:35'),(48,1,'admin/categories','POST','172.25.0.1','{\"title\":\"Cat2\",\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\",\"_previous_\":\"https:\\/\\/localhost\\/admin\\/categories\"}','2021-11-14 17:10:40','2021-11-14 17:10:40'),(49,1,'admin/categories','GET','172.25.0.1','[]','2021-11-14 17:10:40','2021-11-14 17:10:40'),(50,1,'admin/posts','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:12:17','2021-11-14 17:12:17'),(51,1,'admin/posts/create','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:12:19','2021-11-14 17:12:19'),(52,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:13:24','2021-11-14 17:13:24'),(53,1,'admin/posts','POST','172.25.0.1','{\"title\":\"Post1\",\"content\":\"ssssssssssssss\",\"preview\":\"ddddddd\",\"is_active\":\"on\",\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\"}','2021-11-14 17:13:38','2021-11-14 17:13:38'),(54,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:13:38','2021-11-14 17:13:38'),(55,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:16:33','2021-11-14 17:16:33'),(56,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:19:29','2021-11-14 17:19:29'),(57,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:20:10','2021-11-14 17:20:10'),(58,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:20:35','2021-11-14 17:20:35'),(59,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:20:47','2021-11-14 17:20:47'),(60,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:21:51','2021-11-14 17:21:51'),(61,1,'admin/posts/create','GET','172.25.0.1','[]','2021-11-14 17:26:48','2021-11-14 17:26:48'),(62,1,'admin/posts','POST','172.25.0.1','{\"title\":\"post1\",\"content\":\"sssssss\",\"preview\":\"ddd\",\"is_active\":\"on\",\"category_id\":\"1\",\"_token\":\"rTaZx40nsv3Dvyf9gjY7xtf64ytn5PQHWtZWUmJd\"}','2021-11-14 17:32:43','2021-11-14 17:32:43'),(63,1,'admin/posts','GET','172.25.0.1','[]','2021-11-14 17:32:43','2021-11-14 17:32:43'),(64,1,'admin/categories','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:32:56','2021-11-14 17:32:56'),(65,1,'admin/posts','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-11-14 17:33:01','2021-11-14 17:33:01'),(66,1,'admin','GET','172.25.0.1','[]','2021-12-05 08:39:17','2021-12-05 08:39:17'),(67,1,'admin/posts','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-12-05 08:39:25','2021-12-05 08:39:25'),(68,1,'admin/categories','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-12-05 08:39:28','2021-12-05 08:39:28'),(69,1,'admin/auth/menu','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-12-05 08:39:42','2021-12-05 08:39:42'),(70,1,'admin/categories','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-12-05 08:39:51','2021-12-05 08:39:51'),(71,1,'admin/posts','GET','172.25.0.1','{\"_pjax\":\"#pjax-container\"}','2021-12-05 08:40:08','2021-12-05 08:40:08');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2021-11-14 10:57:11','2021-11-14 10:57:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$96dC9rnsG5Q4zl7/tnneuOyOshlD1GBO0igec4qUHiapvBKTz8REW','Administrator',NULL,'nIq1ArinwdyIgvK79HHLe86SnTaYxxow1kz7YhwYGzZQ9V0cPnOL3lslsNNE','2021-11-14 10:57:11','2021-11-14 10:57:11');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Cat1','2021-11-14 17:10:32','2021-11-14 17:10:32',0,0,NULL),(2,'Cat2','2021-11-14 17:10:40','2021-11-14 17:10:40',0,0,NULL),(3,'Ms. Isabella Gislason MD','2021-11-14 17:39:44','2021-11-14 17:39:44',0,0,NULL),(4,'Hilario Bauch','2021-11-14 17:39:44','2021-11-14 17:39:44',0,0,NULL),(5,'Flossie Kemmer','2021-11-14 17:39:44','2021-11-14 17:39:44',0,0,NULL),(6,'Dandre Homenick','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,NULL),(7,'Dianna Tillman','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,NULL),(8,'Demetris Ebert','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,NULL),(9,'Miss Jenifer Dooley PhD','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,6),(10,'Kali Heidenreich I','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,6),(11,'Alphonso Boehm','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,6),(12,'Camilla Ryan III','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,7),(13,'America Littel','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,7),(14,'Danial Keebler','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,12),(15,'Ms. Eryn Hammes','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,8),(16,'Rosanna Nienow I','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,8),(17,'Allene Keebler','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,8),(18,'Zora Parker','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,16),(19,'Ms. Carlotta Klein PhD','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,16),(20,'Saul Quitzon','2021-11-14 17:40:38','2021-11-14 17:40:38',0,0,16);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2014_10_12_000000_create_users_table',1),(6,'2014_10_12_100000_create_password_resets_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2021_11_14_104050_add_user_role',2),(10,'2016_01_04_173148_create_admin_tables',3),(12,'2021_11_14_150746_create_categories_table',4),(13,'2021_11_14_150824_create_posts_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`),
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'post1','ddd','sssssss',1,'2021-11-14 17:32:43','2021-11-14 17:32:43'),(2,5,'Miss Thora Walter','https://via.placeholder.com/640x480.png/004466?text=nihil','Ut maiores sed deserunt eveniet. Voluptatum aut voluptatem inventore vel. Aperiam libero eius minima et et.',0,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(3,5,'Prof. Emelia Douglas PhD','https://via.placeholder.com/640x480.png/007700?text=incidunt','Excepturi laboriosam aliquam quia aliquid. Officia quibusdam quo id. Quasi quisquam veniam officiis.',1,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(4,4,'Henderson McGlynn','https://via.placeholder.com/640x480.png/00ddcc?text=itaque','Omnis assumenda aperiam distinctio temporibus voluptatum ut. Ex quia accusamus itaque et provident tenetur. Eum dolor id ut.',1,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(5,16,'Elsie Doyle','https://via.placeholder.com/640x480.png/00aa00?text=voluptatibus','Sunt sint repellendus dolores veniam. Voluptatibus deleniti ad hic cumque at soluta unde. Voluptatum itaque dolorem error nulla non.',0,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(6,10,'Mr. Enoch Gleason PhD','https://via.placeholder.com/640x480.png/004455?text=facilis','Doloribus deleniti sunt architecto ratione aut iure. Earum quos officiis iure nihil. Aspernatur ut quisquam velit magnam incidunt quae.',0,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(7,1,'Andreane Stehr','https://via.placeholder.com/640x480.png/00ff88?text=sed','Debitis possimus molestiae harum et temporibus. Ut ea consequatur ipsum qui omnis. Sequi eum et consectetur et dolorem consequuntur magnam.',0,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(8,17,'Norwood Cremin','https://via.placeholder.com/640x480.png/00dd44?text=cumque','Vel ducimus eius aliquid et inventore ut. Voluptas animi id ipsum est sit est. Consequatur perspiciatis quo illo quae ea.',1,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(9,12,'Guillermo Terry','https://via.placeholder.com/640x480.png/00dd44?text=voluptatem','Provident et sunt vitae quos ducimus. Iste expedita omnis architecto voluptate odit cumque. Aliquid et sapiente laborum et et nesciunt.',1,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(10,15,'Johanna Barrows','https://via.placeholder.com/640x480.png/00cc22?text=labore','Animi eaque minus odio tempora ducimus quae. Odio aut ut sit numquam qui deleniti aliquid. Et consequuntur quos molestiae tempore qui beatae.',1,'2021-11-14 18:10:53','2021-11-14 18:10:53'),(11,11,'Briana Gerhold DVM','https://via.placeholder.com/640x480.png/0044aa?text=eum','Laboriosam necessitatibus qui nihil natus sequi est sed. Tempore saepe rerum in voluptatibus optio qui incidunt.',0,'2021-11-14 18:10:53','2021-11-14 18:10:53');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dadzki','dadzki@yandex.ru','2021-11-14 10:47:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wXrE0DTcPccSneXsfZ3jTYVcSaQ5vtL1aWD6c3hw1GIRYQAoLfXxei1tlfx5','2021-11-14 10:47:02','2021-11-14 10:47:02','admin'),(2,'Cristina Pacocha','homenick.frida@example.org','2021-11-14 10:47:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qF35VMwCRy','2021-11-14 10:47:02','2021-11-14 10:47:02','user'),(3,'Prof. Brianne Carroll III','meggie83@example.net','2021-11-14 10:47:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qMjtk6RV5Q','2021-11-14 10:47:02','2021-11-14 10:47:02','user'),(4,'Peter Steuber','pbarton@example.net','2021-11-14 10:47:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fctW4qGemi','2021-11-14 10:47:02','2021-11-14 10:47:02','user'),(5,'German Carter','margot12@example.net','2021-11-14 10:47:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xdYfBlX08Z','2021-11-14 10:47:02','2021-11-14 10:47:02','user');
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

-- Dump completed on 2021-12-05  8:45:25
