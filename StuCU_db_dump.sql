-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: stucu
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Academics`
--

DROP TABLE IF EXISTS `Academics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Academics` (
  `Academics_ID` int(11) NOT NULL,
  `Website_name` varchar(400) DEFAULT NULL,
  `Website_link` varchar(1000) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `times_searched` int(11) DEFAULT '0',
  PRIMARY KEY (`Academics_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Academics`
--

LOCK TABLES `Academics` WRITE;
/*!40000 ALTER TABLE `Academics` DISABLE KEYS */;
INSERT INTO `Academics` VALUES (1,'Grade disparity between sections at UIUC','https://waf.cs.illinois.edu/discovery/grade_disparity_between_sections_at_uiuc/','This website lets you search up a class and see how GPA differs between different instructors for the same class.',0),(2,'GPAs of Every Course at The University of Illinois','https://waf.cs.illinois.edu/discovery/gpa_of_every_course_at_illinois/','This website displays the average GPA and class size of every class.',0),(3,'Every Gen Ed at UIUC, by GPA','https://waf.cs.illinois.edu/discovery/every_gen_ed_at_uiuc_by_gpa/','This website allows you to filter by which categories a gen ed fulfills, as well as the GPA and class size of every gen ed.',0),(4,'Gender Diversity at UIUC','https://waf.cs.illinois.edu/discovery/Gender-Diversity-at-UIUC/','This website shows the gender diversity of every major at UIUC, as well as some interesting outliers.',0),(5,'Racial Demographics at UIUC','https://waf.cs.illinois.edu/discovery/Racial-Demographics-at-UIUC/','This website shows the racial diversity of UIUC over the past few decades.',0),(6,'Generating a Degree Audit','https://registrar.illinois.edu/academic-records/dars-audit/','A degree audit report (DARS report) shows which graduation requirements you have fulfilled and what you still need to fulfill.',0),(7,'Gen Ed Course Explorer','https://courses.illinois.edu/gened/DEFAULT/DEFAULT','This website allows you to sort by what categories you want the gen ed to fulfill, and whether they are offered in the upcoming semester or not.',0),(8,'Academic Catalog','http://catalog.illinois.edu/','This website allows you to search up any current/past class and see the description, pre-requisites, and category fulfillments of each class.',0),(9,'Course Explorer','https://courses.illinois.edu//','This website also allows you to search up any class but also lets you filter by fields like course level, credit hours, gened requirements, online vs on campus, etc. It is ESPECIALLY useful to see if a class is offered in an upcoming semester.',0);
/*!40000 ALTER TABLE `Academics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add academics',1,'add_academics'),(2,'Can change academics',1,'change_academics'),(3,'Can delete academics',1,'delete_academics'),(4,'Can view academics',1,'view_academics'),(5,'Can add comments',2,'add_comments'),(6,'Can change comments',2,'change_comments'),(7,'Can delete comments',2,'delete_comments'),(8,'Can view comments',2,'view_comments'),(9,'Can add off campus housing',3,'add_offcampushousing'),(10,'Can change off campus housing',3,'change_offcampushousing'),(11,'Can delete off campus housing',3,'delete_offcampushousing'),(12,'Can view off campus housing',3,'view_offcampushousing'),(13,'Can add on campus housing',4,'add_oncampushousing'),(14,'Can change on campus housing',4,'change_oncampushousing'),(15,'Can delete on campus housing',4,'delete_oncampushousing'),(16,'Can view on campus housing',4,'view_oncampushousing'),(17,'Can add restaurants',5,'add_restaurants'),(18,'Can change restaurants',5,'change_restaurants'),(19,'Can delete restaurants',5,'delete_restaurants'),(20,'Can view restaurants',5,'view_restaurants'),(21,'Can add rso',6,'add_rso'),(22,'Can change rso',6,'change_rso'),(23,'Can delete rso',6,'delete_rso'),(24,'Can view rso',6,'view_rso'),(25,'Can add school social media',7,'add_schoolsocialmedia'),(26,'Can change school social media',7,'change_schoolsocialmedia'),(27,'Can delete school social media',7,'delete_schoolsocialmedia'),(28,'Can view school social media',7,'view_schoolsocialmedia'),(29,'Can add stars',8,'add_stars'),(30,'Can change stars',8,'change_stars'),(31,'Can delete stars',8,'delete_stars'),(32,'Can view stars',8,'view_stars'),(33,'Can add users',9,'add_users'),(34,'Can change users',9,'change_users'),(35,'Can delete users',9,'delete_users'),(36,'Can view users',9,'view_users'),(37,'Can add log entry',10,'add_logentry'),(38,'Can change log entry',10,'change_logentry'),(39,'Can delete log entry',10,'delete_logentry'),(40,'Can view log entry',10,'view_logentry'),(41,'Can add permission',11,'add_permission'),(42,'Can change permission',11,'change_permission'),(43,'Can delete permission',11,'delete_permission'),(44,'Can view permission',11,'view_permission'),(45,'Can add group',12,'add_group'),(46,'Can change group',12,'change_group'),(47,'Can delete group',12,'delete_group'),(48,'Can view group',12,'view_group'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user'),(53,'Can add content type',14,'add_contenttype'),(54,'Can change content type',14,'change_contenttype'),(55,'Can delete content type',14,'delete_contenttype'),(56,'Can view content type',14,'view_contenttype'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session'),(61,'Can add searches',16,'add_searches'),(62,'Can change searches',16,'change_searches'),(63,'Can delete searches',16,'delete_searches'),(64,'Can view searches',16,'view_searches');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Comments` (
  `Comment_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Content` varchar(1000) NOT NULL,
  `SSM_ID` int(11) DEFAULT NULL,
  `On_Campus_Housing_ID` int(11) DEFAULT NULL,
  `Off_Campus_Housing_ID` int(11) DEFAULT NULL,
  `RSO_ID` int(11) DEFAULT NULL,
  `Academics_ID` int(11) DEFAULT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Comment_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `SSM_ID` (`SSM_ID`),
  KEY `On_Campus_Housing_ID` (`On_Campus_Housing_ID`),
  KEY `Off_Campus_Housing_ID` (`Off_Campus_Housing_ID`),
  KEY `RSO_ID` (`RSO_ID`),
  KEY `Academics_ID` (`Academics_ID`),
  KEY `Restaurant_ID` (`Restaurant_ID`),
  KEY `idx` (`Comment_ID`,`Restaurant_ID`),
  CONSTRAINT `Comments_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_2` FOREIGN KEY (`SSM_ID`) REFERENCES `school_social_media` (`SSM_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_3` FOREIGN KEY (`On_Campus_Housing_ID`) REFERENCES `on_campus_housing` (`On_Campus_Housing_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_4` FOREIGN KEY (`Off_Campus_Housing_ID`) REFERENCES `off_campus_housing` (`Off_Campus_Housing_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_5` FOREIGN KEY (`RSO_ID`) REFERENCES `rso` (`RSO_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_6` FOREIGN KEY (`Academics_ID`) REFERENCES `academics` (`Academics_ID`) ON DELETE CASCADE,
  CONSTRAINT `Comments_ibfk_7` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurants` (`Restaurant_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (1,1,'Wow! What a cool resource. Thanks L-RAQ!',NULL,NULL,NULL,NULL,8,NULL),(2,1,'Such a cool resource! Thankful for academia',NULL,NULL,NULL,NULL,8,NULL),(3,1,'Exploring courses is fun',NULL,NULL,NULL,NULL,9,NULL),(4,1,'I\'ve always wondered about the GPA distribution for all courses!',NULL,NULL,NULL,NULL,2,NULL),(5,1,'I grew up with a guy whose last name is Allen!',NULL,1,NULL,NULL,NULL,NULL),(6,1,'25 isn\'t a number on the clock!',NULL,NULL,NULL,NULL,NULL,305),(7,1,'Not to be confused with Mattox Beckman!',7,NULL,NULL,NULL,NULL,NULL),(8,1,'Imagine being an ECE major...',22,NULL,NULL,NULL,NULL,NULL),(9,1,'More like Scarn Hall!',NULL,13,NULL,NULL,NULL,NULL),(10,1,'THIS IS A COMMENT',NULL,NULL,NULL,NULL,8,NULL),(11,1,'newly created comment',NULL,NULL,NULL,NULL,8,NULL),(12,1,'this is a cool resource',NULL,NULL,NULL,NULL,8,NULL),(13,1,'This is annother comment',NULL,NULL,NULL,NULL,8,NULL),(14,1,'I love this restaurant!',NULL,NULL,NULL,NULL,NULL,245),(15,1,'This sucks',NULL,NULL,NULL,NULL,NULL,311),(16,1,'ok',NULL,NULL,NULL,NULL,NULL,255),(17,1,'Don\'t hate 8 to Create!',NULL,NULL,NULL,4,NULL,NULL),(18,1,'So many comments!',NULL,NULL,NULL,NULL,8,NULL),(19,1,'another comment! :) ',NULL,NULL,NULL,NULL,8,NULL),(20,1,'I am a user who left a comment',NULL,NULL,NULL,NULL,3,NULL),(21,1,'So useful!!',NULL,NULL,NULL,NULL,3,NULL),(22,1,'Course Explorer!',NULL,NULL,NULL,NULL,9,NULL),(23,1,'I love Wade Fagen!',NULL,NULL,NULL,NULL,3,NULL),(24,1,'Very cool resource.',NULL,NULL,NULL,NULL,3,NULL),(25,1,'Love this site!!',NULL,NULL,NULL,NULL,3,NULL),(26,1,'Love this site....!',NULL,NULL,NULL,NULL,3,NULL);
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'admin','logentry'),(12,'auth','group'),(11,'auth','permission'),(13,'auth','user'),(14,'contenttypes','contenttype'),(15,'sessions','session'),(1,'stucu_site','academics'),(2,'stucu_site','comments'),(3,'stucu_site','offcampushousing'),(4,'stucu_site','oncampushousing'),(5,'stucu_site','restaurants'),(6,'stucu_site','rso'),(7,'stucu_site','schoolsocialmedia'),(16,'stucu_site','searches'),(8,'stucu_site','stars'),(9,'stucu_site','users');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-06 01:46:59.349205'),(2,'auth','0001_initial','2021-11-06 01:46:59.623955'),(3,'admin','0001_initial','2021-11-06 01:46:59.705099'),(4,'admin','0002_logentry_remove_auto_add','2021-11-06 01:46:59.715253'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-06 01:46:59.725039'),(6,'contenttypes','0002_remove_content_type_name','2021-11-06 01:46:59.787254'),(7,'auth','0002_alter_permission_name_max_length','2021-11-06 01:46:59.820370'),(8,'auth','0003_alter_user_email_max_length','2021-11-06 01:46:59.852242'),(9,'auth','0004_alter_user_username_opts','2021-11-06 01:46:59.861835'),(10,'auth','0005_alter_user_last_login_null','2021-11-06 01:46:59.893994'),(11,'auth','0006_require_contenttypes_0002','2021-11-06 01:46:59.897924'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-06 01:46:59.916388'),(13,'auth','0008_alter_user_username_max_length','2021-11-06 01:46:59.956149'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-06 01:46:59.998738'),(15,'auth','0010_alter_group_name_max_length','2021-11-06 01:47:00.032277'),(16,'auth','0011_update_proxy_permissions','2021-11-06 01:47:00.041779'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-06 01:47:00.085857'),(18,'sessions','0001_initial','2021-11-06 01:47:00.111007'),(19,'stucu_site','0001_initial','2021-11-06 01:47:00.127373'),(20,'stucu_site','0002_searches','2021-11-30 04:14:24.253306');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9dlxx2dq3dxxo27dtmimq5j0w9jk27w6','.eJyrVkouLSpKzSuJLy1OLYrPTFGyMtRBEctLzE1VslIqSS0uUUKViU_JLC7ISayMhyrxVLAxVnBJLElMSixOLVZUqgUATxQhag:1mukjQ:EQDsaI3kd3dFT8ak4FBD85OvfAXCzobmimFFe_OPK8Q','2021-12-22 00:22:48.834758'),('a6tpzzh5gqwjs7s9uxbuj6wq4xkbnf2w','.eJyrVkouLSpKzSuJLy1OLYrPTFGyMtRBEctLzE1VslIqSS0uUUKViU_JLC7ISayMhyoJyUhVcC9KTQQpBTLySwuUagHDRiN2:1msV0L:h7wG7HN3Ksowi3JN56doYp-f4_eUkwQ7a8iPGEyJoW8','2021-12-15 19:10:57.766930'),('abjkytwr9bm7fe57iirxv0dg09sg1wj8','.eJyrVkouLSpKzSuJLy1OLYrPTFGyMtRBEctLzE1VslIqSS0uUUKViU_JLC7ISayMhyoJASmpBQD1nR5p:1mowAD:3P6OckEZYCy73nx_kU-dv_CozYTZCTq4turHDAKwtOQ','2021-12-05 23:22:25.585124'),('jjq1e6m1cli4kyc43danw24o8u7cffiv','.eJyrVkouLSpKzSuJLy1OLYrPTFGyMtRBEctLzE1VslIqSS0uUUKViU_JLC7ISayMhyrxVLAxVnBJLElMSixOLVZUqgUATxQhag:1muPsm:pDE4HxIj_Ec3186H94-SR-fNE_9hR8ww7jE6we5Am6k','2021-12-21 02:07:04.289302'),('t36b0txmugd8qnm3nuhkd4nfugkldrd7','.eJyrVkouLSpKzSuJLy1OLVKyMtJBEYjPTFGyMkQVy0vMTVWyUipJLS5RQlOdkllckJNYGQ9V4qlgY6zg6OQSqlQLAM5mJNo:1mkt6V:yCAl9pWsl8tkTNXoDmGOGkj4uAahD6ObsNt57BluwRg','2021-11-24 19:17:51.407287');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Off_Campus_Housing`
--

DROP TABLE IF EXISTS `Off_Campus_Housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Off_Campus_Housing` (
  `Off_Campus_Housing_ID` int(11) NOT NULL,
  `Company_name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Website_link` varchar(1000) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Building_name` varchar(255) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Off_Campus_Housing_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Off_Campus_Housing`
--

LOCK TABLES `Off_Campus_Housing` WRITE;
/*!40000 ALTER TABLE `Off_Campus_Housing` DISABLE KEYS */;
/*!40000 ALTER TABLE `Off_Campus_Housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `On_Campus_Housing`
--

DROP TABLE IF EXISTS `On_Campus_Housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `On_Campus_Housing` (
  `On_Campus_Housing_ID` int(11) NOT NULL,
  `Dorm_unit_name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Website_link` varchar(1000) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Building_name` varchar(255) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `times_searched` int(11) DEFAULT '0',
  PRIMARY KEY (`On_Campus_Housing_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `On_Campus_Housing`
--

LOCK TABLES `On_Campus_Housing` WRITE;
/*!40000 ALTER TABLE `On_Campus_Housing` DISABLE KEYS */;
INSERT INTO `On_Campus_Housing` VALUES (1,'Allen Hall',NULL,'(217) 333-1100','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Allen','Allen Hall 1005 W. Gregory Dr. Urbana, IL 61801',NULL,'Unit One at Allen Hall is a creative, arts-immersive living-learning community with educational resources including a music recording studio, darkroom, ceramics lab, and free music lessons. This liberal arts community welcomes residents from eclectic and diverse backgrounds and offers gender-inclusive amenities.',3),(2,'Busey-Evans Halls',NULL,'(217) 244-7639','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Busey-Evans','Busey Hall 1111 W. Nevada St. Urbana, IL 61801',NULL,'Busey (all women) and Evans (all men) Halls are conveniently situated close to the Main Quad, campus cultural centers, and local shops and cafés. Hall programming is focused on providing comfortable, empowering environments for residents to explore their interests and passions.',3),(3,'Illinois Street Residence Halls',NULL,'(217) 333-4640','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Illinois-Street','Townsend Hall 918 W. Illinois St. Urbana, IL 61801',NULL,'Illinois Street Residence Halls (Townsend and Wardall) provides an environment that is quiet and conducive to academic success. Proximity to the Engineering Quad, combined with the fact that it is home to the Innovation Living-Learning Community and Honors Living-Learning Community, makes ISR a perfect choice for students who want to be surrounded by other students in similarly rigorous academic programs.',3),(4,'Lincoln Avenue Residence Halls',NULL,'(217) 333-0200','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Lincoln-Avenue','Leonard Hall 1003 S. Lincoln Ave. Urbana, IL 61801',NULL,'Lincoln Avenue Residence Halls (Leonard and Shelden) offers residents a quiet, friendly, and laid-back community and features vegetarian and Kosher on-site dining and a sustainability garden. LAR hosts the Sustainability Living-Learning Community and Scholars Community.',3),(5,'Florida Avenue Residence Halls',NULL,'(217) 333-0840','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Florida-Avenue','Oglesby Hall 1005 College Ct. Urbana, IL 61801',NULL,'Florida Avenue Residence Halls (Oglesby and Trelease) embraces an inclusive, multicultural community and offers common spaces for socializing, in-hall dining, and curbside bus pickup. Proximity to outdoor gathering spaces, including basketball and sand volleyball courts, gives this community a familiar, at-home atmosphere. FAR hosts the Health Professions and Women In Math, Science, and Engineering (WIMSE) Living-Learning Communities and has break housing options.',3),(6,'Pennsylvania Avenue Residence Halls',NULL,'(217) 333-2950','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Pennsylvania-Avenue','Babcock Hall 1002 College Ct. Urbana, IL 61801',NULL,'Pennsylvania Avenue Residence Halls (Babcock, Carr, Blaisdell, and Saunders) is a diverse but close-knit community with updated amenities like newly renovated private bathrooms and comfortable social lounges. In-hall dining and proximity to outdoor gathering and intramural spaces give PAR a true neighborhood feel. PAR hosts the Intersections and Global Crossroads Living-Learning Communities.',3),(7,'Hopkins Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Hopkins','Hopkins Hall 1208 S. First St. Champaign, IL 61820','IKE North','Hopkins Hall is a social community of primarily first-year students. Hall programming focuses on nurturing a solid foundation for students’ collegiate experience. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(8,'Nugent Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Nugent','Nugent Hall 207 E. Gregory Dr. Champaign, IL 61820','IKE North','Nugent Hall is home to mostly upper-division undergraduate students residents. It also hosts the Business Living-Learning Community (coming to Nugent in 2021-2022) and the Beckwith Residential Community for students with severe physical disabilities. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is connected by an interior walkway.',3),(9,'Wassaja Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Wassaja','Wassaja Hall 1202 S. First St. Champaign, IL 61820','IKE North','Wassaja Hall features double rooms clustered into small communities with private individual-use bathrooms (including a gender-inclusive option.) The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(10,'Weston Hall',NULL,'(217)333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Weston','Weston Hall 204 E. Peabody Dr. Champaign, IL 61820','IKE North','Weston Hall offers students the opportunity to explore majors through its Weston Exploration Living-Learning Community and develop as a leader through its LEADS Living-Learning Community (coming to Weston in 2021-2022). The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is located just around the corner.',3),(11,'Barton-Lundgren Halls',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Barton-Lundgren','Barton Hall 1205 S. Fourth St. Champaign, IL 61820','IKE South','Barton (all women) and Lundgren (all men) Halls are quieter communities with more single rooms, making them ideal for academically-focused students who are looking for a little bit more privacy. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is located right around the corner.',3),(12,'Bousfield Hall',NULL,'(217) 244-8360','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Bousfield','Bousfield Hall 1214 S. First St. Champaign, IL 61820','IKE South','Bousfield Hall is exclusively for sophomores and offers suite-style living with gender-inclusive options. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(13,'Scott Hall',NULL,'(217) 333-2394 ','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Scott','Scott Hall 202 E. Peabody Dr. Champaign, IL 61820','IKE South','Scott Hall is home to a mix of first-year students and upper-division students, including the Transfer Community. With a quiet and laid-back atmosphere, it offers a perfect setting for students to find a good balance between social and academic life. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(14,'Snyder Hall',NULL,'(217) 333-2394','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Snyder','Snyder Hall 206 E. Peabody Dr. Champaign, IL 61820','IKE South','Snyder Hall is a close-knit community rooted in social traditions and the commitment to a substance-free lifestyle. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(15,'Taft-Van Doren Halls',NULL,'(217) 333-2394','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Taft-Van-Doren','Taft Hall 1213 S. Fourth St. Champaign, IL 61820','IKE South','Starting in 2021-2022, Taft and Van Doren Halls will house exclusively sophomores and above, feature more single rooms, and offer the option to select a 6 Classic Meal or 6 Classic Meal + 25 Dining Dollars meal plan. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.',3),(16,'Armory House','info@armoryhouse.com','(217) 384-4499','https://certified.housing.illinois.edu/property/armory-house/','100 Clark Hall 1203 S. 4th St. Champaign IL 61820',NULL,'Welcoming students from around the world, Armory House offers spacious single and double rooms (more than half are singles). Armory House Suites feature full-size beds and bathtubs in all of the rooms. From day one, activities are planned to help residents make new friends, have fun, and explore cross-cultural learning.\nArmory House Kitchen proudly offers global cuisines that are freshly prepared and sourced from local ingredients. Our chefs design Tastes-of- the World menus, vegetarian options, and made-to-order entrees for students to experience while enjoying their personal favorites. Multiple dining locations and to-go meals available.',0),(17,'Bromley Hall','info@bromleyhall.com','(217) 384-6100','www.bromleyhall.com','910 S. Third St. Champaign IL 61820',NULL,'Bromley Hall is an all-inclusive and fully air-conditioned co-ed residence hall serving the University of Illinois campus. Bromley Hall is open to all University of Illinois students, including freshmen.\nIn addition to its prime location, Bromley Hall has some of the largest rooms on campus, all of which include adjoining semi-private bathrooms. All amenities, including regular housekeeping service in residents’ rooms, is provided at no additional cost.',3),(18,'Brown House on Coler','brownhouseoncoler@comcast.net',NULL,'https://certified.housing.illinois.edu/property/brown-house/','703 S. Coler Ave. Urbana IL',NULL,'Brown House on Coler, the smallest of the Private Certified Housing facilities, is a Christian house for 4 men.\nBrown House is situated in a tree-filled neighborhood just two blocks east of Lincoln Avenue, between Oregon and Nevada streets.\nEach room is a single furnished with a bed, dresser, desk, chair, lamp, and area rug. The first floor of the house has an inviting living room with fireplace, a comfortable dining room, and a full kitchen. Residents prepare their evening meals on a cooperative rotating basis and household chores are shared.',0),(19,'Evans Scholarship House','scholars@wgaesf.org','(847) 724-4600','https://certified.housing.illinois.edu/property/evans-scholarship-house/','1007 S. Third St. Champaign IL 61820',NULL,'The Evans Scholarship House is a coed residence facility for recipients of the Chick Evans Scholarship for Caddies, a four year, full tuition and housing scholarship. The four pillars of the Evans Scholarship are Scholarship, Leadership, Community Living, and House Upkeep. Evans Scholars share the work of maintaining the house while living and learning together.',0),(20,'Hendrick House','office@hendrickhouse.com','(217) 365-8000','https://certified.housing.illinois.edu/property/hendrick-house/','904 W Green St, Urbana, IL 61801',NULL,'Since 1948, The Hendrick Family has welcomed students through its doors on their way to an enriching academic experience at the University of Illinois at Urbana-Champaign.\nLocated near the heart of the engineering campus, Hendrick House offers large rooms with comfortable, quiet surroundings. Our spacious rooms give residents a warm feeling and feature hardwood doors, wall-to-wall carpeting, and semi-private baths.\nOur fresh cuisine brings students back year after year. Choose from our made-to-order grilled selections, a delectable treat from our creation station, or a delicious home-style selection. Don’t forget dessert made fresh daily by our baker!',0),(21,'Illini Chabad','info@illinichabad.com','(217) 487-4200','www.illinichabad.com','209 E. Armory Ave. Champaign IL',NULL,'Overlooking Washington Park with Stadium views from the top floor, Illini Chabad offers a premier housing experience for University of Illinois students. Residents enjoy the privacy of their own bedroom in our two-bedroom suites while feeling welcomed and supported by the tight-knit community of just 36 residents. Join the inaugural Fall 2021 class and experience campus life at UIUC’s first ever Jewish-affiliated housing option!',0),(22,'Illini Tower','info@illinitower.net','(217) 344-0400','https://illinitoweruiuc.com/','409 E. Chalmers St Champaign IL',NULL,'Illini Tower is the perfect place for UIUC student life. It’s three blocks from the State Farm Center and a quick walk to Memorial Stadium. Enjoy easy access to shopping and eateries, or take advantage of our full-week meal plan. Make your home just steps away from everything your school community has to offer with unique residential life programs to help you live, learn, and grow.',0),(23,'Koinonia','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','308 E. Daniel St. Champaign IL',NULL,'Koinonia is a Christian Cooperative residence where undergraduate men live and work together in intentional community.\nResidents share rooms and meals together, take care of weekly house duties (including cooking/cleaning), and participate in regularly planned social activities and opportunities for spiritual growth. Koinonia offers a unique living experience at a reasonable cost that encourages strong character, facilitates leadership development, and fosters life-long relationships.\nThe house is sponsored and staffed by the Baptist Student Foundation at UIUC, but its residents represent a wide range of Christian traditions.',0),(24,'Nabor House','naborhouse@gmail.com',NULL,'https://certified.housing.illinois.edu/property/nabor-house/','1002 S. Lincoln Ave. Urbana IL',NULL,'Nabor House is an independent cooperative fraternity featuring core values of education, cooperation, recreation, leadership, religion, and agriculture.\nNabor House provides benefits of brotherhood enjoyed by Greek fraternities while maintaining a cost of living that is much more affordable. Members share the work of maintaining the house and preparing meals and pay about 60 percent of other comparable housing options on campus.',0),(25,'Newman Hall','live@newmanhall.com','(217) 344-1266','www.sjcnc.org/housing','604 E. Armory Ave Champaign IL',NULL,'Live centered at Newman Hall, just steps from the Quad! Enjoy the best of student community and large, updated suite- and traditional-style rooms, fantastic fresh dining, and premium amenities.\nWith dozens of student groups, tons of social events, and a supportive, welcoming environment, at Newman Hall you’ll find more than just a place to live – you’ll find a place to come home to.',3),(26,'Presby Hall','leasing@presbyhall.com','(217) 344-0102','www.presbyhall.com','405 E. John St. Champaign IL',NULL,'Presby Hall’s spacious suites were built to provide the best living environment available to University of Illinois Students.\nComprised of a living room, kitchen, two bathrooms, and either five- or six-bed suites, Presby Hall’s suite layouts provide a great combination of social and private areas! Presby Hall also offers an on-site parking garage. Presby Hall’s parking garage is the most secure and safe parking available to University of Illinois students. We have 35 spaces to allocate on a first-come, first-serve basis.',15),(27,'Stratford Housel','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','310 E. Daniel St. Champaign IL',NULL,'Stratford House is a Christian cooperative residence where undergraduate and graduate women live and work together in intentional community.\nResidents share rooms and meals together, take turns cooking and cleaning up after meals, and participate in regularly planned social activities and opportunities for spiritual growth. Stratford House offers a unique living experience at a reasonable cost that encourages strong character, facilitates leadership development, and fosters life-long relationships.\nThe house is sponsored and staffed by the Baptist Student Foundation at UIUC, but its residents represent a wide range of Christian traditions.',0),(28,'Stutton House','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','312 E. Daniel St. Champaign IL',NULL,'Sutton House is a Christian cooperative student residence where undergraduate and graduate women live and work together in intentional community. The house offers single rooms with shared baths.  Residents have access to a meal plan at Stratford House and are able to prepare their meals in the fully equipped Sutton House kitchen. Parking is available in the lot behind the house for an additional fee on a first come, first served basis. Social and recreational activities and opportunities for spiritual growth are offered. Sutton House provides a unique living experience that encourages strong character, facilitates leadership development, and fosters life-long relationships.',0);
/*!40000 ALTER TABLE `On_Campus_Housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurants`
--

DROP TABLE IF EXISTS `Restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Restaurants` (
  `Restaurant_ID` int(11) NOT NULL,
  `Restaurant_name` varchar(255) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Cuisine` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Website_link` varchar(255) DEFAULT NULL,
  `times_searched` int(11) DEFAULT '0',
  PRIMARY KEY (`Restaurant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES (1,'Apple Dumplin\'','2173440076','American','2014 N Highcross Rd., Urbana, Illinois',NULL,0),(2,'Big Grove Tavern','2172393505','American','1 E Main St., Champaign, Illinois','biggrovetavern.com',0),(3,'Courier Cafe','2173281811','American','111 N Race St, Urbana, Illinois','couriersilvercreek.com',0),(4,'Dancing Dog Eatery & Juicery','2175521344','American','126 W Main St., Urbana, Illinois','dancingdogeatery.com',0),(5,'Flesor\'s Candy Kitchen','2172533753','American','101 W Sale St, Tuscola, Illinois','flesorscandy.com',0),(6,'Hank\'s Table','2173519463','American','122 N Neil Street, Champaign, Illinois',NULL,0),(7,'Irma Lou\'s Kitchen',NULL,'American','127 W Sale St., Tuscola, Illinois','Irmalous.com',0),(8,'J. Gumbo\'s','2173374840','American','700 S Gregory, Urbana, Illinois','jgumbos.com',0),(9,'Jo\'s Country Diner','2175432457','American','398 1L-133, Arthur, Illinois',NULL,0),(10,'Mahomet Family Restaurant','2175862700','American','1002 Commercial Drive, Mahomet, Illinois','mahometfamilyrestaurantil.com',0),(11,'Ott\'s Drive-In','2178931100','American','400 N Century, Rantoul, Illinois','ottsdrivein.com',0),(12,'R&I Restaurant','2175432011','American','127 S Vine St., Arthur, Illinois',NULL,0),(13,'Red Herring Restaurant','2173672340','American','1209 W Oregon, Urbana, Illinois','channingmurray.org/redherring',0),(14,'Red Wheel Restaurant','2178930471','American','741 Broadmeadow Rd., Rantoul, Illinois',NULL,0),(15,'Red Wheel Restaurant','2178921100','American','1724 E Grove Avenue, Rantoul, Illinois',NULL,0),(16,'Rich\'s Family Restaurant','2175822777','American','305 W Ellen Street, Ogden, Illinois',NULL,0),(17,'Salad Meister','2177277227','American','601 S Sixth St, Champaign, Illinois','saladmeister.com',0),(18,'Scratch','2174696230','American','227 E Lincoln Street, St. Joseph, Illinois','scratchmadestjoe.com',0),(19,'Sun Singer Wine & Spirits','2173511115','American','1115 W Windsor Rd., Champaign, Illinois','sunsingerwines.com',0),(20,'Urbana\'s Garden Restaurant','2173281514','American','810 Killarney, Urbana, Illinois','urbanagardenrestaurant.com',0),(21,'Yoder\'s Kitchen','2176432714','American','1195 E Columbia St., Arthur, Illinois','yoderskitchen.com',0),(22,'A-Ri-Rang','2173595569','Asian','607 S Wright St, Champaign, Illinois',NULL,0),(23,'Asian Noodle & Sushi','2178199699','Asian','305 Cedar Street, Champaign, Illinois',NULL,0),(24,'Asian Taste','2173846070','Asian','502 E John St, Champaign, Illinois','asiantastechampaign.com',0),(25,'Aunlie Lee\'s Chinese Kitchen','2176937928','Asian','49 B E Green St., Champaign, Illinois','auntieleechampaign.com',0),(26,'B Won','2173522966','Asian','2006 S Neil St, Champaign, Illinois','bwonkorean.com',0),(27,'Bab Plus Korean','2176075906','Asian','700 S Gregory St, Urbana, Illinois','babpluskorean.com',0),(28,'Bangkok Thai & Pho 911','2179541641','Asian','410 E Green St, Champaign, Illinois',NULL,0),(29,'Bangkok Thai & Pho 911','2176075828','Asian','1104 N Cunningham Ave, Urbana, Illinois',NULL,0),(30,'Basil Thai','2173448662','Asian','701 S Gregory St, Urbana, Illinois',NULL,0),(31,'Best Wok','2173565757','Asian','907 W Marketview Dr., Champaign, Illinois','bestwokchampaign.com',0),(32,'BoBo\'s China','2173522272','Asian','404 E Green St, Champaign, Illinois','bobochinail.com',1),(33,'China Express','2178928321','Asian','1235 E Grove Ave, Rantoul, Illinois',NULL,12),(34,'China Garden','2173676588','Asian','114 N Vine St, Urbana, Illinois',NULL,1),(35,'China King','2174699966','Asian','2145 S Neil St, Champaign, Illinois','chinakingchampaign.com',1),(36,'China King','2173518885','Asian','205 E Warren, St. Joseph, Illinois','chinakingchampaign.com',1),(37,'Chinatown Buffet','2173989888','Asian','713 W Marketview Dr., Champaign, Illinois',NULL,1),(38,'Chinatown Restaurant','2172534173','Asian','206 E Southline Rd., Tuscola, Illinois',NULL,1),(39,'Chopstix',NULL,'Asian','202 E Green St., Ste. 1, Champaign, Illinois','21735972222 | chopstix.carry-out.com',0),(40,'Cravings',NULL,'Asian','603 S Wright St., Champaign, Illinois','2173282538 | cravingscu.com',0),(41,'Dumpling Noodle BBQ','2172810880','Asian','715 S Neil St, Champaign, Illinois',NULL,0),(42,'First Wok','2173444500','Asian','1815-A S Philo Rd., Urbana, Illinois',NULL,0),(43,'Golden Harbor','2173988988','Asian','505 S Neil St., Champaign, Illinois','goldenharboronline.com',0),(44,'Golden Kitchen','2177625678','Asian','402 W Center St, Monticello, Illinois',NULL,0),(45,'Golden Wok','2173568383','Asian','405 E University Ave, Champaign, Illinois','goldenwokcu.com',0),(46,'Good Fella Korean Bistro','2172395959','Asian','905 S Neil St, Champaign, Illinois','goodfellakoreanbistro.com',0),(47,'Green Jade','2173555988','Asian','1109 W Windsor Rd., Champaign, Illinois','greenjadechampaign.com',0),(48,'Green Onion Asian Market','2173595370','Asian','2020 S Neil Street, Champaign, Illinois',NULL,0),(49,'Home of Gourmet Chinese & Thai','2173447483','Asian','604 E Daniel St, Champaign, Illinois',NULL,0),(50,'Hot Wok Express','2173847170','Asian','1102 W University Ave, Urbana, Illinois',NULL,11),(51,'I Wok','2173519888','Asian','113 W Calvin St, Savoy, Illinois','iwoksavoy.com',0),(52,'Jip Bap','2175521688','Asian','601 S Sixth St., Champaign, Illinois',NULL,0),(53,'K-Bowl','2173446022','Asian','39 E Green St., Champaign, Illinois',NULL,0),(54,'Ko Fusion','2179541572','Asian','701 S Gregory Dr., Urbana, Illinois','kofusion.com',0),(55,'Ko Fusion','2175311166','Asian','1 E Main St., Champaign, Illinois','kofusion.com',0),(56,'Kung Fu BBQ','2173591888','Asian','510 E John St, Champaign, Illinois',NULL,0),(57,'Lai Lai Wok','2173281888','Asian','402 E Green St, Ste. A, Champaign, Illinois','lailaiwokchampaign.com',0),(58,'Lao Sze Chuan Chinese Restaurant','2176890031','Asian','608 E University Ave, Champaign, Illinois','laoszechuanchinese.com',0),(59,'Mandarin Wok','2173845088','Asian','403 1/2 E Green St, Champaign, Illinois','mandarinwokonline.com',0),(60,'Masijta Grill','2175521188','Asian','202 N Race St, Ste. A, Urbana, Illinois','masijtagrill.com',0),(61,'Mid-Summer Lounge','2176071434','Asian','623 E Green St, Champaign, Illinois','midsummerlounge.com',0),(62,'Ming Garden','2173520056','Asian','1804 Sangamon Dr., Champaign, Illinois',NULL,0),(63,'Moki Sushi','2175521600','Asian','2017 S Neil St, Champaign, Illinois','mokisushibar.com',0),(64,'Mr. Crab','2173989999','Asian','401 S First Street, Champaign, Illinois',NULL,0),(65,'My Thai','2173518424','Asian','2312 W Springfield Ave., Champaign, Illinois','mythaichampaign.com',0),(66,'Naniing Bistro','2176078117','Asian','508 E Green St, Champaign, Illinois','nanjingbistrochampaign.com',0),(67,'Oishi','2173986888','Asian','2501 N Prospect Ave, Champaign, Illinois','oishiasiancuisine.com',0),(68,'Ozu Ramen','3127990784','Asian','601 S Sixth St, Champaign, Illinois',NULL,0),(69,'Peking Garden','2173558888','Asian','206 N Randolph St, Champaign, Illinois','pekinggardenchampaign.com',0),(70,'Peking House','2175862316','Asian','806 E Franklin St, Mahomet, Illinois',NULL,0),(71,'Pho Cafe','2175521106','Asian','611 E Green St., Champaign, Illinois',NULL,0),(72,'Poke Lab','2175521880','Asian','605 S Sixth St, Champaign, Illinois',NULL,0),(73,'Rainbow Garden','2173982670','Asian','1402 S Neil St., Champaign, Illinois','rainbowgarden.com',0),(74,'Rainbow Garden','2173441888','Asian','202 E University Ave, Urbana, Illinois','rainbow7garden.com',0),(75,'Red Cape Hot','2179540545','Asian','112 E Green St, Champaign, Illinois',NULL,0),(76,'Sakanaya','2173441400','Asian','403 E Green St., Champaign, Illinois','sakanayaerestaurant.com',0),(77,'San Maru','2173522119','Asian','2504 Village Green Pl, Champaign, Illinois','sanmarucu.com',0),(78,'Shiquan Wonton','2176072635','Asian','212 E Green St., Champaign, Illinois',NULL,0),(79,'Siam Terrace','2173678424','Asian','212 W Main St, Urbana, Illinois','siamterrace.com',0),(80,'South China Restaurant','2173529008','Asian','25 E Springfield Ave., Champaign, Illinois','southchinachampaign.com',1),(81,'Spicy Tang','2174196676','Asian','607 S Sixth Street, Champaign, Illinois','spicytangrestaurant.com',0),(82,'Spoon House Korean Kitchen','2173443483','Asian','616 E Green St, Champaign, Illinois',NULL,0),(83,'Star BBQ Restaurant','2173567777','Asian','1209 Savoy Plaza Ln., Savoy, Illinois','starbbquiuc.com',0),(84,'Sunny China Buffet','2173678883','Asian','1703 S Philo Rd., Urbana, Illinois','sunnychinabuffet.com',1),(85,'Super Wok','2173980111','Asian','1737 W Kirby Ave, Champaign, Illinois','gosuperwok.com',0),(86,'Sushi Ichiban','2179540493','Asian','619 S Wright St., Champaign, Illinois','sushiichibanchampaign.com',0),(87,'Sushi Kame','2173563366','Asian','132 W Church St, Champaign, Illinois',NULL,0),(88,'Sushi Rock','2173374285','Asian','621 E Green St., Champaign, Illinois','sushirockchampaign.com',0),(89,'Sushi San','2173281886','Asian','1401 W Green St., Urbana, Illinois',NULL,0),(90,'Szechuan China','2173989999','Asian','401 S First St, Champaign, Illinois','szechuanchina.com',1),(91,'Thara Thai','2173781986','Asian','912-1/2 Bloomington Rd., Champaign, Illinois','tharathairestaurant.com',0),(92,'The Wok','2175861588','Asian','703 Eastwood Dr., Ste. C, Mahomet, Illinois',NULL,0),(93,'Xinh Xinh Cafe','2173377600','Asian','114 N Vine, Ste. H, Urbana, Illinois','xinhxinhecafe.com',0),(94,'Y Eatery','2173371500','Asian','1001 S Wright St, Champaign, Illinois',NULL,0),(95,'Aroma Cafe','2173563200','Bakeries & Cafes','118 N Neil St, Champaign, Illinois','aromarcafe.com',0),(96,'Bossa Nova Cafe','2176076359','Bakeries & Cafes','1 E Main Street, Champaign, Illinois','bossanovacoffeehouse.com',0),(97,'BrewLab Coffee','2179797123','Bakeries & Cafes','630 S Fifth St, Champaign, Illinois','brewlab.coffee',0),(98,'Cafe Kopi','2173594266','Bakeries & Cafes','109 N Walnut St, Champaign, Illinois','cafe-kopi.com',0),(99,'Cafeteria & Company',NULL,'Bakeries & Cafes','208 W Main Street, Urbana, Illinois','cafeteriaandcompany.com',0),(100,'Caffe Bene','2176072611','Bakeries & Cafes','524 E Green St, Champaign, Illinois',NULL,0),(101,'Caffe Bene','2179178000','Bakeries & Cafes','700 S Gregory St, Urbana, Illinois',NULL,0),(102,'Caffe Paradiso','2173846066','Bakeries & Cafes','801 S Lincoln Ave, Urbana, Illinois','enjoyparadiso.com',0),(103,'Carmella\'s Creme','2175310224','Bakeries & Cafes','1611 W Springfield Ave, Champaign, Illinois',NULL,0),(104,'Clever Moose Cafe','2176078126','Bakeries & Cafes','1807 S Neil St, Champaign, Illinois','lodgic.org/cleveremooseecafe',0),(105,'Common Ground Food Co-op','2173523347','Bakeries & Cafes','300 S Broadway Ave, Suite 166, Urbana, Illinois','commonground.coop',0),(106,'Espresso Royale','2173376160','Bakeries & Cafes','1117 W Oregon, Urbana, Illinois','espressoroyalecoffee.com',45),(107,'Espresso Royale','2173284335','Bakeries & Cafes','1301 W Springfield Ave., Urbana, Illinois','espressoroyalecoffee.com',45),(108,'Espresso Royale','2173337799','Bakeries & Cafes','1402 W Gregory Dr, Urbana, Illinois','espressoroyalecoffee.com',45),(109,'Espresso Royale','2173510928','Bakeries & Cafes','1411 S Neil St, Champaign, Illinois','espressoroyalecoffee.com',45),(110,'Espresso Royale','2173521998','Bakeries & Cafes','2401 Village Green Pl, Champaign, Illinois','espressoroyalecoffee.com',45),(111,'Espresso Royale','2172443194','Bakeries & Cafes','500 E Peabody Dr., Champaign, Illinois','espressoroyalecoffee.com',45),(112,'Espresso Royale','2173337074','Bakeries & Cafes','515 E Gregory Dr., Champaign, Illinois','espressoroyalecoffee.com',45),(113,'Evo Cafe','2173287688','Asian','711 S Sixth St., Champaign, Illinois','evomenu.com',0),(114,'Flying Machine Avionics','2176007949','Bakeries & Cafes','202. S First St., Champaign, Illinois',NULL,0),(115,'Geschenk Boutique Coffee & Tea Haus','2174696034','Bakeries & Cafes','228 E Lincoln Street, St. Joseph, Illinois',NULL,0),(116,'Greenhouse Cafe','2173333287','Bakeries & Cafes','515 Old Timber Rd., Monticello, Illinois','allerton.illinois.edu/greenhouse-cafe',0),(117,'Hopscotch Bakery + Market','2176076436','Bakeries & Cafes','802 W John St, Champaign, Illinois','hopscotchcakes.com',0),(118,'Industrial Donut','2176071323','Bakeries & Cafes','501 Commerce Dr., Savoy, Illinois','industrialdonut.com',0),(119,'Kung Fu Tea','2175521668','Bakeries & Cafes','707 S 6th St, Champaign, Illinois','kungfutea.com',0),(120,'Latea Lounge','2179541855','Bakeries & Cafes','601 S Sixth St., Champaign, Illinois','latealounge.com',0),(121,'Pandamonium Doughnuts','6309464306','Bakeries & Cafes','1105 Windsor Rd., Champaign, Illinois','pandamoniumdoughnuts.wixsite.com/pandamoniumdoughnuts',0),(122,'Pekara Bakery & Bistro','2173594500','Bakeries & Cafes','116 N Neil St, Champaign, Illinois','pekarabakery.com',0),(123,'Pekara Bakery & Bistro','2179541002','Bakeries & Cafes','811 W Springfield Ave., Champaign, Illinois','pekarabakery.com',0),(124,'PVP Bakery','2178191265','Bakeries & Cafes','611 E Green St, Champaign, Illinois',NULL,0),(125,'Rick\'s Bakery','2173449383','Bakeries & Cafes','124 W Main St, Urbana, Illinois','ricksbakeryurbana.com',0),(126,'Roselen\'s Coffees & Delights','2175433106','Bakeries & Cafes','1045 E Columbia St., Arthur, Illinois','roselenscoffeesanddelights.com',0),(127,'Strawberry Fields Natural Food Store & Cafe','2173281655','Bakeries & Cafes','306 W Springfield Ave, Urbana, Illinois','strawberryfields.com',0),(128,'Steeple Coffee House and Gallery','2177622924','Bakeries & Cafes','102 E Lafayette St, Monticello, Illinois',NULL,0),(129,'Taipei Cafe','3127990784','Bakeries & Cafes','512 E Green St, Champaign, Illinois',NULL,0),(130,'Teamoji','2176076339','Bakeries & Cafes','617 E Green St., Champaign, Illinois','teamoji.business.site',0),(131,'The Bread Company','2173831007','Bakeries & Cafes','706 S Goodwin Ave, Urbana, Illinois','thebread.co',0),(132,'Ye Olde Donut Shoppe','2173593311','Bakeries & Cafes','1401 S Neil St., Champaign, Illinois',NULL,0),(133,'3 Ravens','2177623333','Bar & Grill','108 S Charter St., Monticello, Illinois','3ravens.pub',0),(134,'Angela\'s Food & Spirits','2175434059','Bar & Grill','120 N Walnut St, Arthur, Illinois',NULL,0),(135,'Attie\'s Bur & Grill','2173679876','Bar & Grill','2600 S Stone Creek Blvd., Urbana, Illinois','atties.net',0),(136,'Baxter\'s American Grille','2172399299','Bar & Grill','100 Trade Centre Dr., Champaign, Illinois','baxtersgrille.com',0),(137,'Billy Barooz Pub & Grill','2173558030','Bar & Grill','2521 Village Green Pl., Champaign, Illinois','billybarooz.com',0),(138,'Blue Star Family Restaurant','2178971345','Bar & Grill','201 E Division Street, Fisher, Illinois',NULL,0),(139,'Boomerangs Bar & Grill','2172397264','Bar & Grill','1309 E Washington St, Urbana, Illinois','boomerangsbarandgrill.com',0),(140,'Brothers Bar & Grill','2173285531','Bar & Grill','613 E Green St, Champaign, Illinois','brothersbar.com/champaign',1),(141,'Bud\'s Bar','2178929655','Bar & Grill','122 N Kentucky Ave, Rantoul, Illinois','budsbar.business.site',0),(142,'Bunny\'s Tavern','2173678175','Bar & Grill','119 W Water St, Urbana, Illinois','bunnystavern.com',0),(143,'Cactus Grill','2173518226','Bar & Grill','1405 S Neil St, Champaign, Illinois','cactusgrillchampaign.com',0),(144,'Clark Bar','2173550510','Bar & Grill','207 W Clark St., Champaign, Illinois','theclarkbar.com',0),(145,'Cowboy Monkey','2173982688','Bar & Grill','6 Taylor St, Champaign, Illinois','cowboy-monkey.com',0),(146,'Crane Alley','2173847526','Bar & Grill','115 W Main St, Urbana, Illinois','crane-alley.com',0),(147,'Destihl Restaurant & Brew Works','2173560301','Bar & Grill','301 N Neil St, Champaign, Illinois','destihl.com',0),(148,'Esquire Lounge','2173985858','Bar & Grill','106 N Walnut St, Champaign, Illinois','esquirelounge.com',0),(149,'Farren\'s Pub & Eatery','2173596977','Bar & Grill','117 N Walnut St, Champaign, Illinois','farrenspub.com',0),(150,'ET\'s Downtown Runroul','2178930222','Bar & Grill','107 E Sangamon, Rantoul, Illinois','etsdowntown.com',0),(151,'Fat City Bar & Grill','2179540556','Bar & Grill','505 S Chestnut St, Champaign, Illinois','citycenterchampaign.com',0),(152,'Fieldhouse 219','2176311155','Bar & Grill','219 W Washington St., Monticello, Illinois','fieldhouse219.com',0),(153,'Freeman\'s Tavern','2175833220','Bar & Grill','108 West Main Street, Royal, Illinois',NULL,0),(154,'Goldy\'s Bar & Grill','2173592177','Bar & Grill','123 S Mattis Ave., Champaign, Illinois',NULL,0),(155,'Guido\'s Bur & Grill','2173593148','Bar & Grill','2 E Main St, Champaign, Illinois','guidosbar.com',0),(156,'Houlihan\'s','2178195005','Bar & Grill','1902 S First St, Champaign, Illinois','houlihans.com',0),(157,'It\'ll Do 2','2172534500','Bar & Grill','600 S Washington St., Tuscola, Illinois',NULL,0),(158,'Joe\'s Brewery','2173841790','Bar & Grill','706 S Fifth St, Champaign, Illinois','joesbrewery.com',1),(159,'JT Walker\'s Restaurant & Brewery','2175861100','Bar & Grill','401 E Main St, Mahomet, Illinois','jtwalkers.com',0),(160,'Legends Bar & Grill','2173557674','Bar & Grill','522 E Green St., Champaign, Illinois','legendsbarchampaign.com',0),(161,'Monarch Brewing Company','2176311141','Bar & Grill','212 S Independence St, Monticello, Illinois','monarchbrewingco.com',0),(162,'Murphy\'s Pub','2173444372','Bar & Grill','604 E Green St., Champaign, Illinois','murphyspubuofi.com',0),(163,'Neil Sr. Blues','2175311150','Bar & Grill','301 N Neil St, Champaign, Illinois','neilstblues.com',0),(164,'Philo Tavern','2176842117','Bar & Grill','101W Washington St., Philo, Illinois','thephilotavern.com',0),(165,'Rantoul Public House','2172829537','Bar & Grill','108 N Garrard St, Rantoul, Illinois',NULL,0),(166,'Roch\'s Place','2174692660','Bar & Grill','101 N Main St, St. Joseph, Illinois','rochsplace.com',0),(167,'Scotty\'s Brew House','2175304394','Bar & Grill','2001 S Neil St, Champaign, Illinois','scottysbrewhouse.com',0),(168,'Seven Saints','2173517775','Bar & Grill','32 E Chester St, Champaign, Illinois','sevensaintsbar.com',0),(169,'Shooters Bar & Grill','2178930077','Bar & Grill','215 S Tanner, Rantoul, Illinois',NULL,0),(170,'Signature Grill','2176070893','Bar & Grill','505 E Green St, Champaign, Illinois','thesignaturegrill.com',0),(171,'Tin Roof Tavern','2173375000','Bar & Grill','604 N Cunningham Ave, Urbana, Illinois',NULL,0),(172,'TK\'s Cheesesteak','2172829812','Bar & Grill','112 E Congress Ave, Ranotul, Illinois','tkscheesesteaks.com',0),(173,'Traxside Bar & Grill','2173900501','Bar & Grill','4 E Holden St, Tolono, Illinois',NULL,0),(174,'Watson\'s Shack & Rail','2176070168','Bar & Grill','211 N Neil St., Champaign, Illinois','watsonschicken.com',0),(175,'Wild Hare Bar and Grill','2178970081','Bar & Grill','109 S Third St, Fisher, Illinois',NULL,0),(176,'Wingin Out','2176071864','Bar & Grill','301 E Green Street, Champaign, Illinois','winginout.com',0),(177,'BBQ Chicken','2176007939','Barbecue','700 S Gregory St, Urbana, Illinois','bbdotqchicken.com',0),(178,'Billy Bob\'s BBQ','2175822277','Barbecue','105 E Broadway, Ogden, Illinois','billybobsunderthewatertower.com',0),(179,'Black Dog Smoke & Ale House','2173449334','Barbecue','201 N Broadway Ave, Urbana, Illinois','blackdogsmoke.com',0),(180,'Black Dog Smoke & Ale House','2173449334','Barbecue','320 N Chestnut St., Champaign, Illinois','blackdogsmoke.com',0),(181,'Bobo\'s Barbecue','2173552271','Barbecue','1511 W Springfield Ave, Champaign, Illinois','bobosbbqchampaign.com',0),(182,'Hickory River Smokehouse','2173371656','Barbecue','1706 N Cunningham, Urbana, Illinois','hickoryriver.com',0),(183,'Lil Porgy\'s BBQ','2173986811','Barbecue','1917 W Springfield Ave, Champaign, Illinois','lilporgysbbq.com',0),(184,'Pauly\'s BBQ','2175437400','Barbecue','310 E Columbia St, Arthur, Illinois','paulysbbq.com',0),(185,'Pink Pig','2175828026','Barbecue','2698 County Road 1600 N, Ogden, Illinois','pinkpigrestaurant.com',0),(186,'Project 47 Smokehouse','2175863456','Barbecue','101 S Lombard Ave, Mahomet, Illinois','project47smokehouse.com',0),(187,'Smoky\'s House BBQ','2173552272','Barbecue','1333 Savoy Plaza Ln, Savoy, Illinois','smokyshousebbq.com',0),(188,'Wood N\' Hog BBQ','2176070120','Barbecue','904 N Fourth St, Champaign, Illinois','woodnhogbarbecue.com',0),(189,'Wood N\' Hog BBQ','2176070120','Barbecue','500 Walnut St., Champaign, Illinois','woodnhogbarbecue.com',0),(190,'Wood N\' Hog BBQ','2176070120','Barbecue','101 W University Ave., Urbana, Illinois','woodnhogbarbecue.com',0),(191,'Bergie\'s Place','2176488020','Breakfast','10 6 S Charter St., Monticello, Illinois','bookbergies.com',0),(192,'Country Kitchen',NULL,'Breakfast','705 E Columbia St., Arthur, Illinois',NULL,0),(193,'Cracked: The Egg Came First','2179540361','Breakfast','619 E Green St, Champaign, Illinois','crackedongreen.com',0),(194,'Four Breakfast and More','2179541126','Breakfast','401 E Green Street, Champaign, Illinois',NULL,0),(195,'Le Peep','2173527599','Breakfast','2209 S Neil St, Ste. W Champaign, Illinois','lepeep.com',0),(196,'Merry Ann\'s Diner','2173525399','Breakfast','1510 S Neil St., Champaign, Illinois','merry-anns.com',0),(197,'Merry Ann\'s Diner','2173447455','Breakfast','701 S Gregory St, Ste. C, Urbana, Illinois','merry-anns.com',0),(198,'Original Pancake House','2173528866','Breakfast','1909 W Springfield Ave., Champaign, Illinois','originalpancakehouse.com',0),(199,'Sam\'s Cafe','2173527102','Breakfast','115 N Walnut St., Champaign, Illinois',NULL,0),(200,'Sammy\'s Pancake House','2173553403','Breakfast','1206 N Mattis Ave., Champaign, Illinois',NULL,0),(201,'Cocomero','2173283888','Dessert','709 S Wright St, Champaign, Illinois',NULL,0),(202,'Cookies by Design','2173443911','Dessert','902 Meijer Dr., Champaign, Illinois','cookiesbydesign.com',0),(203,'Cream & Flutter','2173555400','Dessert','114 N Walnut St., Champaign, Illinois','creamandflutter.com',0),(204,'El Oasis','2179540215','Dessert','510 N Cunningham Ave, Urbana, Illinois',NULL,0),(205,'Froyo Factory','2177622233','Dessert','106 S Market St., Monticello, Illinois','froyofactorymonticello.com',0),(206,'Insomnia Cookies','2173280203','Dessert','502 E John St, Champaign, Illinois','insomniacookies.com',0),(207,'Jarling\'s Custard Cup','2173522273','Dessert','309 W Kirby Ave, Champaign, Illinois','jarlingscustardcup.com',0),(208,'Lenny\'s Ice Cream Gallery','2175687400','Dessert','308 S Main St, Gifford, Illinois',NULL,0),(209,'Lucky Moon Pies','2174022319','Dessert','401 E Oak St, Mahomet, Illinois','luckymoonpies.com',0),(210,'Paris Super Crepes','2177601404','Dessert','601 South 6th Street, Champaign, Illinois','paris-super-crepes.business.site',0),(211,'Pies by Inge','2177780200','Dessert','212 W Washington St., Monticello, Illinois','piesbyinge.com',0),(212,'Red Bicycle Ice Cream','2176071233','Dessert','2740 Philo Rd., Urbana, Illinois','redbicycleicecream.com',0),(213,'Sidney Dairy Burn','2176883700','Dessert','311 W Main, Sidney, Illinois','sidneydairybarn.com',0),(214,'Sweet Indulgence','2173522433','Dessert','1121 Windsor Rd., Champaign, Illinois','thenewsweetindulgence.biz',0),(215,'TCBY','2176075090','Dessert','1731 W Kirby Ave, Champaign, Illinois','tcby.com',0),(216,'YoYos','2175862520','Dessert','104 S Lombard St., Mahomet, Illinois',NULL,0),(217,'Big JJ Fish & Chicken','2173514005','Fast Food','1114 N Market St, Champaign, Illinois','jjfishandchickenchampaign.com',0),(218,'Butcher Boy Burgers','2178415458','Fast Food','422 S Garrard, Rantoul, Illinois',NULL,0),(219,'Charlie\'s Grub & Suds','2178962073','Fast Food','102 N Main, Homer, Illinois',NULL,0),(220,'CoreLife Eatery','2176936993','Fast Food','2502 N Prospect Ave., Champaign, Illinois','corelifeeatery.com',0),(221,'Garbanzo Mediterranean Fresh','2172394737','Fast Food','1401 W Green St, Champaign, Illinois','eatgarbanzo.com',0),(222,'Howdy Burger','2176071548','Fast Food','625 E Green St, Champaign, Illinois',NULL,0),(223,'Jurassic Grill','2173909294','Fast Food','404 E Green St, Champaign, Illinois','jurassicgrill.com',0),(224,'Krispy Krunchy Chicken','2175521800','Fast Food','922 W Bradley Ave, Champaign, Illinois','krispykrunchychampaign.com',0),(225,'Krispy Krunchy Chicken','2172533116','Fast Food','1000 E Southline Rd., Tuscola, Illinois','krispykrunchychampaign.com',0),(226,'Niro\'s Gyros','2173286476','Fast Food','1007 W University Ave, Urbana, Illinois','nirosgyrosuniversityave.com',0),(227,'Niro\'s Gyros','2173563700','Fast Food','2001 W Springfield Ave, Champaign, Illinois','champaignnirosgyros.com',0),(228,'Super Niro\'s Gyros',NULL,'Fast Food','608 W Town Center Blvd, Champaign, Illinois','7733195353 | supernirosgyros.com',0),(229,'Windy City','2173449404','Fast Food','410 N Race, Urbana, Illinois','windycityexpressil.com',0),(230,'Zorba\'s','2173440710','Fast Food','627 E Green St, Champaign, Illinois','zorbaschampaignil.com',0),(231,'Miga','2173981020','Fine Dining','301 N Neil St, Champaign, Illinois','miga-restaurant.com',0),(232,'Nando Milano Trattoria','2179541439','Fine Dining','204 N Neil St, Champaign, IL 61820','nandomilanochampaign.com',0),(233,'NAYA','2177297430','Fine Dining','212 E Green St, Champaign, Illinois','nayarestaurant.com',0),(234,'Silvercreek','2173283402','Fine Dining','402 N Race St., Urbana, Illinois','couriersilvercreek.com/silvercreek',0),(235,'Timpone\'s','2173447619','Fine Dining','710 S Goodwin Ave, Urbana, Illinois','timpones-urbana.com',0),(236,'The Wheelhouse','2174696252','Fine Dining','109 N Main St, St. Joseph, Illinois','wheelhousesjo.com',0),(237,'Amaravati Indian Cuisine','2179541012','International','2501 Village Green Pl, Champaign, Illinois','amaravatiindianroyalcuisineil.com',0),(238,'Ambar India','2173441500','International','605 S Wright St., Champaign, Illinois','ambarindianchampaign.com',0),(239,'Ba\'get','2176937961','International','1713 W Kirby Ave, Champaign, Illinois',NULL,0),(240,'Bombay Indian Grill','2173443380','International','401 E Green St, Champaign, Illinois','bombayindiangrillchampaign.com',0),(241,'Broadway Food Hall (King Kuma | Nation | Muchacho | La Royals | Eighty-Three Vietnamese Cuisine)',NULL,'International','401 N Broadway Avenue, Urbana, Illinois','broadwayfoodhall.com',38),(242,'Caribbean Grill','2179605375','International','2135 S Neil St, Champaign, Illinois','caribbeangrill.net',0),(243,'Himalayan Chimney','2175521834','International','134 W Church Street, Champaign, Illinois',NULL,0),(244,'Jerusalem Middle Eastern Cuisine','2173448760','International','601 S Wright St, Champaign, Illinois',NULL,0),(245,'Kohinoor Indian Restaurant','2175521384','International','6 E Columbia Ave, Champaign, Illinois','kohinoorchampaign.com',0),(246,'Sitara Indian Restaurant & Lounge','2173446440','International','114 S Race St, Urbana, Illinois','sitaraindian.com',0),(247,'Stango Cuisine','8444976835','International','300 S Broadway, Urbana, Illinois','stangocu.com',0),(248,'Sticky Rice','2179541929','International','415 N Neil St, Champaign, Illinois',NULL,0),(249,'Taste of Thai','2172829358','International','124 E Sangamon Ave., Rantoul, Illinois',NULL,0),(250,'Top Food Restaurant','2173784272','International','103 W Kirby Avenue, Champaign, Illinois',NULL,0),(251,'Baldarotta\'s Porketta & Sicilian Sausage','3092874455','Italian','Lincoln Square, Urbana, Illinois','baldarottas.com',0),(252,'Biaggi\'s Ristorante Italiano','2173564300','Italian','2235 S Neil St, Champaign, Illinois','biaggis.com',0),(253,'Manzella\'s Italian Patio','2173527624','Italian','115 S First St., Champaign, Illinois','manzellasitalianrestaurant.com',0),(254,'Mia Za\'s','2172983198','Italian','629 E Green St., Champaign, Illinois','miazas.com',0),(255,'Agave','2178932880','Mexican','405 S Century Blvd., Rantoul, Illinois',NULL,0),(256,'Breaking Taco','2175866938','Mexican','608 E Main, Mahomet, Illinois','breakingtaco.com',0),(257,'Burrito King Mexican Grill','2176070073','Mexican','408 E Green St, Champaign, Illinois','burritokingchampaign.com',0),(258,'Casa Del Mar','2175521525','Mexican','2870 S Philo Road, Urbana, Illinois',NULL,0),(259,'Casa Fiesta Grill','2178928541','Mexican','215 E Sangamon Ave, Rantoul, Illinois',NULL,0),(260,'Casa Real','2177624762','Mexican','1204 Bear Ln., Monticello, Illinois',NULL,0),(261,'Dos Reales','2173516879','Mexican','1407 N Prospect Ave, Champaign, Illinois',NULL,0),(262,'El Patio','2176007683','Mexican','2506 Village Green Pl., Champaign, Illinois','elpatiochampaign.com',0),(263,'El Toro','2175900501','Mexican','1668 E Grove Ave, Rantoul, Illinois','eltororestaurante.com',0),(264,'El Toro','2175900501','Mexican','221 E Lincoln St., St. Joseph, Illinois','eltororestaurante.com',0),(265,'El Toro at the Fields','2179034002','Mexican','3401 Fields South Dr., Champaign, Illinois','eltororestaurante.com',0),(266,'El Toro Bravo','2173517024','Mexican','2561 W Springfield Ave, Champaign, Illinois','eltororestaurante.com',0),(267,'El Toro II','2173787807','Mexican','723 S Neil St, Champaign, Illinois','eltororestaurante.com',0),(268,'Empanadas House','2179541871','Mexican','404 E Green St., Champaign, Illinois','theempanadashouse.com',0),(269,'Fernando\'s','2172550210','Mexican','612 E Daniel St, Champaign, Illinois','fernandosfoodtruck.weebly.com',0),(270,'Fiesta Cafe','2173525902','Mexican','216 S First St, Champaign, Illinois','fiestacafe.com',0),(271,'Huaraches Moroleon','2173446772','Mexican','805 S Philo Rd., Urbana, Illinois',NULL,0),(272,'Juanito\'s Tacos','2176211394','Mexican','1600 N Market St, Champaign, Illinois',NULL,0),(273,'La Bamba Mexican Restaurant','2173556600','Mexican','1905 Glenn Park Dr., Champaign, Illinois','labambaburritos.com',0),(274,'La Cascuda Mexican Grill','2175433131','Mexican','1063 E Columbia St, Arthur, Illinois',NULL,0),(275,'La Mixteca','2175521544','Mexican','510 N Cunningham Ave, Urbana, Illinois','lamixtecarestaurant.com',0),(276,'Las Maria\'s Mexican Restaurant','2177622800','Mexican','112 S Charter St, Monticello, Illinois','mariasauthenticmexicanrestaurante.com',0),(277,'Los Zarapes','2175863735','Mexican','804 Eastwood Dr., Mahomet, Illinois',NULL,0),(278,'Maize Mexican Grill','2173553611','Mexican','100 N Chestnut, Champaign, Illinois','maizemexicangrill.com',0),(279,'Maize Mexican Grill','2173556400','Mexican','60 E Green St., Champaign, Illinois','maizemexicangrill.com',0),(280,'Mas Amigos','2173562100','Mexican','705 N Neil St, Champaign, Illinois',NULL,0),(281,'Mi Veracruz Mexican Grill','2175997001','Mexican','208 N Parke St, Tuscola, Illinois',NULL,0),(282,'Moe\'s Southwest Grill','2173526637','Mexican','2041 S Neil St, Champaign, Illinois','moes.com',0),(283,'Sol Del Mar Mexican Bar & Grill','2175991012','Mexican','105 W Southline Rd., Tuscola, Illinois',NULL,0),(284,'Super Taco','2173558226','Mexican','519 W Town Center Blvd., Champaign, Illinois','champaignsupertaco.com',0),(285,'Taco Loco','2173558226','Mexican','523 W Town Center Blvd., Champaign, Illinois','tacoloco.com',0),(286,'Tienda Guatemala','2173442770','Mexican','408-B N Race Street, Urbana, Illinois',NULL,0),(287,'Toro Loco','2173447855','Mexican','1601 N Cunningham Ave, Urbana, Illinois','eltororestaurante.com',0),(288,'Filippo\'s of Mahomet','2175864657','Pizza','2012-A Tin Cup Rd., Mahomet, Illinois','filipposofmahomet.com',0),(289,'Filippo\'s of Monticello','2177622921','Pizza','200 S Market St, Monticello, Illinois',NULL,0),(290,'Fire House Chicago Style','2178929990','Pizza','326 S Century Boulevard, Rantoul, Illinois',NULL,0),(291,'Garcia\'s Pizza in a Pan','2173521212','Pizza','313 N Mattis Ave, Champaign, Illinois','garciaspizzainapanchampaign.com',0),(292,'Itsa Pizza','2175433531','Pizza','507 N Vine St, Arthur, Illinois','arthuritsapizza.com',0),(293,'Joe\'s Pizza','2172536500','Pizza','102 W Sale St, Tuscola, Illinois',NULL,1),(294,'Jupiter\'s At The Crossing','2173668300','Pizza','2511 Village Green Pl, Champaign, Illinois','jupitersatcrossing.com',0),(295,'Jupiter\'s Pizzeria and Billiards','2173985988','Pizza','39 Main St., Champaign, Illinois','jupiterspizza.com',0),(296,'Manolo\'s Pizza & Empanadas','2173650110','Pizza','1115 W Oregon St., Urbana, Illinois','manolospizza.com',0),(297,'Old Orchard Lanes','2173595281','Pizza','901 N Dunlap Ave, Savoy, Illinois','oldorchardinc.com',0),(298,'Padano\'s Pizza Co.','2174699016','Pizza','209 N Main St, St. Joseph, Illinois',NULL,0),(299,'Papa Del\'s','2173597700','Pizza','1201 N Neil St, Champaign, Illinois','papadels.com',0),(300,'Pie\'s the Limit','2176075263','Pizza','2510 Village Green Pl, Champaign, Illinois','piesthelimit.com',0),(301,'Pizza Roma','2178976776','Pizza','106 W Division St, Fisher, Illinois',NULL,0),(302,'Pizzeria Antica','2175304137','Pizza','10 E Chester St., Champaign, Illinois','anticachampaign.com',0),(303,'Rantoul Pizza Pub','2178934974','Pizza','114 E Congress Ave, Rantoul, Illinois',NULL,0),(304,'Vinny\'s East Coast Pizzeria','2173554500','Pizza','50 E Green St, Champaign, Illinois','vinnyseastcoastpizzeria.com',0),(305,'25 O\'clock Brewing Company',NULL,'Pubs & Bars','208 W Griggs St, Urbana, Illinois',NULL,0),(306,'51 Main','2175906007','Pubs & Bars','190 6 W Bradley Avenue, Champaign, Illinois','51maincu.com',0),(307,'Analog',NULL,'Pubs & Bars','129 N Race St, Urbana, Illinois','analogurbana.com',0),(308,'Barrelhouse 34','2172394677','Pubs & Bars','34 E Main St, Champaign, Illinois','barrelhouse34.com',0),(309,'Bentley\'s Pub','2173597977','Pubs & Bars','419 N Neil St, Champaign, Illinois','bentleyspub.com',0),(310,'Blackbird','2175311453','Pubs & Bars','119 W Main St., Urbana, Illinois','blackbirdurbana.com',0),(311,'Blind Pig Brewery','2173985133','Pubs & Bars','120 N Neil St, Champaign, Illinois','blindpigco.com',0),(312,'Blind Pig Co.','2173981532','Pubs & Bars','120 N Walnut Street, Champaign, Illinois','blindpigco.com',0),(313,'Brass Rail','2173527512','Pubs & Bars','15 E University Ave, Champaign, Illinois',NULL,0),(314,'Bridget\'s Blarney Stone','2175649994','Pubs & Bars','207 Chapin, Ivesdale, Illinois',NULL,0),(315,'Buford\'s','2175982313','Pubs & Bars','109 E Market Street, Sadorus, Illinois',NULL,0),(316,'Central Tavern','2176437300','Pubs & Bars','403 Main St, Thomasboro, Illinois',NULL,0),(317,'Collective Pour','2176075292','Pubs & Bars','340 N Neil St., Champaign, Illinois','collectivepour.com',0),(318,'Crude Wine Bar','2179541448','Pubs & Bars','116 N Walnut St., Champaign, Illinois','crudowine.com',0),(319,'Duly\'s Sports Bar','2175864061','Pubs & Bars','116W Washington, Philo, Illinois',NULL,0),(320,'East End Tavern','2177629087','Pubs & Bars','116 E Washington St, Monticello, Illinois',NULL,0),(321,'Game On Sports Tavern','2175982955','Pubs & Bars','121 E Market, Sadorus, Illinois',NULL,0),(322,'Green Street Cafe','2173676844','Pubs & Bars','35 E Green St, Champaign, Illinois',NULL,0),(323,'Hub Sports Bar','2172397080','Pubs & Bars','601 S First Street, Ste. 10 2, Champaign, Illinois',NULL,0),(324,'Huber\'s','2173520606','Pubs & Bars','1312 W Church St, Champaign, Illinois',NULL,0),(325,'Illini Inn','2179541465','Pubs & Bars','901 S Fourth St., Champaign, Illinois','theilliniinn.com',0),(326,'Iron Post','2173377678','Pubs & Bars','120 S Race St, Urbana, Illinois',NULL,0),(327,'Ivesdale Tavern Inc.','2175642206','Pubs & Bars','203 Chapin, Ivesdale, Illinois',NULL,0),(328,'Jack\'s Tavern','2174855706','Pubs & Bars','106 E Main St., Tolono, Illinois',NULL,0),(329,'Kam\'s','2173373300','Pubs & Bars','618 E Daniel St., Champaign, Illinois',NULL,1),(330,'Lincoln Street Lounge','2178343010','Pubs & Bars','112 S Lincoln, PO. Box 290, Broadlands, Illinois',NULL,0),(331,'Loose Cobra','2174858201','Pubs & Bars','113 E Main, Tolono, Illinois','loosecobra.com',0),(332,'Lu & Denny\'s','2174858201','Pubs & Bars','105 N Long, Tolono, Illinois',NULL,0),(333,'Main Street Pub','2177629414','Pubs & Bars','113 W Main St, Monticello, Illinois',NULL,0),(334,'North Forty','2175687721','Pubs & Bars','208 S Main St, Gifford, IL 61847',NULL,0),(335,'Office II','2173986332','Pubs & Bars','302 S Country Fair Dr., Champaign, Illinois',NULL,0),(336,'Pia\'s Sports Bar & Grill','2173511993','Pubs & Bars','1609 W Springfield Ave, Champaign, Illinois','piassportspub.com',0),(337,'Pipa\'s Pub','2173560888','Pubs & Bars','604 S Country Fair Dr., Champaign, Illinois',NULL,0),(338,'Pour Bros. Craft Taproom','2179541881','Pubs & Bars','40 E University Ave, Champaign, Illinois','pourbroschampaign.com',0),(339,'Punch','2175312800','Pubs & Bars','217 N Neil St, Champaign, Illinois',NULL,0),(340,'Quality Bar','2173593425','Pubs & Bars','110 N Neil St, Champaign, Illinois',NULL,0),(341,'Red Lion','2173679915','Pubs & Bars','211 E Green St, Champaign, Illinois','redlionchampaign.com',0),(342,'Riggs Beer Company','2177185345','Pubs & Bars','1901 S High Cross Road, Urbana, Illinois','riggsbeer.com',0),(343,'Rose Bowl Tavern','2173677031','Pubs & Bars','106 N Race St, Urbana, Illinois',NULL,0),(344,'Route 45 Wayside','2178672000','Pubs & Bars','101 S Chestnut St, Pesotum, IL 61863',NULL,0),(345,'Senator\'s Inn & Pub','2173520002','Pubs & Bars','801 N Dunlap, Savoy, Illinois','senatorsinn.com',0),(346,'Sidney Saloon','2176883161','Pubs & Bars','204 S David St, Sidney, Illinois','sidneysaloon.net',0),(347,'Soma','2173597662','Pubs & Bars','320 N Neil St., Champaign, Illinois',NULL,0),(348,'Star Karaoke','2173563333','Pubs & Bars','1503 Lyndhurst Alley, Savoy, Illinois','starkaraokeuiuc.com',0),(349,'T & T Tavern','2178939531','Pubs & Bars','101 N Century Blvd, Rantoul, Illinois',NULL,0),(350,'The Homestead','2175687554','Pubs & Bars','306 S Main, Gifford, Illinois',NULL,0),(351,'The Icehouse','2173985760','Pubs & Bars','703 N Prospect Ave, Champaign, Illinois',NULL,0),(352,'Triptych Brewery','7792323376','Pubs & Bars','1703 Woodfield Dr, Savoy, Illinois','triptychbrewing.com',0),(353,'Tumble Inn','2173560012','Pubs & Bars','302 S Neil St., Champaign, Illinois',NULL,0),(354,'Brown Bag Deli','2177629221','Sandwiches','212 W Washington, Monticello, Illinois','monticellobrownbag.com',0),(355,'Cheese & Crackers','2176158531','Sandwiches','1715 W Kirby Ave, Champaign, Illinois','crackerscheese.com',0),(356,'Fat Sandwich Company','2173285035','Sandwiches','502 E John St, Champaign, Illinois','fatsandwichchampaignil.com',0),(357,'Main Street Belly Deli','2178967651','Sandwiches','118 S Main St., Homer, Illinois','mainstreetbellydeli.com',0),(358,'Po Boy\'s','2173672255','Sandwiches','202 E University Ave, Urbana, Illinois','poboysurbana.com',0),(359,'Alexander\'s Steakhouse','2173591789','Steakhouse','202 W Anthony Dr, Champaign, Illinois','alexanderssteak.com',0),(360,'Hamilton Walker\'s','2173500363','Steakhouse','201 N Neil St, Champaign, Illinois','hamiltonwalkers.com',0),(361,'Longbranch','2175687722','Steakhouse','310 S Main St, Gifford, Illinois',NULL,0),(362,'The Ribeye','2173519115','Steakhouse','1701 S Neil St, Champaign, Illinois','theribeyerestaurant.org',0);
/*!40000 ALTER TABLE `Restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RSO`
--

DROP TABLE IF EXISTS `RSO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `RSO` (
  `RSO_ID` int(11) NOT NULL,
  `RSO_name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Website_link` varchar(1000) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `times_searched` int(11) DEFAULT '0',
  PRIMARY KEY (`RSO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RSO`
--

LOCK TABLES `RSO` WRITE;
/*!40000 ALTER TABLE `RSO` DISABLE KEYS */;
INSERT INTO `RSO` VALUES (1,'3Spot Dance Troupe','3spot.dance.troupe@gmail.com',NULL,'https://threespotdancetroupe.wordpress.com','3Spot Dance Troupe is an RSO at the University of Illinois Urbana-Champaign. All of our dancers come from extensive dance backgrounds and are passionate about continuing their dance careers through a dance team in college. We are completely student run and choreographed in all different styles including Contemporary, Jazz, Hip Hop, Lyrical, Musical Theatre, Tap, Modern, etc. We hold auditions at the beginning of every semester and a show at Foellinger Auditorium at the end of each semester.',1),(2,'4 Paws for Ability at the University of Illinois at Urbana-Champaign','4pawsuiuc@gmail.com',NULL,'https://www.facebook.com/4PawsUIUC/','This club is a college foster program working with 4 Paws for Ability, a nonprofit service dog agency based in Xenia, OH. 4 Paws for Ability will provide foster puppies to a few of the students in the club (who have completed an application and training) to foster for a semester. These puppies are service dogs in training and will be taught basic commands, appropriate behavior, and proper socialization by members of this club. Members who are not fostering will have the ability to become puppy sitters (who have completed an application and training) and help train the dogs or become general members who can learn more about service dogs and training.',0),(3,'4-H House Cooperative Sorority','carr16@illinois.edu','217-344-8345','www.4hhouse.com','To provide affordable housing for women at the University of Illinois who have a leadership background.',0),(4,'8 to CREATE',' 8tocreate@gmail.com',NULL,'https://publish.illinois.edu/8tocreate/','8 to CREATE is an art event in which 8 artists have 8 hours to create 8 works of art.\nThe event is open to the public to observe, engage, and participate in the creative process.',2),(5,'Academic Buzzer Team: A Quiz Bowl Organization','dcbowma2@illinois.edu',NULL,'https://www.facebook.com/abtuiuc/','We’re the Academic Buzzer Team at the University of Illinois. We participate in tournaments of quizbowl, a competition between two teams in which players answer academic questions in categories such as the fine arts, history, literature, science, and social science. We also host tournaments at the high school and collegiate levels and produce question sets for use at other tournaments.\nRegular questions are called tossups, and they are written with many clues, with harder clues preceding easier clues in what is called pyramidal structure. This way, players with deeper knowledge of a subject can give correct answers earlier, rewarding extensive knowledge. A team that answers a tossup correctly is given a bonus, a set of (usually) three related questions that only the controlling team may answer.\nIf this sounds interesting to you, join us at one of our practices, Mondays and Wednesdays from 6:00 to 9:00 PM in room 123 of the English Building, or feel free to send us an email.',0),(6,'Accounting Club','president.accyclub@gmail.com',NULL,'president.accyclub@gmail.com','We seek to enhance the student experience through company presentations, philanthropic opportunities, and social events. We aim to help members understand the different careers within accounting as well as connect with other business students. Additionally, we strive to educate our members about the importance of leadership, ethics, communication, professionalism, and networking while informing them about the professional opportunities available to them.',0),(7,'ACHA Men’s Division II Hockey Club at the University of Illinois at Urbana-Champaign','mbh3@illinois.edu','331-330-5894','https://www.illinoisd2hockey.com','To provide a competitive intercollegiate hockey team for both undergraduate and graduate students, to provide free entertainment for all persons with interest in intercollegiate ice hockey competition, and to advance the ideals of sportsmanship and healthy competition through team participation in the American Collegiate Hockey Association.',0),(8,'Acoustics at the University of Illinois','esmith19@illinois.edu',NULL,'https://publish.illinois.edu/studentacoustics/','A university wide community of acoustic professionals sharing ideas and state of the art research work in the field of wave propagation and its application. The society will hold events such as lectures, industry tours, and outreach events related to acoustics.',0),(9,'ActGreen','ActGreenUIUC@gmail.com',NULL,'http://actgreenuiuc.wix.com/actgreen','ActGreen is a green business organization composed of University of Illinois Urbana-Champaign students, professors, and administrators. This is the first environmental business organization within the UIUC College of Business. Our mission is to increase undergraduate business students\' understanding of the connection between environmental issues and their business area of interest. This connection is formed through our conferences, workshops, speakers, community projects, and curriculum development. Our vision is to empower undergraduate business students to make business decision that will positively impact the environment. We want future global business leaders to be equipped with a sound knowledge and commitment to environmentalism and stewardship. ActGreen is the catalyst in educating and empowering the future leaders of global business on the importance of environmentalism, sustainability, energy efficiency, and stewardship.',0),(10,'Action Against Hunger at the University of Illinois at Urbana-Champaign',NULL,NULL,'https://www.facebook.com/groups/259272458953283/','Action Against Hunger at the University of Illinois at Urbana-Champaign aims to fundraise for the non-profit organization ‘Action Against Hunger’ and raise awareness for their projects. These include malnourished children and their survival, food security, WASH (water, sanitation, and hygiene), emergency response, and research and innovation. \nPurpose: End hunger and food insecurity in vulnerable places, and help fund research and innovation initiatives that address hunger, food insecurity, WASH, etc. \nMission: Raise awareness and fundraise for Action Against Hunger and their programs.',0),(11,'Active Minds','activemindsuiuc@gmail.com',NULL,'https://www.activeminds.org','About Active Minds\nOur school’s chapter is part of a national organization called Active Minds, Inc. that has over 500 chapters on campuses across the United States and Canada. We are changing the conversation about mental health on college campuses to create open environments where students actively seek help when they need it. We are here as students to educate our peers about mental health and mental health disorders in order to break down the stigma associated with these issues.',0),(12,'Acts Campus Ministry at UIUC','actsuiuc@gmail.com','765-942-1140','https://www.actsuiuc.com','Acts campus ministry is a Christian RSO that is affiliated with and is a subsidiary of Christ Ministries, Inc. We seek to support the spirituality of the campus community and promote student retention through weekly bible studies, worship service, service opportunities, discipleship, and social events. God’s vision for the members of Acts is to establish an authentic relationship with Christ and experience the fullness of His power and love. As a church we strive to reflect the heart and character of Jesus Christ.',0),(13,'Actually Neurodivergent','ahessel2@illinois.edu',NULL,NULL,NULL,0),(14,'Actuarial Science Club','president@asc-illinois.com','630-940-8245','https://www.ascuiuc.com','The Actuarial Science Club is a student-run organization which partners with the Actuarial Science Department to provide our students with career, social, and networking opportunities. In the fall, we run about 10-12 company presentations with recruiters from insurance and consulting firms to help educate students about industry trends and help them find internships and full-time positions. Additionally, we run a large-scale career fair called Meet the Firms in late September each year. Throughout the year, we have various social events to help connect students with each other and professors. We also host workshops to help our members develop essential skills for their professional life. More events pop-up throughout the year including our field trips to companies and annual spring banquet.',0),(15,'Adventure Club','adventureclubuiuc@gmail.com',NULL,NULL,'Adventure Club sets out to create a unique experience among fellow college students. Activities include expeditions to locations around campus that are fun to visit. Members gain ranks by participating in these activities and competing in teams at the events.\nMake friends and win prizes!',0),(16,'Agricultural and Consumer Economics- Graduate Student Organization','ivanaf2@illinois.edu',NULL,'https://ace.illinois.edu/graduate/org','To support the members in their graduate studies and professional development in the Department of Agricultural and Consumer Economics at the University of Illinois at Urbana-Champaign.',0),(17,'AIGA at UIUC','aigauiuc@gmail.com',NULL,'https://www.facebook.com/aigauiuc/','AIGA UIUC aims to create a design community where students interested in Graphic Design (and other related fields) can share and build upon their knowledge and skills. Another goal of the club is to provide opportunities that introduce students to the professional world and their future careers.',0),(18,'Akshaya Patra','fahmed44@illinois.edu',NULL,NULL,'Akshaya Patra is a non-profit organization with a mission to provide nutritious school lunches to almost two million children every day. With 52 kitchens across numerous states, Akshaya Patra is assisting underprivileged children to obtain an education while having access to a healthy diet. With the newly established chapter at UIUC, we hope to raise money and expand the organization\'s positive influence to even more kids, regardless of race or religion.',0),(19,'AlgoTrading@UIUC',NULL,NULL,'https://illinois.campuslabs.com/engage/organization/algotrading-uiuc',NULL,0),(20,'Alive Vineyard College Ministry','angela.copenbarger@thevineyardchurch.us',NULL,'https://www.thevineyardchurch.us/college','Alive Vineyard College Ministry\nOur Vision\nTo see students transformed by the love of the Father\nTo do the works of Jesus and greater\nTo bring revival of the Spirit everywhere we go',0),(21,'Alma\'s Talking Dogs','almastalkingdogs@gmail.com',NULL,'https://sites.google.com/view/almastalkingdogs/home','Welcome to Alma\'s Talking Dogs! We are a student organization at the University of Illinois at Urbana-Champaign. Our purpose is to enhance communication between dogs and humans by using EEG technology, signal processing, and machine learning to interpret brainwaves from dogs in order to understand them and their behavior better. We also have a partnership with Hospice Hearts and do outreach events with them.',0),(22,'ALPFA Illinois','illinoisalpfa@gmail.com',NULL,'https://www.alpfauiuc.com','ALPFA is the Association of Latino Professionals for America, and it is the the premier Latino business organization within the Gies College of Business. Our mission is to create and empower the future Latino leaders of America through our professional, social, and philanthropic events. In the end, we guide our members to follow their dream career and expand on Latino leadership in the global workforce.',0),(23,'Alpha Chi Omega','president.axo.uiuc@gmail.com',NULL,NULL,'We strive to better ourselves through academic success, the bond of sisterhood, and service to others by instilling the ideals of Alpha Chi Omega upon our university and our community.',3),(24,'Alpha Chi Sigma','zeta.axe.ma@gmail.com',NULL,NULL,'Alpha Chi Sigma is a unique professional and social fraternity for men and women in the chemical sciences',3),(25,'Alpha Delta Phi Fraternity','david@ilalphadeltaphi.org',NULL,'https://mailchi.mp/bee574e052d0/uofialphadeltaphi','A story that began at the University of Illinois in 1911 will start a new chapter this Fall, 2020. Proven leaders will be chosen to build their own legacy and create a fraternity built on excellence in Moral, Social & Intellectual development.A fully renovated, state of the art fraternity house will open in August 2021 thanks to the support of hundreds of committed alumni. Just steps away from campus this will be the premier fraternity house. There is nothing like living with your brothers. The fun times are never forgotten but it is living with men who know and accept the real you that makes it special. Men who have sworn themselves to support you through all the up\'s and down\'s of life are what make a house... your home.',3),(26,'Alpha Delta Pi','sigma.adpi@gmail.com',NULL,'https://sigmaofadpi.wixsite.com/uiuc','To develop a lifelong sisterhood while helping members to grow in the areas of academics, philanthropy, social enrichment.',3),(27,'Alpha Epsilon Delta Pre-Health Society','aeduiuc@gmail.com',NULL,'https://www.aeduiuc.com','The dual role of AED as an honor society and a service organization is reflected in it\'s chapter activities.  The mission of the Society is to encourage and recognize excellence in premedical scholarship, to stimulate an appreciation of the importance of premedical education, to promote communication between medical and premedical students and educators, to provide a forum for students with common interests, and to use its resources to benefit health organizations and charities.',3),(28,'Alpha Epsilon Phi Sorority','aephi.mu.president@gmail.com',NULL,'http://www.illinoisaephi.org','Above all else, Alpha Epsilon Phi inspires exemplary women who are: Enriched by sisterhood and unconditional friendships, Dedicated to selfless service and inspiring others, and Committed to intellectual growth and personal development.',3),(29,'Alpha Epsilon Pi','jaredlondon561@gmail.com','561-504-6044',NULL,'The Delta Chapter. A men\'s fraternity established in 1920.',3),(30,'Alpha Gamma Delta','agdsigma.president@gmail.com',NULL,'http://alphagammadeltauiuc.wix.com/agd-uiuc','Mission: Alpha Gamma Delta is an international fraternity for women that exists to provide opportunities for personal development through the spirit of sisterhood. We support lifelong learning as a means to gain understanding and wisdom. We promote the value of fraternal membership and commitment to higher education. We help prepare members to contribute to the world’s work. We advocate lifetime involvement in Alpha Gamma Delta.',3),(31,'Alpha Gamma Rho','tylerpd2@illinois.edu',NULL,'https://www.alphagammarhoillinois.com','Alpha Gamma Rho is a professional and social fraternity that strives to develop the most outstanding men in the agricultural and professional industries.',4),(32,'Alpha Kappa Alpha Sorority, Incorporated. Gamma Chapter','gammaaka1914@gmail.com',NULL,'http://gamma1914.com/','The purpose of Alpha Kappa Alpha Sorority, Incorporated is to cultivate and encourage high scholastic and ethical standards, to promote unity and friendship among college women, to study and help alleviate problems concerning girls and women in order to improve their social stature, to maintain a progressive interest in college life, and to be of Service to All Mankind.',3),(33,'alpha Kappa Delta Phi','uiuc.kdphi.president@gmail.com',NULL,'http://www.uiucakdphi.org','alpha Kappa Delta Phi Inc. will be the most respected, premier network of innovative female leaders within the community by: Encouraging the growth of our members through cultural diversity and the expression of individuality; Empowering our members to become pioneers for philanthropic, cultural, and scholastic programs worldwide; Developing strategic collaborations and partnerships; and Supporting initiatives promoting the sustainability of our organization and its mission.',3),(34,'Alpha Kappa Psi Professional Business Fraternity','president.akpsi.uiuc@gmail.com','630-706-0231',NULL,'To develop the skilled, ethical, and professional business leaders of tomorrow.',3),(35,'Alpha Omega Campus Ministry','katch2@illinois.edu','815-981-5911','https://www.champaignchurch.org','Our mission is help students in living their lives as Christians in today\'s society.  Join us for weekly Bible talks and social events.  We can also set up individual Bible studies if you are interested in learning more about the Bible. All are welcome!',3),(36,'Alpha Omega Epsilon Engineering Sorority','aoethetaexec@gmail.com',NULL,'http://aoetheta.org','Alpha Omega Epsilon is a professional and social sorority for women in engineering and technical science majors founded in 1983. The Theta Chapter was founded at the University of Illinois on February 27, 1999, with a candidate class of twelve women. Through devotion and hard work, they built a strong foundation for this chapter to see that the sorority\'s name and traditions be carried on at the university. Today there are over 80 active members, each striving to promote friendship, leadership, and professionalism to further the advancement of females in STEM, while strengthening the bonds of sisterhood in the process.',3),(37,'Alpha Omicron Pi','aoiiiota@gmail.com','708-305-6130','http://illinois.alphaomicronpi.org','To encourage a spirit of fraternity and love among its members; to stand at all times for character, dignity, scholarship, and college loyalty; and to strive for and support the best interests of the University of Illinois. ',3);
/*!40000 ALTER TABLE `RSO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `School_Social_Media`
--

DROP TABLE IF EXISTS `School_Social_Media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `School_Social_Media` (
  `SSM_ID` int(11) NOT NULL,
  `Organization_name` varchar(255) NOT NULL,
  `Facebook_link` varchar(1000) DEFAULT NULL,
  `Instagram_link` varchar(1000) DEFAULT NULL,
  `LinkedIn_link` varchar(1000) DEFAULT NULL,
  `Twitter_link` varchar(1000) DEFAULT NULL,
  `Snapchat_link` varchar(1000) DEFAULT NULL,
  `YouTube_link` varchar(1000) DEFAULT NULL,
  `Pinterest_link` varchar(1000) DEFAULT NULL,
  `Weibo_link` varchar(1000) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `times_searched` int(11) DEFAULT '0',
  PRIMARY KEY (`SSM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School_Social_Media`
--

LOCK TABLES `School_Social_Media` WRITE;
/*!40000 ALTER TABLE `School_Social_Media` DISABLE KEYS */;
INSERT INTO `School_Social_Media` VALUES (1,'Women & Gender in Global Perspectives\n','https://www.facebook.com/pages/WGGP-Women-and-Gender-in-Global-Perspectives/325762682466\n','https://www.instagram.com/wggpillinois/\n','https://www.linkedin.com/school/women-and-gender-in-global-perspectives-program/\n','https://twitter.com/wggpIllinois\n',NULL,NULL,NULL,NULL,NULL,0),(2,'Department of Aerospace Engineering\n','https://www.facebook.com/AEatIllinois\n','https://www.instagram.com/aeatillinois/\n','https://www.linkedin.com/groups/4576648/\n','https://twitter.com/AEatIllinois\n',NULL,'https://www.youtube.com/channel/UCPcVqWBxAIX_-UbkZj5YyiA\n',NULL,NULL,NULL,0),(3,'Department of Agricultural and Consumer Economics\n','https://www.facebook.com/ACEatIllinois/\n','https://www.instagram.com/aceatuiuc/?hl=en\n','https://www.linkedin.com/company/department-of-agricultural-and-consumer-economics/\n','https://twitter.com/search?q=ACEatIL&src=typd&lang=en\n',NULL,NULL,NULL,NULL,NULL,0),(4,'College of Agricultural, Consumer and Environmental Sciences\n','https://www.facebook.com/UofICollegeofACES/\n','http://instagram.com/acesillinois\n','http://www.linkedin.com/groups/University-Illinois-College-ACES-4861656?trk=my_groups-b-grp-v\n','https://twitter.com/ACESIllinois\n',NULL,NULL,NULL,NULL,NULL,0),(5,'College of Applied Health Sciences\n','http://www.facebook.com/pages/College-of-Applied-Health-Sciences-at-Illinois/154809127863097\n','https://www.instagram.com/ahsillinois/\n',NULL,'https://twitter.com/ahsillinois\n',NULL,'https://www.youtube.com/channel/UC0_QTv0Bz-hMp2lcESN84fA\n',NULL,NULL,NULL,0),(6,'University of Illinois Bands\n','https://www.facebook.com/UniversityofIllinoisBands\n','https://www.instagram.com/illinois_bands/\n',NULL,'https://twitter.com/IllinoisBands\n',NULL,NULL,NULL,NULL,NULL,0),(7,'Beckman Institute for Advanced Science and Technology\n','http://facebook.com/BeckmanInstitute\n','https://www.instagram.com/beckmaninstitute/\n','https://www.linkedin.com/company/beckman-institute-at-illinois/\n','http://twitter.com/BeckmanInst\n',NULL,'http://www.youtube.com/beckmaninstitute\n',NULL,NULL,NULL,0),(8,'Department of Bioengineering\n','https://www.facebook.com/pages/UI-Department-of-Bioengineering/470351476358854\n','https://www.instagram.com/illinoisbioe/\n','https://www.linkedin.com/company/illinoisbioe/about/\n','https://twitter.com/BIOENGatIL\n',NULL,'https://www.youtube.com/channel/UCYX8an1Vsn9af9ZE5yWkvCw?view_as=subscriber\n',NULL,NULL,NULL,0),(9,'Gies College of Business\n','https://www.facebook.com/giesbusiness/\n','https://www.instagram.com/giesbusiness/\n','https://www.linkedin.com/school/15102067/\n','https://twitter.com/giesbusiness\n',NULL,'http://www.youtube.com/user/illinoisbusiness\n',NULL,NULL,NULL,0),(10,'Department of Campus Recreation\n','https://www.facebook.com/uoficampusrec\n','http://instagram.com/illinoiscampusrec\n','https://www.linkedin.com/groups/4737236/\n','http://twitter.com/IlliniCampusRec\n',NULL,'http://www.youtube.com/user/UICampusRec\n',NULL,NULL,NULL,0),(11,'Cancer Center at Illinois\n','https://www.facebook.com/CancerCenterIL\n',NULL,NULL,'https://twitter.com/CancerCenterIL?lang=en\n',NULL,NULL,NULL,NULL,NULL,0),(12,'Carl R. Woese Institute for Genomic Biology\n','https://www.facebook.com/IGB.Illinois\n','https://www.instagram.com/igbillinois/\n',NULL,'https://twitter.com/@IGBIllinois\n',NULL,'http://www.youtube.com/user/IGBIllinois\n',NULL,NULL,NULL,0),(13,'Carle Illinois College of Medicine\n','https://www.facebook.com/illinoismed/\n','https://www.instagram.com/carleillinoismed/\n','https://www.linkedin.com/company/illinoismed/\n','https://twitter.com/illinoismed?lang=en\n',NULL,NULL,NULL,NULL,NULL,0),(14,'Center for Social & Behavioral Science\n',NULL,NULL,NULL,'https://twitter.com/CSBS_Illinois\n',NULL,NULL,NULL,NULL,NULL,0),(15,'Chemical Sciences Career Services Office\n','https://www.facebook.com/SCSCareersIllinois\n','https://www.instagram.com/scscareersuiuc/\n','https://www.linkedin.com/groups/2177109/\n','https://twitter.com/SCSCareersUIUC\n',NULL,'https://www.youtube.com/channel/UCYUsz-FtjRVpOB67MxXK81A\n',NULL,NULL,NULL,0),(16,'School of Chemical Sciences\n','https://www.facebook.com/scsadvising\n','https://www.instagram.com/scsadvising/\n',NULL,'https://twitter.com/SCSAdvising\n',NULL,NULL,NULL,NULL,NULL,0),(17,'Chemical and Biomolecular Engineering\n','https://www.facebook.com/ChBEIllinois\n','https://www.instagram.com/chbeillinois/\n','https://www.linkedin.com/company/chbeillinois/\n','https://twitter.com/ChBEIllinois\n',NULL,'https://www.youtube.com/channel/UC0_aFW0nmVu1PGxOdTxGZ9A\n',NULL,NULL,NULL,0),(18,'Cooperative Extension Service\n','http://facebook.com/UIExtension\n','https://www.instagram.com/ilextension/\n',NULL,'https://twitter.com/ILextension\n',NULL,'http://www.youtube.com/UIExtension\n',NULL,NULL,NULL,0),(19,'Coordinated Science Lab\n','https://www.facebook.com/CoordinatedScienceLab\n','https://www.instagram.com/csl_illinois/\n',NULL,'https://twitter.com/CSL_Illinois\n',NULL,NULL,NULL,NULL,NULL,0),(20,'Office of Corporate Relations\n',NULL,NULL,'https://www.linkedin.com/company/office-of-corporate-relations/\n','https://twitter.com/CorporateAtUofI\n',NULL,NULL,NULL,NULL,NULL,0),(21,'College of Education\n','https://www.facebook.com/educationatillinois?ref=ts\n',NULL,'https://www.linkedin.com/in/educationatillinois/\n','http://twitter.com/edILLINOIS\n',NULL,'https://www.youtube.com/educationatillinois\n',NULL,NULL,NULL,0),(22,'Department of Electrical and Computer Engineering\n','http://www.facebook.com/pages/ECE-Illinois/103039096438861\n','http://instagram.com/eceillinois\n','http://www.linkedin.com/groups?home=&gid=3693261&trk=anet_ug_hm\n','http://twitter.com/eceILLINOIS\n',NULL,'http://www.youtube.com/user/ECEILLINOIS\n',NULL,NULL,NULL,0),(23,'Grainger College of Engineering\n','https://www.facebook.com/uofigrainger/\n','https://www.instagram.com/uofigrainger/\n','https://www.linkedin.com/school/uofigrainger\n','https://twitter.com/uofigrainger\n',NULL,'https://www.youtube.com/channel/UCRjvSnTB2tOqfO5AXvOHGGw\n',NULL,NULL,NULL,0),(24,'Facilities and Services Office\n','http://www.facebook.com/UniversityOfIllinoisFacilitiesServices\n','https://www.instagram.com/uofifs/\n',NULL,'http://twitter.com/UofIFS\n',NULL,'http://www.youtube.com/UofIFS\n',NULL,NULL,NULL,0),(25,'College of Fine and Applied Arts\n','http://facebook.com/FAAatillinois\n','http://instagram.com/faaatillinois\n',NULL,'http://twitter.com/FAAatillinois\n',NULL,'https://www.youtube.com/user/FineandAppliedArts\n','http://www.pinterest.com/FAAatillinois/\n',NULL,NULL,0),(26,'Global Education & Training\n',NULL,'https://www.instagram.com/getillinois/\n',NULL,'https://twitter.com/GETillinois\n',NULL,NULL,NULL,'https://www.weibo.com/p/1005056063093651\n',NULL,0),(27,'Graduate College\n','https://www.facebook.com/GradCollegeIllinois\n','https://www.instagram.com/gradcollegeillinois/\n','https://www.linkedin.com/company/28629414/admin/\n','https://twitter.com/GradCollegeIL\n',NULL,'http://www.youtube.com/user/GradCollegeIllinois\n',NULL,NULL,NULL,0),(28,'Health Care Engineering Systems Center\n','https://www.facebook.com/hcescillinois\n',NULL,'https://www.linkedin.com/company/health-care-engineering-systems-center/\n','https://twitter.com/ILHealthEng\n',NULL,'https://www.youtube.com/channel/UCejSmj8KZlX3mIkNyZWpqWw\n',NULL,NULL,NULL,0),(29,'Department of History\n','https://www.facebook.com/HistoryatIL\n',NULL,NULL,'https://twitter.com/historyatil?\n',NULL,NULL,NULL,NULL,NULL,0),(30,'Housing Division\n','http://www.facebook.com/pages/Champaign-IL/University-Housing/77410443180?ref=search\n','https://www.instagram.com/illinihousing/\n',NULL,'https://twitter.com/illinihousing\n',NULL,'https://www.youtube.com/channel/UCTfboue7_GNLA4bB78O69fw\n',NULL,NULL,NULL,0),(31,'Department of Human Development and Family Studies\n','https://www.facebook.com/HDFSIllinois\n','https://www.instagram.com/hdfsillinois/\n',NULL,NULL,NULL,'https://www.youtube.com/channel/UCdFft68xNhoXG3GR2LMT5_g\n',NULL,NULL,NULL,0),(32,'Illinois Human Resources\n',NULL,NULL,NULL,'https://twitter.com/IllinoisHR\n',NULL,NULL,NULL,NULL,NULL,0),(33,'Illini Union\n','http://www.facebook.com/illiniunion\n','http://www.instagram.com/IlliniUnion\n',NULL,'https://twitter.com/IlliniUnion\n',NULL,NULL,NULL,NULL,NULL,0),(34,'Illinois Abroad and Global Exchange (Study Abroad)\n','https://www.facebook.com/IllinoisAbroad/\n','https://www.instagram.com/illinoisabroad/\n',NULL,'https://twitter.com/IllinoisAbroad\n',NULL,NULL,NULL,NULL,NULL,0),(35,'Illinois International\n','https://www.facebook.com/pages/Illinois-International/284226402015\n','http://instagram.com/illinoisinternational\n',NULL,'https://twitter.com/Illinois_Intl\n',NULL,'http://www.youtube.com/channel/UCVX1RA4R0wWlBiMIVQVqeNA\n',NULL,'http://e.weibo.com/uiuc2012?ref=http://ilint.illinois.edu/\n',NULL,0),(36,'Illinois Leadership Center\n','https://www.facebook.com/IllinoisLeadershipCenter/\n','https://www.instagram.com/illinoisleadershipcenter/\n','https://www.linkedin.com/grps/Illinois-Leadership-Center-University-Illinois-4082277?_l=en_US\n','https://twitter.com/il_leadership\n',NULL,NULL,NULL,NULL,NULL,0),(37,'Illinois Natural History Survey\n','https://www.facebook.com/IllinoisNaturalHistorySurvey\n','https://www.instagram.com/inhsillinois/\n',NULL,'https://twitter.com/INHSillinois\n',NULL,NULL,NULL,NULL,NULL,0),(38,'Illinois State Archaeological Survey\n','https://www.facebook.com/IllinoisStateArchaeologicalSurvey\n',NULL,NULL,'https://twitter.com/ILStateArch\n',NULL,NULL,NULL,NULL,NULL,0),(39,'Illinois State Water Survey\n','https://www.facebook.com/IllinoisStateWaterSurvey\n',NULL,NULL,'https://twitter.com/watersurvey\n',NULL,NULL,NULL,NULL,NULL,0),(40,'Illinois Sustainable Technology Center\n','https://www.facebook.com/pages/Illinois-Sustainable-Technology-Center/138680452859766\n',NULL,NULL,'https://twitter.com/ISTCatUIUC\n',NULL,'http://www.youtube.com/user/4ISTC\n',NULL,NULL,NULL,0),(41,'Department of Industrial and Enterprise Systems Engineering\n','https://www.facebook.com/illinoisise\n',NULL,'https://www.linkedin.com/groups/3647912\n','https://twitter.com/IllinoisISE\n',NULL,'https://www.youtube.com/channel/UCiS0Hfqt0arpM9w1BqycwIg\n',NULL,NULL,NULL,0),(42,'School of Information Sciences\n','http://www.facebook.com/iSchoolUI\n','https://www.instagram.com/ischoolui/\n','http://www.linkedin.com/groups/675727\n','http://twitter.com/iSchoolUI\n',NULL,'http://www.youtube.com/user/GSLISatIllinois\n',NULL,NULL,NULL,0),(43,'Information Trust Institute\n','http://www.facebook.com/InformationTrustInstitute\n',NULL,'https://www.linkedin.com/company/information-trust-institute/\n',NULL,NULL,NULL,NULL,NULL,NULL,0),(44,'Interdisciplinary Health Sciences Institute\n','https://www.facebook.com/IllinoisIHSI/\n',NULL,NULL,'https://twitter.com/IllinoisIHSI\n',NULL,NULL,NULL,NULL,NULL,0),(45,'International Student and Scholar Services\n','https://www.facebook.com/ISSSillinois/\n','https://www.instagram.com/isssillinois/\n',NULL,'https://twitter.com/ISSSIllinois\n',NULL,'http://www.youtube.com/user/ISSSatIllinois\n',NULL,NULL,NULL,0),(46,'Krannert Center for the Performing Arts\n','http://www.facebook.com/KrannertCenter?ref=ts\n','https://www.instagram.com/krannertcenter/\n',NULL,'http://twitter.com/KrannertCenter\n',NULL,'http://www.youtube.com/krannertcenter\n',NULL,NULL,NULL,0),(47,'School of Labor and Employment Relations\n','https://www.facebook.com/LER.Illinois/\n','https://www.instagram.com/ler_illinois/\n','https://www.linkedin.com/school/university-of-illinois-at-urbana-champaign-school-of-labor-and-employment-relations/\n','https://twitter.com/LER_Illinois\n',NULL,NULL,NULL,NULL,NULL,0),(48,'Law\n','https://www.facebook.com/uillinoislaw\n','https://www.instagram.com/uillinoislaw/\n','https://www.linkedin.com/school/university-of-illinois-college-of-law/\n','http://twitter.com/UIllinoisLaw\n',NULL,'https://www.youtube.com/user/UofIllinoisLaw\n',NULL,NULL,NULL,0),(49,'College of Liberal Arts & Sciences\n','https://www.facebook.com/lasillinois/\n','https://www.instagram.com/lasillinois/\n','https://www.linkedin.com/school/23698254/admin/\n','https://twitter.com/LASillinois\n',NULL,'https://www.youtube.com/user/CollegeOfLAS\n',NULL,NULL,NULL,0),(50,'Library\n','https://www.facebook.com/universitylibrary/\n','https://instagram.com/uillinoislibrary/\n',NULL,'https://twitter.com/IllinoisLibrary\n',NULL,NULL,NULL,NULL,NULL,0),(51,'Marching Illini\n','https://www.facebook.com/MarchingIllini\n','https://www.instagram.com/marchingillini/\n',NULL,'https://twitter.com/MarchingIllini\n',NULL,'https://www.youtube.com/c/MarchingIllini\n',NULL,NULL,NULL,0),(52,'College of Media\n','http://www.facebook.com/collegeofmedia\n','https://instagram.com/MediaAtIllinois/\n','https://www.linkedin.com/groups/2322725/\n','https://twitter.com/MediaAtIllinois\n',NULL,'https://www.youtube.com/channel/UCzaFjZILHXRLM0cXLLWOwMw\n',NULL,NULL,NULL,0),(53,'Metropolitan Food & Environmental Systems\n','https://www.facebook.com/MFSTIllinois/\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(54,'Micro and Nanotechnology Laboratory\n','https://www.facebook.com/holonyaklabIllinois\n','https://www.instagram.com/holonyaklabillinois/\n','https://www.linkedin.com/company/19204043\n',NULL,NULL,'https://www.youtube.com/channel/UCCfbdRZF43gSYz1B16N-32w?view_as=subscriber\n',NULL,NULL,NULL,0),(55,'School of Molecular and Cellular Biology\n','https://www.facebook.com/MCBIllinois/about/\n','https://www.instagram.com/mcb_illinois/?hl=en\n','https://www.linkedin.com/company/school-of-molecular-and-cellular-biology-university-of-illinois-urbana-champaign/\n','https://twitter.com/MCB_Illinois?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor\n',NULL,NULL,NULL,NULL,NULL,0),(56,'National Center for Supercomputing Applications (NCSA)\n','http://www.facebook.com/NCSAatIllinois/\n','https://www.instagram.com/ncsaatillinois/\n','http://www.linkedin.com/company/1362?trk=tyah&trkInfo=tas%3ANational%20Center%20for%20Supercomputing%2Cidx%3A1-1-1\n','http://www.twitter.com/NCSAatIllinois/\n',NULL,'http://www.youtube.com/NCSAatIllinois\n',NULL,NULL,NULL,0),(57,'Department of Nuclear, Plasma, and Radiological Engineering\n','https://www.facebook.com/pages/NPRE-at-Illinois/134532773262689\n',NULL,'https://www.linkedin.com/groups/4510481/\n','https://twitter.com/illinoisNPRE\n',NULL,'https://www.youtube.com/channel/UCXpvzEULjFkHEpWVjh9U9kA\n',NULL,NULL,NULL,0),(58,'Nutritional Sciences\n','https://www.facebook.com/DNSatUofI\n',NULL,'https://www.linkedin.com/in/dnsnutrsci/\n','https://twitter.com/DNSatUofI\n',NULL,NULL,NULL,NULL,NULL,0),(59,'Parent Programs Office, Illini Union\n','https://www.facebook.com/IlliniPFPO\n',NULL,NULL,'https://twitter.com/IlliniPFPO\n',NULL,NULL,NULL,NULL,NULL,0),(60,'Department of Physics\n','http://www.facebook.com/PhysicsIllinois\n','https://www.instagram.com/illinois_physics/?hl=en\n',NULL,'http://twitter.com/PhysicsIllinois\n',NULL,'https://www.youtube.com/channel/UCyEFVTccWu-G4gSdh7Z_NfA\n',NULL,NULL,NULL,0),(61,'Department of Political Science\n','https://www.facebook.com/pages/University-of-Illinois-Department-of-Political-Science/97043913461\n','https://www.instagram.com/illinoispolsci/\n',NULL,'https://twitter.com/illinoispolsci\n',NULL,NULL,NULL,NULL,NULL,0),(62,'Prairie Research Institute\n','https://www.facebook.com/pages/Prairie-Research-Institute/332356300041\n',NULL,NULL,'http://twitter.com/PrairieResInst\n',NULL,NULL,NULL,NULL,NULL,0),(63,'Scholarly Commons in the Main Library\n','https://www.facebook.com/Scholarly-Commons-1445263205541768/\n',NULL,NULL,'http://twitter.com/ScholCommons\n',NULL,NULL,NULL,NULL,NULL,0),(64,'School of Molecular and Cellular Biology Advising Program\n','https://www.facebook.com/MCBAdvisingProgram\n','https://www.instagram.com/mcbadvising/\n',NULL,'https://twitter.com/MCBAdvising\n',NULL,NULL,NULL,NULL,NULL,0),(65,'School of Social Work\n','https://www.facebook.com/socialwork.illinois\n','http://instagram.com/illinois_socialwork#\n','https://www.linkedin.com/school/socialwork-illinois\n','https://twitter.com/UofISocialWork\n',NULL,NULL,NULL,NULL,NULL,0),(66,'Department of Spanish and Portuguese\n','https://www.facebook.com/spanishadvisinguiuc\n','https://www.instagram.com/spanport_uiuc/\n',NULL,'https://twitter.com/SpanPort_UIUC\n',NULL,NULL,NULL,NULL,NULL,0),(67,'Institute for Sustainability, Energy, and Environment\n','https://www.facebook.com/iSEEatUofI/\n',NULL,NULL,'https://twitter.com/sustainILLINOIS\n',NULL,'https://www.youtube.com/channel/UC-rgdCPlnUMoziDzw4pEXQw\n',NULL,NULL,NULL,0),(68,'Tax School\n','https://www.facebook.com/taxschool/\n','https://www.instagram.com/uitaxschool/\n','https://www.linkedin.com/company/3250572\n','https://twitter.com/uofitaxschool\n',NULL,NULL,NULL,NULL,NULL,0),(69,'Technology Entrepreneur Center\n','https://www.facebook.com/technologyentrepreneurcenter\n','https://www.instagram.com/tecenter/\n','http://us.linkedin.com/company/technology-entrepreneur-center\n','https://twitter.com/tecenter?lang=en\n',NULL,NULL,NULL,NULL,NULL,0),(70,'Technology Services at Illinois\n','https://www.facebook.com/TechServicesIL\n',NULL,NULL,'http://twitter.com/TechServicesIL\n',NULL,NULL,NULL,NULL,NULL,0),(71,'Office of Undergraduate Admissions\n','http://www.facebook.com/pages/Urbana-IL/University-of-Illinois-Admissions/238649700085\n','http://instagram.com/illiniview\n',NULL,'http://twitter.com/uofiadmissions\n',NULL,'http://www.youtube.com/user/IllinoisAdmissions\n',NULL,NULL,NULL,0),(72,'Office for University Relations\n','https://www.facebook.com/uillinois.edu/\n',NULL,'https://www.linkedin.com/school/university-of-illinois-system\n','https://twitter.com/uofilsystem\n',NULL,'https://www.youtube.com/channel/UCcJE64pTyjJw_CYy8EVlNbQ\n',NULL,NULL,NULL,0),(73,'University of Illinois Alumni Association\n','https://www.facebook.com/IllinoisAlumni\n','https://www.instagram.com/illinois_alumni/\n','https://www.linkedin.com/company/university-of-illinois-alumni-association/\n','https://twitter.com/Illinois_Alumni\n',NULL,NULL,NULL,NULL,NULL,0),(74,'College of Veterinary Medicine\n','http://www.facebook.com/VetMed.Illinois\n','https://www.instagram.com/vetmedillinois/\n','https://www.linkedin.com/showcase/22343769/\n','https://twitter.com/VetMedIllinois\n',NULL,'http://www.youtube.com/IllinoisVetMed\n',NULL,NULL,NULL,0),(75,'Office of the Vice Chancellor for Diversity\n','https://www.facebook.com/OVCDEI.Illinois\n','https://www.instagram.com/ovcdei_illinois/\n',NULL,'https://twitter.com/OVCDEI_Illinois\n',NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `School_Social_Media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `searches` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `search_phrase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
INSERT INTO `searches` VALUES (1,'royal'),(2,'espresso'),(3,'espresso'),(4,'espres'),(5,'royale'),(6,'royal'),(7,'broadway'),(8,'broadway'),(9,'royal'),(10,'broadway'),(11,'royal'),(12,'broadway'),(13,'royal'),(14,'royal'),(15,'BLANK'),(16,'royal'),(17,'espresso'),(18,'espresso'),(19,'espres'),(20,'royal'),(21,'royal'),(22,'hall'),(23,'hall'),(24,'presby'),(25,'hall'),(26,'pres'),(27,'china'),(28,'pres'),(29,'3spot'),(30,'8'),(31,'create'),(32,'alpha'),(33,'rho'),(34,'alpha'),(35,'alpha'),(36,'royal'),(37,'broadway'),(38,'royal'),(39,'braodway'),(40,'broadway'),(41,'pres'),(42,'broadway'),(43,'royal'),(44,'espresso'),(45,'royal'),(46,'broadway'),(47,'royal'),(48,'royal'),(49,'espresso'),(50,'royal'),(51,'royal'),(52,'broadway food'),(53,'royal'),(54,'espres'),(55,'royal'),(56,'broadway'),(57,'royal'),(58,'pres'),(59,'pres'),(60,'pres'),(61,'pres'),(62,'Kams'),(63,'Kam\'s'),(64,'Joe\'s'),(65,'Brother'),(66,'pres'),(67,'pres'),(68,'pres'),(69,'pres');
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `searches_BEFORE_INSERT` BEFORE INSERT ON `searches` FOR EACH ROW BEGIN
	/* Make sure that the string is not only spaces */
    SET NEW.search_phrase = TRIM(NEW.search_phrase);
    
    /* If it is only spaces, dont do anything at all */
    IF LENGTH(NEW.search_phrase) = 0 THEN 
		SET NEW.search_phrase = "BLANK";
	ELSE
    /* Then check if there is already an entry with the same search term (maybe convert all to lower case if possible?)*/
		/*SET @existing = (SELECT search_id FROM searches WHERE search_phrase = @trimmed_phrase);
        /* If there is, then increment that one's frequency and delete the new one you just inserted */
        /*IF @existing THEN
			SET frequency = frequency + 1 WHERE search_id = @existing;
			DELETE FROM searches WHERE search_id = NEW.search_id;*/
        /* Otherwise leave the insert and set the frequency to 1 */
        /*ELSE
			SET frequency = 1 WHERE search_id = NEW.search_id;
		END IF;*/
		/* Call the procedure */
        CALL SearchProcedure(NEW.search_phrase);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Stars`
--

DROP TABLE IF EXISTS `Stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Stars` (
  `User_ID` int(11) DEFAULT NULL,
  `SSM_ID` int(11) DEFAULT NULL,
  `On_Campus_Housing_ID` int(11) DEFAULT NULL,
  `Off_Campus_Housing_ID` int(11) DEFAULT NULL,
  `RSO_ID` int(11) DEFAULT NULL,
  `Academics_ID` int(11) DEFAULT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `Time_Starred` datetime NOT NULL,
  KEY `User_ID` (`User_ID`),
  KEY `SSM_ID` (`SSM_ID`),
  KEY `On_Campus_Housing_ID` (`On_Campus_Housing_ID`),
  KEY `Off_Campus_Housing_ID` (`Off_Campus_Housing_ID`),
  KEY `RSO_ID` (`RSO_ID`),
  KEY `Academics_ID` (`Academics_ID`),
  KEY `Restaurant_ID` (`Restaurant_ID`),
  KEY `idx` (`Academics_ID`),
  CONSTRAINT `Stars_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_2` FOREIGN KEY (`SSM_ID`) REFERENCES `school_social_media` (`SSM_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_3` FOREIGN KEY (`On_Campus_Housing_ID`) REFERENCES `on_campus_housing` (`On_Campus_Housing_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_4` FOREIGN KEY (`Off_Campus_Housing_ID`) REFERENCES `off_campus_housing` (`Off_Campus_Housing_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_5` FOREIGN KEY (`RSO_ID`) REFERENCES `rso` (`RSO_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_6` FOREIGN KEY (`Academics_ID`) REFERENCES `academics` (`Academics_ID`) ON DELETE CASCADE,
  CONSTRAINT `Stars_ibfk_7` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurants` (`Restaurant_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stars`
--

LOCK TABLES `Stars` WRITE;
/*!40000 ALTER TABLE `Stars` DISABLE KEYS */;
INSERT INTO `Stars` VALUES (1,NULL,NULL,NULL,NULL,NULL,341,'2021-12-07 01:56:09'),(1,NULL,NULL,NULL,NULL,NULL,329,'2021-12-07 01:56:17'),(1,NULL,NULL,NULL,NULL,NULL,158,'2021-12-07 01:56:23'),(1,NULL,NULL,NULL,NULL,NULL,140,'2021-12-07 01:56:28');
/*!40000 ALTER TABLE `Stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Users` (
  `User_ID` int(11) NOT NULL,
  `Display_name` varchar(255) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'I <3 Databases!','test','test');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'stucu'
--

--
-- Dumping routines for database 'stucu'
--
/*!50003 DROP PROCEDURE IF EXISTS `SearchProcedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchProcedure`(IN search_phrase VARCHAR(255))
BEGIN
		DECLARE id INT;
        DECLARE srchtm INT;

        /* One cursor for each resource table */
        DECLARE academicsCursor CURSOR FOR (
                SELECT Academics_ID, times_searched FROM Academics WHERE website_name LIKE CONCAT('%', search_phrase, '%')
        );
        DECLARE onCampusCursor CURSOR FOR (
                SELECT On_Campus_Housing_ID, times_searched FROM On_Campus_Housing WHERE Dorm_unit_name LIKE CONCAT('%', search_phrase, '%')
        );
        DECLARE restaurantsCursor CURSOR FOR (
                SELECT Restaurant_ID, times_searched FROM Restaurants WHERE Restaurant_name LIKE CONCAT('%', search_phrase, '%')
        );
        DECLARE rsoCursor CURSOR FOR (
                SELECT RSO_ID, times_searched FROM RSO WHERE RSO_name LIKE CONCAT('%', search_phrase, '%')
        );
        DECLARE ssmCursor CURSOR FOR (
                SELECT SSM_ID, times_searched FROM School_Social_Media WHERE Organization_name LIKE CONCAT('%', search_phrase, '%')
        );

		OPEN academicsCursor;
        BEGIN
                DECLARE exit_flag BOOLEAN DEFAULT FALSE;
                DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=True;

                cloop: LOOP
                       FETCH academicsCursor INTO id, srchtm;
                       IF id = NULL THEN
                          LEAVE cloop;
                       ELSEIF exit_flag THEN
                          LEAVE cloop;
                       END IF;

                       SET srchtm = srchtm + 1;
                       UPDATE Academics SET times_searched = srchtm WHERE Academics_ID = id;
                END LOOP cloop;
        END;
        CLOSE academicsCursor;
        
        OPEN onCampusCursor;
        BEGIN
                DECLARE exit_flag BOOLEAN DEFAULT FALSE;
                DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=True;

                cloop: LOOP
                       FETCH onCampusCursor INTO id, srchtm;
                       IF id = NULL THEN
                          LEAVE cloop;
                       ELSEIF exit_flag THEN
                          LEAVE cloop;
                       END IF;

                       SET srchtm = srchtm + 1;
                       UPDATE On_Campus_Housing SET times_searched = srchtm WHERE On_Campus_Housing_ID = id;
                END LOOP cloop;
        END;
        CLOSE onCampusCursor;
        
        OPEN restaurantsCursor;
        BEGIN
                DECLARE exit_flag BOOLEAN DEFAULT FALSE;
                DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=True;

                cloop: LOOP
                       FETCH restaurantsCursor INTO id, srchtm;
                       IF id = NULL THEN
                          LEAVE cloop;
                       ELSEIF exit_flag THEN
                          LEAVE cloop;
                       END IF;

                       SET srchtm = srchtm + 1;
                       UPDATE Restaurants SET times_searched = srchtm WHERE Restaurant_ID = id;
                END LOOP cloop;
        END;
        CLOSE restaurantsCursor;
        
        OPEN ssmCursor;
        BEGIN
                DECLARE exit_flag BOOLEAN DEFAULT FALSE;
                DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=True;

                cloop: LOOP
                       FETCH ssmCursor INTO id, srchtm;
                       IF id = NULL THEN
                          LEAVE cloop;
                       ELSEIF exit_flag THEN
                          LEAVE cloop;
                       END IF;

                       SET srchtm = srchtm + 1;
                       UPDATE School_Social_Media SET times_searched = srchtm WHERE SSM_ID = id;
                END LOOP cloop;
        END;
        CLOSE ssmCursor;

        OPEN rsoCursor;
        BEGIN
                DECLARE exit_flag BOOLEAN DEFAULT FALSE;
                DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=True;

                cloop: LOOP
                       FETCH rsoCursor INTO id, srchtm;
                       IF id = NULL THEN
                          LEAVE cloop;
                       ELSEIF exit_flag THEN
                          LEAVE cloop;
                       END IF;

                       SET srchtm = srchtm + 1;
                       UPDATE RSO SET times_searched = srchtm WHERE RSO_ID = id;
                END LOOP cloop;
        END;
        CLOSE rsoCursor;

        /*SELECT * FROM Restaurants WHERE Restaurant_name LIKE CONCAT('%', search_phrase, '%') ORDER BY times_searched DESC;*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07 18:37:43
