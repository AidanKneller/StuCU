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
  PRIMARY KEY (`Academics_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Academics`
--

LOCK TABLES `Academics` WRITE;
/*!40000 ALTER TABLE `Academics` DISABLE KEYS */;
INSERT INTO `Academics` VALUES (1,'Grade disparity between sections at UIUC','https://waf.cs.illinois.edu/discovery/grade_disparity_between_sections_at_uiuc/','This website lets you search up a class and see how GPA differs between different instructors for the same class.'),(2,'GPAs of Every Course at The University of Illinois','https://waf.cs.illinois.edu/discovery/gpa_of_every_course_at_illinois/','This website displays the average GPA and class size of every class.'),(3,'Every Gen Ed at UIUC, by GPA','https://waf.cs.illinois.edu/discovery/every_gen_ed_at_uiuc_by_gpa/','This website allows you to filter by which categories a gen ed fulfills, as well as the GPA and class size of every gen ed.'),(4,'Gender Diversity at UIUC','https://waf.cs.illinois.edu/discovery/Gender-Diversity-at-UIUC/','This website shows the gender diversity of every major at UIUC, as well as some interesting outliers.'),(5,'Racial Demographics at UIUC','https://waf.cs.illinois.edu/discovery/Racial-Demographics-at-UIUC/','This website shows the racial diversity of UIUC over the past few decades.'),(6,'Generating a Degree Audit','https://registrar.illinois.edu/academic-records/dars-audit/','A degree audit report (DARS report) shows which graduation requirements you have fulfilled and what you still need to fulfill.'),(7,'Gen Ed Course Explorer','https://courses.illinois.edu/gened/DEFAULT/DEFAULT','This website allows you to sort by what categories you want the gen ed to fulfill, and whether they are offered in the upcoming semester or not.'),(8,'Academic Catalog','http://catalog.illinois.edu/','This website allows you to search up any current/past class and see the description, pre-requisites, and category fulfillments of each class.'),(9,'Course Explorer','https://courses.illinois.edu//','This website also allows you to search up any class but also lets you filter by fields like course level, credit hours, gened requirements, online vs on campus, etc. It is ESPECIALLY useful to see if a class is offered in an upcoming semester.');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add academics',1,'add_academics'),(2,'Can change academics',1,'change_academics'),(3,'Can delete academics',1,'delete_academics'),(4,'Can view academics',1,'view_academics'),(5,'Can add comments',2,'add_comments'),(6,'Can change comments',2,'change_comments'),(7,'Can delete comments',2,'delete_comments'),(8,'Can view comments',2,'view_comments'),(9,'Can add off campus housing',3,'add_offcampushousing'),(10,'Can change off campus housing',3,'change_offcampushousing'),(11,'Can delete off campus housing',3,'delete_offcampushousing'),(12,'Can view off campus housing',3,'view_offcampushousing'),(13,'Can add on campus housing',4,'add_oncampushousing'),(14,'Can change on campus housing',4,'change_oncampushousing'),(15,'Can delete on campus housing',4,'delete_oncampushousing'),(16,'Can view on campus housing',4,'view_oncampushousing'),(17,'Can add restaurants',5,'add_restaurants'),(18,'Can change restaurants',5,'change_restaurants'),(19,'Can delete restaurants',5,'delete_restaurants'),(20,'Can view restaurants',5,'view_restaurants'),(21,'Can add rso',6,'add_rso'),(22,'Can change rso',6,'change_rso'),(23,'Can delete rso',6,'delete_rso'),(24,'Can view rso',6,'view_rso'),(25,'Can add school social media',7,'add_schoolsocialmedia'),(26,'Can change school social media',7,'change_schoolsocialmedia'),(27,'Can delete school social media',7,'delete_schoolsocialmedia'),(28,'Can view school social media',7,'view_schoolsocialmedia'),(29,'Can add stars',8,'add_stars'),(30,'Can change stars',8,'change_stars'),(31,'Can delete stars',8,'delete_stars'),(32,'Can view stars',8,'view_stars'),(33,'Can add users',9,'add_users'),(34,'Can change users',9,'change_users'),(35,'Can delete users',9,'delete_users'),(36,'Can view users',9,'view_users'),(37,'Can add log entry',10,'add_logentry'),(38,'Can change log entry',10,'change_logentry'),(39,'Can delete log entry',10,'delete_logentry'),(40,'Can view log entry',10,'view_logentry'),(41,'Can add permission',11,'add_permission'),(42,'Can change permission',11,'change_permission'),(43,'Can delete permission',11,'delete_permission'),(44,'Can view permission',11,'view_permission'),(45,'Can add group',12,'add_group'),(46,'Can change group',12,'change_group'),(47,'Can delete group',12,'delete_group'),(48,'Can view group',12,'view_group'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user'),(53,'Can add content type',14,'add_contenttype'),(54,'Can change content type',14,'change_contenttype'),(55,'Can delete content type',14,'delete_contenttype'),(56,'Can view content type',14,'view_contenttype'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session');
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
INSERT INTO `Comments` VALUES (1,1,'Wow I love this site',NULL,NULL,NULL,NULL,8,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'admin','logentry'),(12,'auth','group'),(11,'auth','permission'),(13,'auth','user'),(14,'contenttypes','contenttype'),(15,'sessions','session'),(1,'stucu_site','academics'),(2,'stucu_site','comments'),(3,'stucu_site','offcampushousing'),(4,'stucu_site','oncampushousing'),(5,'stucu_site','restaurants'),(6,'stucu_site','rso'),(7,'stucu_site','schoolsocialmedia'),(8,'stucu_site','stars'),(9,'stucu_site','users');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-06 01:46:59.349205'),(2,'auth','0001_initial','2021-11-06 01:46:59.623955'),(3,'admin','0001_initial','2021-11-06 01:46:59.705099'),(4,'admin','0002_logentry_remove_auto_add','2021-11-06 01:46:59.715253'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-06 01:46:59.725039'),(6,'contenttypes','0002_remove_content_type_name','2021-11-06 01:46:59.787254'),(7,'auth','0002_alter_permission_name_max_length','2021-11-06 01:46:59.820370'),(8,'auth','0003_alter_user_email_max_length','2021-11-06 01:46:59.852242'),(9,'auth','0004_alter_user_username_opts','2021-11-06 01:46:59.861835'),(10,'auth','0005_alter_user_last_login_null','2021-11-06 01:46:59.893994'),(11,'auth','0006_require_contenttypes_0002','2021-11-06 01:46:59.897924'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-06 01:46:59.916388'),(13,'auth','0008_alter_user_username_max_length','2021-11-06 01:46:59.956149'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-06 01:46:59.998738'),(15,'auth','0010_alter_group_name_max_length','2021-11-06 01:47:00.032277'),(16,'auth','0011_update_proxy_permissions','2021-11-06 01:47:00.041779'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-06 01:47:00.085857'),(18,'sessions','0001_initial','2021-11-06 01:47:00.111007'),(19,'stucu_site','0001_initial','2021-11-06 01:47:00.127373');
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
INSERT INTO `django_session` VALUES ('t36b0txmugd8qnm3nuhkd4nfugkldrd7','.eJyrVkouLSpKzSuJLy1OLVKyMtJBEYjPTFGyMkQVy0vMTVWyUiouLUgtAmtC05KSWVyQk1gZD1XnW6SnEAxSqxAKUlwLAHZuKc8:1mjpAq:1njni0XyA2wIhtWATwF25TFci2llP0GfAbK7DI9zRlw','2021-11-21 20:53:56.999793');
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
  PRIMARY KEY (`On_Campus_Housing_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `On_Campus_Housing`
--

LOCK TABLES `On_Campus_Housing` WRITE;
/*!40000 ALTER TABLE `On_Campus_Housing` DISABLE KEYS */;
INSERT INTO `On_Campus_Housing` VALUES (1,'Allen Hall',NULL,'(217) 333-1100','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Allen','Allen Hall 1005 W. Gregory Dr. Urbana, IL 61801',NULL,'Unit One at Allen Hall is a creative, arts-immersive living-learning community with educational resources including a music recording studio, darkroom, ceramics lab, and free music lessons. This liberal arts community welcomes residents from eclectic and diverse backgrounds and offers gender-inclusive amenities.'),(2,'Busey-Evans Halls',NULL,'(217) 244-7639','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Busey-Evans','Busey Hall 1111 W. Nevada St. Urbana, IL 61801',NULL,'Busey (all women) and Evans (all men) Halls are conveniently situated close to the Main Quad, campus cultural centers, and local shops and cafés. Hall programming is focused on providing comfortable, empowering environments for residents to explore their interests and passions.'),(3,'Illinois Street Residence Halls',NULL,'(217) 333-4640','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Illinois-Street','Townsend Hall 918 W. Illinois St. Urbana, IL 61801',NULL,'Illinois Street Residence Halls (Townsend and Wardall) provides an environment that is quiet and conducive to academic success. Proximity to the Engineering Quad, combined with the fact that it is home to the Innovation Living-Learning Community and Honors Living-Learning Community, makes ISR a perfect choice for students who want to be surrounded by other students in similarly rigorous academic programs.'),(4,'Lincoln Avenue Residence Halls',NULL,'(217) 333-0200','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Lincoln-Avenue','Leonard Hall 1003 S. Lincoln Ave. Urbana, IL 61801',NULL,'Lincoln Avenue Residence Halls (Leonard and Shelden) offers residents a quiet, friendly, and laid-back community and features vegetarian and Kosher on-site dining and a sustainability garden. LAR hosts the Sustainability Living-Learning Community and Scholars Community.'),(5,'Florida Avenue Residence Halls',NULL,'(217) 333-0840','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Florida-Avenue','Oglesby Hall 1005 College Ct. Urbana, IL 61801',NULL,'Florida Avenue Residence Halls (Oglesby and Trelease) embraces an inclusive, multicultural community and offers common spaces for socializing, in-hall dining, and curbside bus pickup. Proximity to outdoor gathering spaces, including basketball and sand volleyball courts, gives this community a familiar, at-home atmosphere. FAR hosts the Health Professions and Women In Math, Science, and Engineering (WIMSE) Living-Learning Communities and has break housing options.'),(6,'Pennsylvania Avenue Residence Halls',NULL,'(217) 333-2950','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Pennsylvania-Avenue','Babcock Hall 1002 College Ct. Urbana, IL 61801',NULL,'Pennsylvania Avenue Residence Halls (Babcock, Carr, Blaisdell, and Saunders) is a diverse but close-knit community with updated amenities like newly renovated private bathrooms and comfortable social lounges. In-hall dining and proximity to outdoor gathering and intramural spaces give PAR a true neighborhood feel. PAR hosts the Intersections and Global Crossroads Living-Learning Communities.'),(7,'Hopkins Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Hopkins','Hopkins Hall 1208 S. First St. Champaign, IL 61820','IKE North','Hopkins Hall is a social community of primarily first-year students. Hall programming focuses on nurturing a solid foundation for students’ collegiate experience. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(8,'Nugent Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Nugent','Nugent Hall 207 E. Gregory Dr. Champaign, IL 61820','IKE North','Nugent Hall is home to mostly upper-division undergraduate students residents. It also hosts the Business Living-Learning Community (coming to Nugent in 2021-2022) and the Beckwith Residential Community for students with severe physical disabilities. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is connected by an interior walkway.'),(9,'Wassaja Hall',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Wassaja','Wassaja Hall 1202 S. First St. Champaign, IL 61820','IKE North','Wassaja Hall features double rooms clustered into small communities with private individual-use bathrooms (including a gender-inclusive option.) The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(10,'Weston Hall',NULL,'(217)333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Weston','Weston Hall 204 E. Peabody Dr. Champaign, IL 61820','IKE North','Weston Hall offers students the opportunity to explore majors through its Weston Exploration Living-Learning Community and develop as a leader through its LEADS Living-Learning Community (coming to Weston in 2021-2022). The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is located just around the corner.'),(11,'Barton-Lundgren Halls',NULL,'(217) 333-1651','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Barton-Lundgren','Barton Hall 1205 S. Fourth St. Champaign, IL 61820','IKE South','Barton (all women) and Lundgren (all men) Halls are quieter communities with more single rooms, making them ideal for academically-focused students who are looking for a little bit more privacy. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is located right around the corner.'),(12,'Bousfield Hall',NULL,'(217) 244-8360','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Bousfield','Bousfield Hall 1214 S. First St. Champaign, IL 61820','IKE South','Bousfield Hall is exclusively for sophomores and offers suite-style living with gender-inclusive options. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(13,'Scott Hall',NULL,'(217) 333-2394 ','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Scott','Scott Hall 202 E. Peabody Dr. Champaign, IL 61820','IKE South','Scott Hall is home to a mix of first-year students and upper-division students, including the Transfer Community. With a quiet and laid-back atmosphere, it offers a perfect setting for students to find a good balance between social and academic life. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(14,'Snyder Hall',NULL,'(217) 333-2394','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Snyder','Snyder Hall 206 E. Peabody Dr. Champaign, IL 61820','IKE South','Snyder Hall is a close-knit community rooted in social traditions and the commitment to a substance-free lifestyle. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(15,'Taft-Van Doren Halls',NULL,'(217) 333-2394','https://housing.illinois.edu/Living-Options/Residence-Halls/Undergraduate-Halls/Taft-Van-Doren','Taft Hall 1213 S. Fourth St. Champaign, IL 61820','IKE South','Starting in 2021-2022, Taft and Van Doren Halls will house exclusively sophomores and above, feature more single rooms, and offer the option to select a 6 Classic Meal or 6 Classic Meal + 25 Dining Dollars meal plan. The Student Dining and Residential Programs Building (SDRP), which features dining, a residential library, and social programming, is just a short walk away.'),(16,'Armory House','info@armoryhouse.com','(217) 384-4499','https://certified.housing.illinois.edu/property/armory-house/','100 Clark Hall 1203 S. 4th St. Champaign IL 61820',NULL,'Welcoming students from around the world, Armory House offers spacious single and double rooms (more than half are singles). Armory House Suites feature full-size beds and bathtubs in all of the rooms. From day one, activities are planned to help residents make new friends, have fun, and explore cross-cultural learning.\nArmory House Kitchen proudly offers global cuisines that are freshly prepared and sourced from local ingredients. Our chefs design Tastes-of- the World menus, vegetarian options, and made-to-order entrees for students to experience while enjoying their personal favorites. Multiple dining locations and to-go meals available.'),(17,'Bromley Hall','info@bromleyhall.com','(217) 384-6100','www.bromleyhall.com','910 S. Third St. Champaign IL 61820',NULL,'Bromley Hall is an all-inclusive and fully air-conditioned co-ed residence hall serving the University of Illinois campus. Bromley Hall is open to all University of Illinois students, including freshmen.\nIn addition to its prime location, Bromley Hall has some of the largest rooms on campus, all of which include adjoining semi-private bathrooms. All amenities, including regular housekeeping service in residents’ rooms, is provided at no additional cost.'),(18,'Brown House on Coler','brownhouseoncoler@comcast.net',NULL,'https://certified.housing.illinois.edu/property/brown-house/','703 S. Coler Ave. Urbana IL',NULL,'Brown House on Coler, the smallest of the Private Certified Housing facilities, is a Christian house for 4 men.\nBrown House is situated in a tree-filled neighborhood just two blocks east of Lincoln Avenue, between Oregon and Nevada streets.\nEach room is a single furnished with a bed, dresser, desk, chair, lamp, and area rug. The first floor of the house has an inviting living room with fireplace, a comfortable dining room, and a full kitchen. Residents prepare their evening meals on a cooperative rotating basis and household chores are shared.'),(19,'Evans Scholarship House','scholars@wgaesf.org','(847) 724-4600','https://certified.housing.illinois.edu/property/evans-scholarship-house/','1007 S. Third St. Champaign IL 61820',NULL,'The Evans Scholarship House is a coed residence facility for recipients of the Chick Evans Scholarship for Caddies, a four year, full tuition and housing scholarship. The four pillars of the Evans Scholarship are Scholarship, Leadership, Community Living, and House Upkeep. Evans Scholars share the work of maintaining the house while living and learning together.'),(20,'Hendrick House','office@hendrickhouse.com','(217) 365-8000','https://certified.housing.illinois.edu/property/hendrick-house/','904 W Green St, Urbana, IL 61801',NULL,'Since 1948, The Hendrick Family has welcomed students through its doors on their way to an enriching academic experience at the University of Illinois at Urbana-Champaign.\nLocated near the heart of the engineering campus, Hendrick House offers large rooms with comfortable, quiet surroundings. Our spacious rooms give residents a warm feeling and feature hardwood doors, wall-to-wall carpeting, and semi-private baths.\nOur fresh cuisine brings students back year after year. Choose from our made-to-order grilled selections, a delectable treat from our creation station, or a delicious home-style selection. Don’t forget dessert made fresh daily by our baker!'),(21,'Illini Chabad','info@illinichabad.com','(217) 487-4200','www.illinichabad.com','209 E. Armory Ave. Champaign IL',NULL,'Overlooking Washington Park with Stadium views from the top floor, Illini Chabad offers a premier housing experience for University of Illinois students. Residents enjoy the privacy of their own bedroom in our two-bedroom suites while feeling welcomed and supported by the tight-knit community of just 36 residents. Join the inaugural Fall 2021 class and experience campus life at UIUC’s first ever Jewish-affiliated housing option!'),(22,'Illini Tower','info@illinitower.net','(217) 344-0400','https://illinitoweruiuc.com/','409 E. Chalmers St Champaign IL',NULL,'Illini Tower is the perfect place for UIUC student life. It’s three blocks from the State Farm Center and a quick walk to Memorial Stadium. Enjoy easy access to shopping and eateries, or take advantage of our full-week meal plan. Make your home just steps away from everything your school community has to offer with unique residential life programs to help you live, learn, and grow.'),(23,'Koinonia','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','308 E. Daniel St. Champaign IL',NULL,'Koinonia is a Christian Cooperative residence where undergraduate men live and work together in intentional community.\nResidents share rooms and meals together, take care of weekly house duties (including cooking/cleaning), and participate in regularly planned social activities and opportunities for spiritual growth. Koinonia offers a unique living experience at a reasonable cost that encourages strong character, facilitates leadership development, and fosters life-long relationships.\nThe house is sponsored and staffed by the Baptist Student Foundation at UIUC, but its residents represent a wide range of Christian traditions.'),(24,'Nabor House','naborhouse@gmail.com',NULL,'https://certified.housing.illinois.edu/property/nabor-house/','1002 S. Lincoln Ave. Urbana IL',NULL,'Nabor House is an independent cooperative fraternity featuring core values of education, cooperation, recreation, leadership, religion, and agriculture.\nNabor House provides benefits of brotherhood enjoyed by Greek fraternities while maintaining a cost of living that is much more affordable. Members share the work of maintaining the house and preparing meals and pay about 60 percent of other comparable housing options on campus.'),(25,'Newman Hall','live@newmanhall.com','(217) 344-1266','www.sjcnc.org/housing','604 E. Armory Ave Champaign IL',NULL,'Live centered at Newman Hall, just steps from the Quad! Enjoy the best of student community and large, updated suite- and traditional-style rooms, fantastic fresh dining, and premium amenities.\nWith dozens of student groups, tons of social events, and a supportive, welcoming environment, at Newman Hall you’ll find more than just a place to live – you’ll find a place to come home to.'),(26,'Presby Hall','leasing@presbyhall.com','(217) 344-0102','www.presbyhall.com','405 E. John St. Champaign IL',NULL,'Presby Hall’s spacious suites were built to provide the best living environment available to University of Illinois Students.\nComprised of a living room, kitchen, two bathrooms, and either five- or six-bed suites, Presby Hall’s suite layouts provide a great combination of social and private areas! Presby Hall also offers an on-site parking garage. Presby Hall’s parking garage is the most secure and safe parking available to University of Illinois students. We have 35 spaces to allocate on a first-come, first-serve basis.'),(27,'Stratford Housel','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','310 E. Daniel St. Champaign IL',NULL,'Stratford House is a Christian cooperative residence where undergraduate and graduate women live and work together in intentional community.\nResidents share rooms and meals together, take turns cooking and cleaning up after meals, and participate in regularly planned social activities and opportunities for spiritual growth. Stratford House offers a unique living experience at a reasonable cost that encourages strong character, facilitates leadership development, and fosters life-long relationships.\nThe house is sponsored and staffed by the Baptist Student Foundation at UIUC, but its residents represent a wide range of Christian traditions.'),(28,'Stutton House','dspitz@uofibaptist.org','(217) 344-0484','http://uofibaptist.org/baptist-housing-ministry.html','312 E. Daniel St. Champaign IL',NULL,'Sutton House is a Christian cooperative student residence where undergraduate and graduate women live and work together in intentional community. The house offers single rooms with shared baths.  Residents have access to a meal plan at Stratford House and are able to prepare their meals in the fully equipped Sutton House kitchen. Parking is available in the lot behind the house for an additional fee on a first come, first served basis. Social and recreational activities and opportunities for spiritual growth are offered. Sutton House provides a unique living experience that encourages strong character, facilitates leadership development, and fosters life-long relationships.');
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
  PRIMARY KEY (`Restaurant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES (1,'Apple Dumplin\'','2173440076','American','2014 N Highcross Rd., Urbana, Illinois',NULL),(2,'Big Grove Tavern','2172393505','American','1 E Main St., Champaign, Illinois','biggrovetavern.com'),(3,'Courier Cafe','2173281811','American','111 N Race St, Urbana, Illinois','couriersilvercreek.com'),(4,'Dancing Dog Eatery & Juicery','2175521344','American','126 W Main St., Urbana, Illinois','dancingdogeatery.com'),(5,'Flesor\'s Candy Kitchen','2172533753','American','101 W Sale St, Tuscola, Illinois','flesorscandy.com'),(6,'Hank\'s Table','2173519463','American','122 N Neil Street, Champaign, Illinois',NULL),(7,'Irma Lou\'s Kitchen',NULL,'American','127 W Sale St., Tuscola, Illinois','Irmalous.com'),(8,'J. Gumbo\'s','2173374840','American','700 S Gregory, Urbana, Illinois','jgumbos.com'),(9,'Jo\'s Country Diner','2175432457','American','398 1L-133, Arthur, Illinois',NULL),(10,'Mahomet Family Restaurant','2175862700','American','1002 Commercial Drive, Mahomet, Illinois','mahometfamilyrestaurantil.com'),(11,'Ott\'s Drive-In','2178931100','American','400 N Century, Rantoul, Illinois','ottsdrivein.com'),(12,'R&I Restaurant','2175432011','American','127 S Vine St., Arthur, Illinois',NULL),(13,'Red Herring Restaurant','2173672340','American','1209 W Oregon, Urbana, Illinois','channingmurray.org/redherring'),(14,'Red Wheel Restaurant','2178930471','American','741 Broadmeadow Rd., Rantoul, Illinois',NULL),(15,'Red Wheel Restaurant','2178921100','American','1724 E Grove Avenue, Rantoul, Illinois',NULL),(16,'Rich\'s Family Restaurant','2175822777','American','305 W Ellen Street, Ogden, Illinois',NULL),(17,'Salad Meister','2177277227','American','601 S Sixth St, Champaign, Illinois','saladmeister.com'),(18,'Scratch','2174696230','American','227 E Lincoln Street, St. Joseph, Illinois','scratchmadestjoe.com'),(19,'Sun Singer Wine & Spirits','2173511115','American','1115 W Windsor Rd., Champaign, Illinois','sunsingerwines.com'),(20,'Urbana\'s Garden Restaurant','2173281514','American','810 Killarney, Urbana, Illinois','urbanagardenrestaurant.com'),(21,'Yoder\'s Kitchen','2176432714','American','1195 E Columbia St., Arthur, Illinois','yoderskitchen.com'),(22,'A-Ri-Rang','2173595569','Asian','607 S Wright St, Champaign, Illinois',NULL),(23,'Asian Noodle & Sushi','2178199699','Asian','305 Cedar Street, Champaign, Illinois',NULL),(24,'Asian Taste','2173846070','Asian','502 E John St, Champaign, Illinois','asiantastechampaign.com'),(25,'Aunlie Lee\'s Chinese Kitchen','2176937928','Asian','49 B E Green St., Champaign, Illinois','auntieleechampaign.com'),(26,'B Won','2173522966','Asian','2006 S Neil St, Champaign, Illinois','bwonkorean.com'),(27,'Bab Plus Korean','2176075906','Asian','700 S Gregory St, Urbana, Illinois','babpluskorean.com'),(28,'Bangkok Thai & Pho 911','2179541641','Asian','410 E Green St, Champaign, Illinois',NULL),(29,'Bangkok Thai & Pho 911','2176075828','Asian','1104 N Cunningham Ave, Urbana, Illinois',NULL),(30,'Basil Thai','2173448662','Asian','701 S Gregory St, Urbana, Illinois',NULL),(31,'Best Wok','2173565757','Asian','907 W Marketview Dr., Champaign, Illinois','bestwokchampaign.com'),(32,'BoBo\'s China','2173522272','Asian','404 E Green St, Champaign, Illinois','bobochinail.com'),(33,'China Express','2178928321','Asian','1235 E Grove Ave, Rantoul, Illinois',NULL),(34,'China Garden','2173676588','Asian','114 N Vine St, Urbana, Illinois',NULL),(35,'China King','2174699966','Asian','2145 S Neil St, Champaign, Illinois','chinakingchampaign.com'),(36,'China King','2173518885','Asian','205 E Warren, St. Joseph, Illinois','chinakingchampaign.com'),(37,'Chinatown Buffet','2173989888','Asian','713 W Marketview Dr., Champaign, Illinois',NULL),(38,'Chinatown Restaurant','2172534173','Asian','206 E Southline Rd., Tuscola, Illinois',NULL),(39,'Chopstix',NULL,'Asian','202 E Green St., Ste. 1, Champaign, Illinois','21735972222 | chopstix.carry-out.com'),(40,'Cravings',NULL,'Asian','603 S Wright St., Champaign, Illinois','2173282538 | cravingscu.com'),(41,'Dumpling Noodle BBQ','2172810880','Asian','715 S Neil St, Champaign, Illinois',NULL),(42,'First Wok','2173444500','Asian','1815-A S Philo Rd., Urbana, Illinois',NULL),(43,'Golden Harbor','2173988988','Asian','505 S Neil St., Champaign, Illinois','goldenharboronline.com'),(44,'Golden Kitchen','2177625678','Asian','402 W Center St, Monticello, Illinois',NULL),(45,'Golden Wok','2173568383','Asian','405 E University Ave, Champaign, Illinois','goldenwokcu.com'),(46,'Good Fella Korean Bistro','2172395959','Asian','905 S Neil St, Champaign, Illinois','goodfellakoreanbistro.com'),(47,'Green Jade','2173555988','Asian','1109 W Windsor Rd., Champaign, Illinois','greenjadechampaign.com'),(48,'Green Onion Asian Market','2173595370','Asian','2020 S Neil Street, Champaign, Illinois',NULL),(49,'Home of Gourmet Chinese & Thai','2173447483','Asian','604 E Daniel St, Champaign, Illinois',NULL),(50,'Hot Wok Express','2173847170','Asian','1102 W University Ave, Urbana, Illinois',NULL),(51,'I Wok','2173519888','Asian','113 W Calvin St, Savoy, Illinois','iwoksavoy.com'),(52,'Jip Bap','2175521688','Asian','601 S Sixth St., Champaign, Illinois',NULL),(53,'K-Bowl','2173446022','Asian','39 E Green St., Champaign, Illinois',NULL),(54,'Ko Fusion','2179541572','Asian','701 S Gregory Dr., Urbana, Illinois','kofusion.com'),(55,'Ko Fusion','2175311166','Asian','1 E Main St., Champaign, Illinois','kofusion.com'),(56,'Kung Fu BBQ','2173591888','Asian','510 E John St, Champaign, Illinois',NULL),(57,'Lai Lai Wok','2173281888','Asian','402 E Green St, Ste. A, Champaign, Illinois','lailaiwokchampaign.com'),(58,'Lao Sze Chuan Chinese Restaurant','2176890031','Asian','608 E University Ave, Champaign, Illinois','laoszechuanchinese.com'),(59,'Mandarin Wok','2173845088','Asian','403 1/2 E Green St, Champaign, Illinois','mandarinwokonline.com'),(60,'Masijta Grill','2175521188','Asian','202 N Race St, Ste. A, Urbana, Illinois','masijtagrill.com'),(61,'Mid-Summer Lounge','2176071434','Asian','623 E Green St, Champaign, Illinois','midsummerlounge.com'),(62,'Ming Garden','2173520056','Asian','1804 Sangamon Dr., Champaign, Illinois',NULL),(63,'Moki Sushi','2175521600','Asian','2017 S Neil St, Champaign, Illinois','mokisushibar.com'),(64,'Mr. Crab','2173989999','Asian','401 S First Street, Champaign, Illinois',NULL),(65,'My Thai','2173518424','Asian','2312 W Springfield Ave., Champaign, Illinois','mythaichampaign.com'),(66,'Naniing Bistro','2176078117','Asian','508 E Green St, Champaign, Illinois','nanjingbistrochampaign.com'),(67,'Oishi','2173986888','Asian','2501 N Prospect Ave, Champaign, Illinois','oishiasiancuisine.com'),(68,'Ozu Ramen','3127990784','Asian','601 S Sixth St, Champaign, Illinois',NULL),(69,'Peking Garden','2173558888','Asian','206 N Randolph St, Champaign, Illinois','pekinggardenchampaign.com'),(70,'Peking House','2175862316','Asian','806 E Franklin St, Mahomet, Illinois',NULL),(71,'Pho Cafe','2175521106','Asian','611 E Green St., Champaign, Illinois',NULL),(72,'Poke Lab','2175521880','Asian','605 S Sixth St, Champaign, Illinois',NULL),(73,'Rainbow Garden','2173982670','Asian','1402 S Neil St., Champaign, Illinois','rainbowgarden.com'),(74,'Rainbow Garden','2173441888','Asian','202 E University Ave, Urbana, Illinois','rainbow7garden.com'),(75,'Red Cape Hot','2179540545','Asian','112 E Green St, Champaign, Illinois',NULL),(76,'Sakanaya','2173441400','Asian','403 E Green St., Champaign, Illinois','sakanayaerestaurant.com'),(77,'San Maru','2173522119','Asian','2504 Village Green Pl, Champaign, Illinois','sanmarucu.com'),(78,'Shiquan Wonton','2176072635','Asian','212 E Green St., Champaign, Illinois',NULL),(79,'Siam Terrace','2173678424','Asian','212 W Main St, Urbana, Illinois','siamterrace.com'),(80,'South China Restaurant','2173529008','Asian','25 E Springfield Ave., Champaign, Illinois','southchinachampaign.com'),(81,'Spicy Tang','2174196676','Asian','607 S Sixth Street, Champaign, Illinois','spicytangrestaurant.com'),(82,'Spoon House Korean Kitchen','2173443483','Asian','616 E Green St, Champaign, Illinois',NULL),(83,'Star BBQ Restaurant','2173567777','Asian','1209 Savoy Plaza Ln., Savoy, Illinois','starbbquiuc.com'),(84,'Sunny China Buffet','2173678883','Asian','1703 S Philo Rd., Urbana, Illinois','sunnychinabuffet.com'),(85,'Super Wok','2173980111','Asian','1737 W Kirby Ave, Champaign, Illinois','gosuperwok.com'),(86,'Sushi Ichiban','2179540493','Asian','619 S Wright St., Champaign, Illinois','sushiichibanchampaign.com'),(87,'Sushi Kame','2173563366','Asian','132 W Church St, Champaign, Illinois',NULL),(88,'Sushi Rock','2173374285','Asian','621 E Green St., Champaign, Illinois','sushirockchampaign.com'),(89,'Sushi San','2173281886','Asian','1401 W Green St., Urbana, Illinois',NULL),(90,'Szechuan China','2173989999','Asian','401 S First St, Champaign, Illinois','szechuanchina.com'),(91,'Thara Thai','2173781986','Asian','912-1/2 Bloomington Rd., Champaign, Illinois','tharathairestaurant.com'),(92,'The Wok','2175861588','Asian','703 Eastwood Dr., Ste. C, Mahomet, Illinois',NULL),(93,'Xinh Xinh Cafe','2173377600','Asian','114 N Vine, Ste. H, Urbana, Illinois','xinhxinhecafe.com'),(94,'Y Eatery','2173371500','Asian','1001 S Wright St, Champaign, Illinois',NULL),(95,'Aroma Cafe','2173563200','Bakeries & Cafes','118 N Neil St, Champaign, Illinois','aromarcafe.com'),(96,'Bossa Nova Cafe','2176076359','Bakeries & Cafes','1 E Main Street, Champaign, Illinois','bossanovacoffeehouse.com'),(97,'BrewLab Coffee','2179797123','Bakeries & Cafes','630 S Fifth St, Champaign, Illinois','brewlab.coffee'),(98,'Cafe Kopi','2173594266','Bakeries & Cafes','109 N Walnut St, Champaign, Illinois','cafe-kopi.com'),(99,'Cafeteria & Company',NULL,'Bakeries & Cafes','208 W Main Street, Urbana, Illinois','cafeteriaandcompany.com'),(100,'Caffe Bene','2176072611','Bakeries & Cafes','524 E Green St, Champaign, Illinois',NULL),(101,'Caffe Bene','2179178000','Bakeries & Cafes','700 S Gregory St, Urbana, Illinois',NULL),(102,'Caffe Paradiso','2173846066','Bakeries & Cafes','801 S Lincoln Ave, Urbana, Illinois','enjoyparadiso.com'),(103,'Carmella\'s Creme','2175310224','Bakeries & Cafes','1611 W Springfield Ave, Champaign, Illinois',NULL),(104,'Clever Moose Cafe','2176078126','Bakeries & Cafes','1807 S Neil St, Champaign, Illinois','lodgic.org/cleveremooseecafe'),(105,'Common Ground Food Co-op','2173523347','Bakeries & Cafes','300 S Broadway Ave, Suite 166, Urbana, Illinois','commonground.coop'),(106,'Espresso Royale','2173376160','Bakeries & Cafes','1117 W Oregon, Urbana, Illinois','espressoroyalecoffee.com'),(107,'Espresso Royale','2173284335','Bakeries & Cafes','1301 W Springfield Ave., Urbana, Illinois','espressoroyalecoffee.com'),(108,'Espresso Royale','2173337799','Bakeries & Cafes','1402 W Gregory Dr, Urbana, Illinois','espressoroyalecoffee.com'),(109,'Espresso Royale','2173510928','Bakeries & Cafes','1411 S Neil St, Champaign, Illinois','espressoroyalecoffee.com'),(110,'Espresso Royale','2173521998','Bakeries & Cafes','2401 Village Green Pl, Champaign, Illinois','espressoroyalecoffee.com'),(111,'Espresso Royale','2172443194','Bakeries & Cafes','500 E Peabody Dr., Champaign, Illinois','espressoroyalecoffee.com'),(112,'Espresso Royale','2173337074','Bakeries & Cafes','515 E Gregory Dr., Champaign, Illinois','espressoroyalecoffee.com'),(113,'Evo Cafe','2173287688','Asian','711 S Sixth St., Champaign, Illinois','evomenu.com'),(114,'Flying Machine Avionics','2176007949','Bakeries & Cafes','202. S First St., Champaign, Illinois',NULL),(115,'Geschenk Boutique Coffee & Tea Haus','2174696034','Bakeries & Cafes','228 E Lincoln Street, St. Joseph, Illinois',NULL),(116,'Greenhouse Cafe','2173333287','Bakeries & Cafes','515 Old Timber Rd., Monticello, Illinois','allerton.illinois.edu/greenhouse-cafe'),(117,'Hopscotch Bakery + Market','2176076436','Bakeries & Cafes','802 W John St, Champaign, Illinois','hopscotchcakes.com'),(118,'Industrial Donut','2176071323','Bakeries & Cafes','501 Commerce Dr., Savoy, Illinois','industrialdonut.com'),(119,'Kung Fu Tea','2175521668','Bakeries & Cafes','707 S 6th St, Champaign, Illinois','kungfutea.com'),(120,'Latea Lounge','2179541855','Bakeries & Cafes','601 S Sixth St., Champaign, Illinois','latealounge.com'),(121,'Pandamonium Doughnuts','6309464306','Bakeries & Cafes','1105 Windsor Rd., Champaign, Illinois','pandamoniumdoughnuts.wixsite.com/pandamoniumdoughnuts'),(122,'Pekara Bakery & Bistro','2173594500','Bakeries & Cafes','116 N Neil St, Champaign, Illinois','pekarabakery.com'),(123,'Pekara Bakery & Bistro','2179541002','Bakeries & Cafes','811 W Springfield Ave., Champaign, Illinois','pekarabakery.com'),(124,'PVP Bakery','2178191265','Bakeries & Cafes','611 E Green St, Champaign, Illinois',NULL),(125,'Rick\'s Bakery','2173449383','Bakeries & Cafes','124 W Main St, Urbana, Illinois','ricksbakeryurbana.com'),(126,'Roselen\'s Coffees & Delights','2175433106','Bakeries & Cafes','1045 E Columbia St., Arthur, Illinois','roselenscoffeesanddelights.com'),(127,'Strawberry Fields Natural Food Store & Cafe','2173281655','Bakeries & Cafes','306 W Springfield Ave, Urbana, Illinois','strawberryfields.com'),(128,'Steeple Coffee House and Gallery','2177622924','Bakeries & Cafes','102 E Lafayette St, Monticello, Illinois',NULL),(129,'Taipei Cafe','3127990784','Bakeries & Cafes','512 E Green St, Champaign, Illinois',NULL),(130,'Teamoji','2176076339','Bakeries & Cafes','617 E Green St., Champaign, Illinois','teamoji.business.site'),(131,'The Bread Company','2173831007','Bakeries & Cafes','706 S Goodwin Ave, Urbana, Illinois','thebread.co'),(132,'Ye Olde Donut Shoppe','2173593311','Bakeries & Cafes','1401 S Neil St., Champaign, Illinois',NULL),(133,'3 Ravens','2177623333','Bar & Grill','108 S Charter St., Monticello, Illinois','3ravens.pub'),(134,'Angela\'s Food & Spirits','2175434059','Bar & Grill','120 N Walnut St, Arthur, Illinois',NULL),(135,'Attie\'s Bur & Grill','2173679876','Bar & Grill','2600 S Stone Creek Blvd., Urbana, Illinois','atties.net'),(136,'Baxter\'s American Grille','2172399299','Bar & Grill','100 Trade Centre Dr., Champaign, Illinois','baxtersgrille.com'),(137,'Billy Barooz Pub & Grill','2173558030','Bar & Grill','2521 Village Green Pl., Champaign, Illinois','billybarooz.com'),(138,'Blue Star Family Restaurant','2178971345','Bar & Grill','201 E Division Street, Fisher, Illinois',NULL),(139,'Boomerangs Bar & Grill','2172397264','Bar & Grill','1309 E Washington St, Urbana, Illinois','boomerangsbarandgrill.com'),(140,'Brothers Bar & Grill','2173285531','Bar & Grill','613 E Green St, Champaign, Illinois','brothersbar.com/champaign'),(141,'Bud\'s Bar','2178929655','Bar & Grill','122 N Kentucky Ave, Rantoul, Illinois','budsbar.business.site'),(142,'Bunny\'s Tavern','2173678175','Bar & Grill','119 W Water St, Urbana, Illinois','bunnystavern.com'),(143,'Cactus Grill','2173518226','Bar & Grill','1405 S Neil St, Champaign, Illinois','cactusgrillchampaign.com'),(144,'Clark Bar','2173550510','Bar & Grill','207 W Clark St., Champaign, Illinois','theclarkbar.com'),(145,'Cowboy Monkey','2173982688','Bar & Grill','6 Taylor St, Champaign, Illinois','cowboy-monkey.com'),(146,'Crane Alley','2173847526','Bar & Grill','115 W Main St, Urbana, Illinois','crane-alley.com'),(147,'Destihl Restaurant & Brew Works','2173560301','Bar & Grill','301 N Neil St, Champaign, Illinois','destihl.com'),(148,'Esquire Lounge','2173985858','Bar & Grill','106 N Walnut St, Champaign, Illinois','esquirelounge.com'),(149,'Farren\'s Pub & Eatery','2173596977','Bar & Grill','117 N Walnut St, Champaign, Illinois','farrenspub.com'),(150,'ET\'s Downtown Runroul','2178930222','Bar & Grill','107 E Sangamon, Rantoul, Illinois','etsdowntown.com'),(151,'Fat City Bar & Grill','2179540556','Bar & Grill','505 S Chestnut St, Champaign, Illinois','citycenterchampaign.com'),(152,'Fieldhouse 219','2176311155','Bar & Grill','219 W Washington St., Monticello, Illinois','fieldhouse219.com'),(153,'Freeman\'s Tavern','2175833220','Bar & Grill','108 West Main Street, Royal, Illinois',NULL),(154,'Goldy\'s Bar & Grill','2173592177','Bar & Grill','123 S Mattis Ave., Champaign, Illinois',NULL),(155,'Guido\'s Bur & Grill','2173593148','Bar & Grill','2 E Main St, Champaign, Illinois','guidosbar.com'),(156,'Houlihan\'s','2178195005','Bar & Grill','1902 S First St, Champaign, Illinois','houlihans.com'),(157,'It\'ll Do 2','2172534500','Bar & Grill','600 S Washington St., Tuscola, Illinois',NULL),(158,'Joe\'s Brewery','2173841790','Bar & Grill','706 S Fifth St, Champaign, Illinois','joesbrewery.com'),(159,'JT Walker\'s Restaurant & Brewery','2175861100','Bar & Grill','401 E Main St, Mahomet, Illinois','jtwalkers.com'),(160,'Legends Bar & Grill','2173557674','Bar & Grill','522 E Green St., Champaign, Illinois','legendsbarchampaign.com'),(161,'Monarch Brewing Company','2176311141','Bar & Grill','212 S Independence St, Monticello, Illinois','monarchbrewingco.com'),(162,'Murphy\'s Pub','2173444372','Bar & Grill','604 E Green St., Champaign, Illinois','murphyspubuofi.com'),(163,'Neil Sr. Blues','2175311150','Bar & Grill','301 N Neil St, Champaign, Illinois','neilstblues.com'),(164,'Philo Tavern','2176842117','Bar & Grill','101W Washington St., Philo, Illinois','thephilotavern.com'),(165,'Rantoul Public House','2172829537','Bar & Grill','108 N Garrard St, Rantoul, Illinois',NULL),(166,'Roch\'s Place','2174692660','Bar & Grill','101 N Main St, St. Joseph, Illinois','rochsplace.com'),(167,'Scotty\'s Brew House','2175304394','Bar & Grill','2001 S Neil St, Champaign, Illinois','scottysbrewhouse.com'),(168,'Seven Saints','2173517775','Bar & Grill','32 E Chester St, Champaign, Illinois','sevensaintsbar.com'),(169,'Shooters Bar & Grill','2178930077','Bar & Grill','215 S Tanner, Rantoul, Illinois',NULL),(170,'Signature Grill','2176070893','Bar & Grill','505 E Green St, Champaign, Illinois','thesignaturegrill.com'),(171,'Tin Roof Tavern','2173375000','Bar & Grill','604 N Cunningham Ave, Urbana, Illinois',NULL),(172,'TK\'s Cheesesteak','2172829812','Bar & Grill','112 E Congress Ave, Ranotul, Illinois','tkscheesesteaks.com'),(173,'Traxside Bar & Grill','2173900501','Bar & Grill','4 E Holden St, Tolono, Illinois',NULL),(174,'Watson\'s Shack & Rail','2176070168','Bar & Grill','211 N Neil St., Champaign, Illinois','watsonschicken.com'),(175,'Wild Hare Bar and Grill','2178970081','Bar & Grill','109 S Third St, Fisher, Illinois',NULL),(176,'Wingin Out','2176071864','Bar & Grill','301 E Green Street, Champaign, Illinois','winginout.com'),(177,'BBQ Chicken','2176007939','Barbecue','700 S Gregory St, Urbana, Illinois','bbdotqchicken.com'),(178,'Billy Bob\'s BBQ','2175822277','Barbecue','105 E Broadway, Ogden, Illinois','billybobsunderthewatertower.com'),(179,'Black Dog Smoke & Ale House','2173449334','Barbecue','201 N Broadway Ave, Urbana, Illinois','blackdogsmoke.com'),(180,'Black Dog Smoke & Ale House','2173449334','Barbecue','320 N Chestnut St., Champaign, Illinois','blackdogsmoke.com'),(181,'Bobo\'s Barbecue','2173552271','Barbecue','1511 W Springfield Ave, Champaign, Illinois','bobosbbqchampaign.com'),(182,'Hickory River Smokehouse','2173371656','Barbecue','1706 N Cunningham, Urbana, Illinois','hickoryriver.com'),(183,'Lil Porgy\'s BBQ','2173986811','Barbecue','1917 W Springfield Ave, Champaign, Illinois','lilporgysbbq.com'),(184,'Pauly\'s BBQ','2175437400','Barbecue','310 E Columbia St, Arthur, Illinois','paulysbbq.com'),(185,'Pink Pig','2175828026','Barbecue','2698 County Road 1600 N, Ogden, Illinois','pinkpigrestaurant.com'),(186,'Project 47 Smokehouse','2175863456','Barbecue','101 S Lombard Ave, Mahomet, Illinois','project47smokehouse.com'),(187,'Smoky\'s House BBQ','2173552272','Barbecue','1333 Savoy Plaza Ln, Savoy, Illinois','smokyshousebbq.com'),(188,'Wood N\' Hog BBQ','2176070120','Barbecue','904 N Fourth St, Champaign, Illinois','woodnhogbarbecue.com'),(189,'Wood N\' Hog BBQ','2176070120','Barbecue','500 Walnut St., Champaign, Illinois','woodnhogbarbecue.com'),(190,'Wood N\' Hog BBQ','2176070120','Barbecue','101 W University Ave., Urbana, Illinois','woodnhogbarbecue.com'),(191,'Bergie\'s Place','2176488020','Breakfast','10 6 S Charter St., Monticello, Illinois','bookbergies.com'),(192,'Country Kitchen',NULL,'Breakfast','705 E Columbia St., Arthur, Illinois',NULL),(193,'Cracked: The Egg Came First','2179540361','Breakfast','619 E Green St, Champaign, Illinois','crackedongreen.com'),(194,'Four Breakfast and More','2179541126','Breakfast','401 E Green Street, Champaign, Illinois',NULL),(195,'Le Peep','2173527599','Breakfast','2209 S Neil St, Ste. W Champaign, Illinois','lepeep.com'),(196,'Merry Ann\'s Diner','2173525399','Breakfast','1510 S Neil St., Champaign, Illinois','merry-anns.com'),(197,'Merry Ann\'s Diner','2173447455','Breakfast','701 S Gregory St, Ste. C, Urbana, Illinois','merry-anns.com'),(198,'Original Pancake House','2173528866','Breakfast','1909 W Springfield Ave., Champaign, Illinois','originalpancakehouse.com'),(199,'Sam\'s Cafe','2173527102','Breakfast','115 N Walnut St., Champaign, Illinois',NULL),(200,'Sammy\'s Pancake House','2173553403','Breakfast','1206 N Mattis Ave., Champaign, Illinois',NULL),(201,'Cocomero','2173283888','Dessert','709 S Wright St, Champaign, Illinois',NULL),(202,'Cookies by Design','2173443911','Dessert','902 Meijer Dr., Champaign, Illinois','cookiesbydesign.com'),(203,'Cream & Flutter','2173555400','Dessert','114 N Walnut St., Champaign, Illinois','creamandflutter.com'),(204,'El Oasis','2179540215','Dessert','510 N Cunningham Ave, Urbana, Illinois',NULL),(205,'Froyo Factory','2177622233','Dessert','106 S Market St., Monticello, Illinois','froyofactorymonticello.com'),(206,'Insomnia Cookies','2173280203','Dessert','502 E John St, Champaign, Illinois','insomniacookies.com'),(207,'Jarling\'s Custard Cup','2173522273','Dessert','309 W Kirby Ave, Champaign, Illinois','jarlingscustardcup.com'),(208,'Lenny\'s Ice Cream Gallery','2175687400','Dessert','308 S Main St, Gifford, Illinois',NULL),(209,'Lucky Moon Pies','2174022319','Dessert','401 E Oak St, Mahomet, Illinois','luckymoonpies.com'),(210,'Paris Super Crepes','2177601404','Dessert','601 South 6th Street, Champaign, Illinois','paris-super-crepes.business.site'),(211,'Pies by Inge','2177780200','Dessert','212 W Washington St., Monticello, Illinois','piesbyinge.com'),(212,'Red Bicycle Ice Cream','2176071233','Dessert','2740 Philo Rd., Urbana, Illinois','redbicycleicecream.com'),(213,'Sidney Dairy Burn','2176883700','Dessert','311 W Main, Sidney, Illinois','sidneydairybarn.com'),(214,'Sweet Indulgence','2173522433','Dessert','1121 Windsor Rd., Champaign, Illinois','thenewsweetindulgence.biz'),(215,'TCBY','2176075090','Dessert','1731 W Kirby Ave, Champaign, Illinois','tcby.com'),(216,'YoYos','2175862520','Dessert','104 S Lombard St., Mahomet, Illinois',NULL),(217,'Big JJ Fish & Chicken','2173514005','Fast Food','1114 N Market St, Champaign, Illinois','jjfishandchickenchampaign.com'),(218,'Butcher Boy Burgers','2178415458','Fast Food','422 S Garrard, Rantoul, Illinois',NULL),(219,'Charlie\'s Grub & Suds','2178962073','Fast Food','102 N Main, Homer, Illinois',NULL),(220,'CoreLife Eatery','2176936993','Fast Food','2502 N Prospect Ave., Champaign, Illinois','corelifeeatery.com'),(221,'Garbanzo Mediterranean Fresh','2172394737','Fast Food','1401 W Green St, Champaign, Illinois','eatgarbanzo.com'),(222,'Howdy Burger','2176071548','Fast Food','625 E Green St, Champaign, Illinois',NULL),(223,'Jurassic Grill','2173909294','Fast Food','404 E Green St, Champaign, Illinois','jurassicgrill.com'),(224,'Krispy Krunchy Chicken','2175521800','Fast Food','922 W Bradley Ave, Champaign, Illinois','krispykrunchychampaign.com'),(225,'Krispy Krunchy Chicken','2172533116','Fast Food','1000 E Southline Rd., Tuscola, Illinois','krispykrunchychampaign.com'),(226,'Niro\'s Gyros','2173286476','Fast Food','1007 W University Ave, Urbana, Illinois','nirosgyrosuniversityave.com'),(227,'Niro\'s Gyros','2173563700','Fast Food','2001 W Springfield Ave, Champaign, Illinois','champaignnirosgyros.com'),(228,'Super Niro\'s Gyros',NULL,'Fast Food','608 W Town Center Blvd, Champaign, Illinois','7733195353 | supernirosgyros.com'),(229,'Windy City','2173449404','Fast Food','410 N Race, Urbana, Illinois','windycityexpressil.com'),(230,'Zorba\'s','2173440710','Fast Food','627 E Green St, Champaign, Illinois','zorbaschampaignil.com'),(231,'Miga','2173981020','Fine Dining','301 N Neil St, Champaign, Illinois','miga-restaurant.com'),(232,'Nando Milano Trattoria','2179541439','Fine Dining','204 N Neil St, Champaign, IL 61820','nandomilanochampaign.com'),(233,'NAYA','2177297430','Fine Dining','212 E Green St, Champaign, Illinois','nayarestaurant.com'),(234,'Silvercreek','2173283402','Fine Dining','402 N Race St., Urbana, Illinois','couriersilvercreek.com/silvercreek'),(235,'Timpone\'s','2173447619','Fine Dining','710 S Goodwin Ave, Urbana, Illinois','timpones-urbana.com'),(236,'The Wheelhouse','2174696252','Fine Dining','109 N Main St, St. Joseph, Illinois','wheelhousesjo.com'),(237,'Amaravati Indian Cuisine','2179541012','International','2501 Village Green Pl, Champaign, Illinois','amaravatiindianroyalcuisineil.com'),(238,'Ambar India','2173441500','International','605 S Wright St., Champaign, Illinois','ambarindianchampaign.com'),(239,'Ba\'get','2176937961','International','1713 W Kirby Ave, Champaign, Illinois',NULL),(240,'Bombay Indian Grill','2173443380','International','401 E Green St, Champaign, Illinois','bombayindiangrillchampaign.com'),(241,'Broadway Food Hall (King Kuma | Nation | Muchacho | La Royals | Eighty-Three Vietnamese Cuisine)',NULL,'International','401 N Broadway Avenue, Urbana, Illinois','broadwayfoodhall.com'),(242,'Caribbean Grill','2179605375','International','2135 S Neil St, Champaign, Illinois','caribbeangrill.net'),(243,'Himalayan Chimney','2175521834','International','134 W Church Street, Champaign, Illinois',NULL),(244,'Jerusalem Middle Eastern Cuisine','2173448760','International','601 S Wright St, Champaign, Illinois',NULL),(245,'Kohinoor Indian Restaurant','2175521384','International','6 E Columbia Ave, Champaign, Illinois','kohinoorchampaign.com'),(246,'Sitara Indian Restaurant & Lounge','2173446440','International','114 S Race St, Urbana, Illinois','sitaraindian.com'),(247,'Stango Cuisine','8444976835','International','300 S Broadway, Urbana, Illinois','stangocu.com'),(248,'Sticky Rice','2179541929','International','415 N Neil St, Champaign, Illinois',NULL),(249,'Taste of Thai','2172829358','International','124 E Sangamon Ave., Rantoul, Illinois',NULL),(250,'Top Food Restaurant','2173784272','International','103 W Kirby Avenue, Champaign, Illinois',NULL),(251,'Baldarotta\'s Porketta & Sicilian Sausage','3092874455','Italian','Lincoln Square, Urbana, Illinois','baldarottas.com'),(252,'Biaggi\'s Ristorante Italiano','2173564300','Italian','2235 S Neil St, Champaign, Illinois','biaggis.com'),(253,'Manzella\'s Italian Patio','2173527624','Italian','115 S First St., Champaign, Illinois','manzellasitalianrestaurant.com'),(254,'Mia Za\'s','2172983198','Italian','629 E Green St., Champaign, Illinois','miazas.com'),(255,'Agave','2178932880','Mexican','405 S Century Blvd., Rantoul, Illinois',NULL),(256,'Breaking Taco','2175866938','Mexican','608 E Main, Mahomet, Illinois','breakingtaco.com'),(257,'Burrito King Mexican Grill','2176070073','Mexican','408 E Green St, Champaign, Illinois','burritokingchampaign.com'),(258,'Casa Del Mar','2175521525','Mexican','2870 S Philo Road, Urbana, Illinois',NULL),(259,'Casa Fiesta Grill','2178928541','Mexican','215 E Sangamon Ave, Rantoul, Illinois',NULL),(260,'Casa Real','2177624762','Mexican','1204 Bear Ln., Monticello, Illinois',NULL),(261,'Dos Reales','2173516879','Mexican','1407 N Prospect Ave, Champaign, Illinois',NULL),(262,'El Patio','2176007683','Mexican','2506 Village Green Pl., Champaign, Illinois','elpatiochampaign.com'),(263,'El Toro','2175900501','Mexican','1668 E Grove Ave, Rantoul, Illinois','eltororestaurante.com'),(264,'El Toro','2175900501','Mexican','221 E Lincoln St., St. Joseph, Illinois','eltororestaurante.com'),(265,'El Toro at the Fields','2179034002','Mexican','3401 Fields South Dr., Champaign, Illinois','eltororestaurante.com'),(266,'El Toro Bravo','2173517024','Mexican','2561 W Springfield Ave, Champaign, Illinois','eltororestaurante.com'),(267,'El Toro II','2173787807','Mexican','723 S Neil St, Champaign, Illinois','eltororestaurante.com'),(268,'Empanadas House','2179541871','Mexican','404 E Green St., Champaign, Illinois','theempanadashouse.com'),(269,'Fernando\'s','2172550210','Mexican','612 E Daniel St, Champaign, Illinois','fernandosfoodtruck.weebly.com'),(270,'Fiesta Cafe','2173525902','Mexican','216 S First St, Champaign, Illinois','fiestacafe.com'),(271,'Huaraches Moroleon','2173446772','Mexican','805 S Philo Rd., Urbana, Illinois',NULL),(272,'Juanito\'s Tacos','2176211394','Mexican','1600 N Market St, Champaign, Illinois',NULL),(273,'La Bamba Mexican Restaurant','2173556600','Mexican','1905 Glenn Park Dr., Champaign, Illinois','labambaburritos.com'),(274,'La Cascuda Mexican Grill','2175433131','Mexican','1063 E Columbia St, Arthur, Illinois',NULL),(275,'La Mixteca','2175521544','Mexican','510 N Cunningham Ave, Urbana, Illinois','lamixtecarestaurant.com'),(276,'Las Maria\'s Mexican Restaurant','2177622800','Mexican','112 S Charter St, Monticello, Illinois','mariasauthenticmexicanrestaurante.com'),(277,'Los Zarapes','2175863735','Mexican','804 Eastwood Dr., Mahomet, Illinois',NULL),(278,'Maize Mexican Grill','2173553611','Mexican','100 N Chestnut, Champaign, Illinois','maizemexicangrill.com'),(279,'Maize Mexican Grill','2173556400','Mexican','60 E Green St., Champaign, Illinois','maizemexicangrill.com'),(280,'Mas Amigos','2173562100','Mexican','705 N Neil St, Champaign, Illinois',NULL),(281,'Mi Veracruz Mexican Grill','2175997001','Mexican','208 N Parke St, Tuscola, Illinois',NULL),(282,'Moe\'s Southwest Grill','2173526637','Mexican','2041 S Neil St, Champaign, Illinois','moes.com'),(283,'Sol Del Mar Mexican Bar & Grill','2175991012','Mexican','105 W Southline Rd., Tuscola, Illinois',NULL),(284,'Super Taco','2173558226','Mexican','519 W Town Center Blvd., Champaign, Illinois','champaignsupertaco.com'),(285,'Taco Loco','2173558226','Mexican','523 W Town Center Blvd., Champaign, Illinois','tacoloco.com'),(286,'Tienda Guatemala','2173442770','Mexican','408-B N Race Street, Urbana, Illinois',NULL),(287,'Toro Loco','2173447855','Mexican','1601 N Cunningham Ave, Urbana, Illinois','eltororestaurante.com'),(288,'Filippo\'s of Mahomet','2175864657','Pizza','2012-A Tin Cup Rd., Mahomet, Illinois','filipposofmahomet.com'),(289,'Filippo\'s of Monticello','2177622921','Pizza','200 S Market St, Monticello, Illinois',NULL),(290,'Fire House Chicago Style','2178929990','Pizza','326 S Century Boulevard, Rantoul, Illinois',NULL),(291,'Garcia\'s Pizza in a Pan','2173521212','Pizza','313 N Mattis Ave, Champaign, Illinois','garciaspizzainapanchampaign.com'),(292,'Itsa Pizza','2175433531','Pizza','507 N Vine St, Arthur, Illinois','arthuritsapizza.com'),(293,'Joe\'s Pizza','2172536500','Pizza','102 W Sale St, Tuscola, Illinois',NULL),(294,'Jupiter\'s At The Crossing','2173668300','Pizza','2511 Village Green Pl, Champaign, Illinois','jupitersatcrossing.com'),(295,'Jupiter\'s Pizzeria and Billiards','2173985988','Pizza','39 Main St., Champaign, Illinois','jupiterspizza.com'),(296,'Manolo\'s Pizza & Empanadas','2173650110','Pizza','1115 W Oregon St., Urbana, Illinois','manolospizza.com'),(297,'Old Orchard Lanes','2173595281','Pizza','901 N Dunlap Ave, Savoy, Illinois','oldorchardinc.com'),(298,'Padano\'s Pizza Co.','2174699016','Pizza','209 N Main St, St. Joseph, Illinois',NULL),(299,'Papa Del\'s','2173597700','Pizza','1201 N Neil St, Champaign, Illinois','papadels.com'),(300,'Pie\'s the Limit','2176075263','Pizza','2510 Village Green Pl, Champaign, Illinois','piesthelimit.com'),(301,'Pizza Roma','2178976776','Pizza','106 W Division St, Fisher, Illinois',NULL),(302,'Pizzeria Antica','2175304137','Pizza','10 E Chester St., Champaign, Illinois','anticachampaign.com'),(303,'Rantoul Pizza Pub','2178934974','Pizza','114 E Congress Ave, Rantoul, Illinois',NULL),(304,'Vinny\'s East Coast Pizzeria','2173554500','Pizza','50 E Green St, Champaign, Illinois','vinnyseastcoastpizzeria.com'),(305,'25 O\'clock Brewing Company',NULL,'Pubs & Bars','208 W Griggs St, Urbana, Illinois',NULL),(306,'51 Main','2175906007','Pubs & Bars','190 6 W Bradley Avenue, Champaign, Illinois','51maincu.com'),(307,'Analog',NULL,'Pubs & Bars','129 N Race St, Urbana, Illinois','analogurbana.com'),(308,'Barrelhouse 34','2172394677','Pubs & Bars','34 E Main St, Champaign, Illinois','barrelhouse34.com'),(309,'Bentley\'s Pub','2173597977','Pubs & Bars','419 N Neil St, Champaign, Illinois','bentleyspub.com'),(310,'Blackbird','2175311453','Pubs & Bars','119 W Main St., Urbana, Illinois','blackbirdurbana.com'),(311,'Blind Pig Brewery','2173985133','Pubs & Bars','120 N Neil St, Champaign, Illinois','blindpigco.com'),(312,'Blind Pig Co.','2173981532','Pubs & Bars','120 N Walnut Street, Champaign, Illinois','blindpigco.com'),(313,'Brass Rail','2173527512','Pubs & Bars','15 E University Ave, Champaign, Illinois',NULL),(314,'Bridget\'s Blarney Stone','2175649994','Pubs & Bars','207 Chapin, Ivesdale, Illinois',NULL),(315,'Buford\'s','2175982313','Pubs & Bars','109 E Market Street, Sadorus, Illinois',NULL),(316,'Central Tavern','2176437300','Pubs & Bars','403 Main St, Thomasboro, Illinois',NULL),(317,'Collective Pour','2176075292','Pubs & Bars','340 N Neil St., Champaign, Illinois','collectivepour.com'),(318,'Crude Wine Bar','2179541448','Pubs & Bars','116 N Walnut St., Champaign, Illinois','crudowine.com'),(319,'Duly\'s Sports Bar','2175864061','Pubs & Bars','116W Washington, Philo, Illinois',NULL),(320,'East End Tavern','2177629087','Pubs & Bars','116 E Washington St, Monticello, Illinois',NULL),(321,'Game On Sports Tavern','2175982955','Pubs & Bars','121 E Market, Sadorus, Illinois',NULL),(322,'Green Street Cafe','2173676844','Pubs & Bars','35 E Green St, Champaign, Illinois',NULL),(323,'Hub Sports Bar','2172397080','Pubs & Bars','601 S First Street, Ste. 10 2, Champaign, Illinois',NULL),(324,'Huber\'s','2173520606','Pubs & Bars','1312 W Church St, Champaign, Illinois',NULL),(325,'Illini Inn','2179541465','Pubs & Bars','901 S Fourth St., Champaign, Illinois','theilliniinn.com'),(326,'Iron Post','2173377678','Pubs & Bars','120 S Race St, Urbana, Illinois',NULL),(327,'Ivesdale Tavern Inc.','2175642206','Pubs & Bars','203 Chapin, Ivesdale, Illinois',NULL),(328,'Jack\'s Tavern','2174855706','Pubs & Bars','106 E Main St., Tolono, Illinois',NULL),(329,'Kam\'s','2173373300','Pubs & Bars','618 E Daniel St., Champaign, Illinois',NULL),(330,'Lincoln Street Lounge','2178343010','Pubs & Bars','112 S Lincoln, PO. Box 290, Broadlands, Illinois',NULL),(331,'Loose Cobra','2174858201','Pubs & Bars','113 E Main, Tolono, Illinois','loosecobra.com'),(332,'Lu & Denny\'s','2174858201','Pubs & Bars','105 N Long, Tolono, Illinois',NULL),(333,'Main Street Pub','2177629414','Pubs & Bars','113 W Main St, Monticello, Illinois',NULL),(334,'North Forty','2175687721','Pubs & Bars','208 S Main St, Gifford, IL 61847',NULL),(335,'Office II','2173986332','Pubs & Bars','302 S Country Fair Dr., Champaign, Illinois',NULL),(336,'Pia\'s Sports Bar & Grill','2173511993','Pubs & Bars','1609 W Springfield Ave, Champaign, Illinois','piassportspub.com'),(337,'Pipa\'s Pub','2173560888','Pubs & Bars','604 S Country Fair Dr., Champaign, Illinois',NULL),(338,'Pour Bros. Craft Taproom','2179541881','Pubs & Bars','40 E University Ave, Champaign, Illinois','pourbroschampaign.com'),(339,'Punch','2175312800','Pubs & Bars','217 N Neil St, Champaign, Illinois',NULL),(340,'Quality Bar','2173593425','Pubs & Bars','110 N Neil St, Champaign, Illinois',NULL),(341,'Red Lion','2173679915','Pubs & Bars','211 E Green St, Champaign, Illinois','redlionchampaign.com'),(342,'Riggs Beer Company','2177185345','Pubs & Bars','1901 S High Cross Road, Urbana, Illinois','riggsbeer.com'),(343,'Rose Bowl Tavern','2173677031','Pubs & Bars','106 N Race St, Urbana, Illinois',NULL),(344,'Route 45 Wayside','2178672000','Pubs & Bars','101 S Chestnut St, Pesotum, IL 61863',NULL),(345,'Senator\'s Inn & Pub','2173520002','Pubs & Bars','801 N Dunlap, Savoy, Illinois','senatorsinn.com'),(346,'Sidney Saloon','2176883161','Pubs & Bars','204 S David St, Sidney, Illinois','sidneysaloon.net'),(347,'Soma','2173597662','Pubs & Bars','320 N Neil St., Champaign, Illinois',NULL),(348,'Star Karaoke','2173563333','Pubs & Bars','1503 Lyndhurst Alley, Savoy, Illinois','starkaraokeuiuc.com'),(349,'T & T Tavern','2178939531','Pubs & Bars','101 N Century Blvd, Rantoul, Illinois',NULL),(350,'The Homestead','2175687554','Pubs & Bars','306 S Main, Gifford, Illinois',NULL),(351,'The Icehouse','2173985760','Pubs & Bars','703 N Prospect Ave, Champaign, Illinois',NULL),(352,'Triptych Brewery','7792323376','Pubs & Bars','1703 Woodfield Dr, Savoy, Illinois','triptychbrewing.com'),(353,'Tumble Inn','2173560012','Pubs & Bars','302 S Neil St., Champaign, Illinois',NULL),(354,'Brown Bag Deli','2177629221','Sandwiches','212 W Washington, Monticello, Illinois','monticellobrownbag.com'),(355,'Cheese & Crackers','2176158531','Sandwiches','1715 W Kirby Ave, Champaign, Illinois','crackerscheese.com'),(356,'Fat Sandwich Company','2173285035','Sandwiches','502 E John St, Champaign, Illinois','fatsandwichchampaignil.com'),(357,'Main Street Belly Deli','2178967651','Sandwiches','118 S Main St., Homer, Illinois','mainstreetbellydeli.com'),(358,'Po Boy\'s','2173672255','Sandwiches','202 E University Ave, Urbana, Illinois','poboysurbana.com'),(359,'Alexander\'s Steakhouse','2173591789','Steakhouse','202 W Anthony Dr, Champaign, Illinois','alexanderssteak.com'),(360,'Hamilton Walker\'s','2173500363','Steakhouse','201 N Neil St, Champaign, Illinois','hamiltonwalkers.com'),(361,'Longbranch','2175687722','Steakhouse','310 S Main St, Gifford, Illinois',NULL),(362,'The Ribeye','2173519115','Steakhouse','1701 S Neil St, Champaign, Illinois','theribeyerestaurant.org');
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
  `Phone` varchar(10) DEFAULT NULL,
  `Website_link` varchar(1000) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`RSO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RSO`
--

LOCK TABLES `RSO` WRITE;
/*!40000 ALTER TABLE `RSO` DISABLE KEYS */;
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
  PRIMARY KEY (`SSM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School_Social_Media`
--

LOCK TABLES `School_Social_Media` WRITE;
/*!40000 ALTER TABLE `School_Social_Media` DISABLE KEYS */;
INSERT INTO `School_Social_Media` VALUES (1,'Women & Gender in Global Perspectives\n','https://www.facebook.com/pages/WGGP-Women-and-Gender-in-Global-Perspectives/325762682466\n','https://www.instagram.com/wggpillinois/\n','https://www.linkedin.com/school/women-and-gender-in-global-perspectives-program/\n','https://twitter.com/wggpIllinois\n',NULL,NULL,NULL,NULL),(2,'Department of Aerospace Engineering\n','https://www.facebook.com/AEatIllinois\n','https://www.instagram.com/aeatillinois/\n','https://www.linkedin.com/groups/4576648/\n','https://twitter.com/AEatIllinois\n',NULL,'https://www.youtube.com/channel/UCPcVqWBxAIX_-UbkZj5YyiA\n',NULL,NULL),(3,'Department of Agricultural and Consumer Economics\n','https://www.facebook.com/ACEatIllinois/\n','https://www.instagram.com/aceatuiuc/?hl=en\n','https://www.linkedin.com/company/department-of-agricultural-and-consumer-economics/\n','https://twitter.com/search?q=ACEatIL&src=typd&lang=en\n',NULL,NULL,NULL,NULL),(4,'College of Agricultural, Consumer and Environmental Sciences\n','https://www.facebook.com/UofICollegeofACES/\n','http://instagram.com/acesillinois\n','http://www.linkedin.com/groups/University-Illinois-College-ACES-4861656?trk=my_groups-b-grp-v\n','https://twitter.com/ACESIllinois\n',NULL,NULL,NULL,NULL),(5,'College of Applied Health Sciences\n','http://www.facebook.com/pages/College-of-Applied-Health-Sciences-at-Illinois/154809127863097\n','https://www.instagram.com/ahsillinois/\n',NULL,'https://twitter.com/ahsillinois\n',NULL,'https://www.youtube.com/channel/UC0_QTv0Bz-hMp2lcESN84fA\n',NULL,NULL),(6,'University of Illinois Bands\n','https://www.facebook.com/UniversityofIllinoisBands\n','https://www.instagram.com/illinois_bands/\n',NULL,'https://twitter.com/IllinoisBands\n',NULL,NULL,NULL,NULL),(7,'Beckman Institute for Advanced Science and Technology\n','http://facebook.com/BeckmanInstitute\n','https://www.instagram.com/beckmaninstitute/\n','https://www.linkedin.com/company/beckman-institute-at-illinois/\n','http://twitter.com/BeckmanInst\n',NULL,'http://www.youtube.com/beckmaninstitute\n',NULL,NULL),(8,'Department of Bioengineering\n','https://www.facebook.com/pages/UI-Department-of-Bioengineering/470351476358854\n','https://www.instagram.com/illinoisbioe/\n','https://www.linkedin.com/company/illinoisbioe/about/\n','https://twitter.com/BIOENGatIL\n',NULL,'https://www.youtube.com/channel/UCYX8an1Vsn9af9ZE5yWkvCw?view_as=subscriber\n',NULL,NULL),(9,'Gies College of Business\n','https://www.facebook.com/giesbusiness/\n','https://www.instagram.com/giesbusiness/\n','https://www.linkedin.com/school/15102067/\n','https://twitter.com/giesbusiness\n',NULL,'http://www.youtube.com/user/illinoisbusiness\n',NULL,NULL),(10,'Department of Campus Recreation\n','https://www.facebook.com/uoficampusrec\n','http://instagram.com/illinoiscampusrec\n','https://www.linkedin.com/groups/4737236/\n','http://twitter.com/IlliniCampusRec\n',NULL,'http://www.youtube.com/user/UICampusRec\n',NULL,NULL),(11,'Cancer Center at Illinois\n','https://www.facebook.com/CancerCenterIL\n',NULL,NULL,'https://twitter.com/CancerCenterIL?lang=en\n',NULL,NULL,NULL,NULL),(12,'Carl R. Woese Institute for Genomic Biology\n','https://www.facebook.com/IGB.Illinois\n','https://www.instagram.com/igbillinois/\n',NULL,'https://twitter.com/@IGBIllinois\n',NULL,'http://www.youtube.com/user/IGBIllinois\n',NULL,NULL),(13,'Carle Illinois College of Medicine\n','https://www.facebook.com/illinoismed/\n','https://www.instagram.com/carleillinoismed/\n','https://www.linkedin.com/company/illinoismed/\n','https://twitter.com/illinoismed?lang=en\n',NULL,NULL,NULL,NULL),(14,'Center for Social & Behavioral Science\n',NULL,NULL,NULL,'https://twitter.com/CSBS_Illinois\n',NULL,NULL,NULL,NULL),(15,'Chemical Sciences Career Services Office\n','https://www.facebook.com/SCSCareersIllinois\n','https://www.instagram.com/scscareersuiuc/\n','https://www.linkedin.com/groups/2177109/\n','https://twitter.com/SCSCareersUIUC\n',NULL,'https://www.youtube.com/channel/UCYUsz-FtjRVpOB67MxXK81A\n',NULL,NULL),(16,'School of Chemical Sciences\n','https://www.facebook.com/scsadvising\n','https://www.instagram.com/scsadvising/\n',NULL,'https://twitter.com/SCSAdvising\n',NULL,NULL,NULL,NULL),(17,'Chemical and Biomolecular Engineering\n','https://www.facebook.com/ChBEIllinois\n','https://www.instagram.com/chbeillinois/\n','https://www.linkedin.com/company/chbeillinois/\n','https://twitter.com/ChBEIllinois\n',NULL,'https://www.youtube.com/channel/UC0_aFW0nmVu1PGxOdTxGZ9A\n',NULL,NULL),(18,'Cooperative Extension Service\n','http://facebook.com/UIExtension\n','https://www.instagram.com/ilextension/\n',NULL,'https://twitter.com/ILextension\n',NULL,'http://www.youtube.com/UIExtension\n',NULL,NULL),(19,'Coordinated Science Lab\n','https://www.facebook.com/CoordinatedScienceLab\n','https://www.instagram.com/csl_illinois/\n',NULL,'https://twitter.com/CSL_Illinois\n',NULL,NULL,NULL,NULL),(20,'Office of Corporate Relations\n',NULL,NULL,'https://www.linkedin.com/company/office-of-corporate-relations/\n','https://twitter.com/CorporateAtUofI\n',NULL,NULL,NULL,NULL),(21,'College of Education\n','https://www.facebook.com/educationatillinois?ref=ts\n',NULL,'https://www.linkedin.com/in/educationatillinois/\n','http://twitter.com/edILLINOIS\n',NULL,'https://www.youtube.com/educationatillinois\n',NULL,NULL),(22,'Department of Electrical and Computer Engineering\n','http://www.facebook.com/pages/ECE-Illinois/103039096438861\n','http://instagram.com/eceillinois\n','http://www.linkedin.com/groups?home=&gid=3693261&trk=anet_ug_hm\n','http://twitter.com/eceILLINOIS\n',NULL,'http://www.youtube.com/user/ECEILLINOIS\n',NULL,NULL),(23,'Grainger College of Engineering\n','https://www.facebook.com/uofigrainger/\n','https://www.instagram.com/uofigrainger/\n','https://www.linkedin.com/school/uofigrainger\n','https://twitter.com/uofigrainger\n',NULL,'https://www.youtube.com/channel/UCRjvSnTB2tOqfO5AXvOHGGw\n',NULL,NULL),(24,'Facilities and Services Office\n','http://www.facebook.com/UniversityOfIllinoisFacilitiesServices\n','https://www.instagram.com/uofifs/\n',NULL,'http://twitter.com/UofIFS\n',NULL,'http://www.youtube.com/UofIFS\n',NULL,NULL),(25,'College of Fine and Applied Arts\n','http://facebook.com/FAAatillinois\n','http://instagram.com/faaatillinois\n',NULL,'http://twitter.com/FAAatillinois\n',NULL,'https://www.youtube.com/user/FineandAppliedArts\n','http://www.pinterest.com/FAAatillinois/\n',NULL),(26,'Global Education & Training\n',NULL,'https://www.instagram.com/getillinois/\n',NULL,'https://twitter.com/GETillinois\n',NULL,NULL,NULL,'https://www.weibo.com/p/1005056063093651\n'),(27,'Graduate College\n','https://www.facebook.com/GradCollegeIllinois\n','https://www.instagram.com/gradcollegeillinois/\n','https://www.linkedin.com/company/28629414/admin/\n','https://twitter.com/GradCollegeIL\n',NULL,'http://www.youtube.com/user/GradCollegeIllinois\n',NULL,NULL),(28,'Health Care Engineering Systems Center\n','https://www.facebook.com/hcescillinois\n',NULL,'https://www.linkedin.com/company/health-care-engineering-systems-center/\n','https://twitter.com/ILHealthEng\n',NULL,'https://www.youtube.com/channel/UCejSmj8KZlX3mIkNyZWpqWw\n',NULL,NULL),(29,'Department of History\n','https://www.facebook.com/HistoryatIL\n',NULL,NULL,'https://twitter.com/historyatil?\n',NULL,NULL,NULL,NULL),(30,'Housing Division\n','http://www.facebook.com/pages/Champaign-IL/University-Housing/77410443180?ref=search\n','https://www.instagram.com/illinihousing/\n',NULL,'https://twitter.com/illinihousing\n',NULL,'https://www.youtube.com/channel/UCTfboue7_GNLA4bB78O69fw\n',NULL,NULL),(31,'Department of Human Development and Family Studies\n','https://www.facebook.com/HDFSIllinois\n','https://www.instagram.com/hdfsillinois/\n',NULL,NULL,NULL,'https://www.youtube.com/channel/UCdFft68xNhoXG3GR2LMT5_g\n',NULL,NULL),(32,'Illinois Human Resources\n',NULL,NULL,NULL,'https://twitter.com/IllinoisHR\n',NULL,NULL,NULL,NULL),(33,'Illini Union\n','http://www.facebook.com/illiniunion\n','http://www.instagram.com/IlliniUnion\n',NULL,'https://twitter.com/IlliniUnion\n',NULL,NULL,NULL,NULL),(34,'Illinois Abroad and Global Exchange (Study Abroad)\n','https://www.facebook.com/IllinoisAbroad/\n','https://www.instagram.com/illinoisabroad/\n',NULL,'https://twitter.com/IllinoisAbroad\n',NULL,NULL,NULL,NULL),(35,'Illinois International\n','https://www.facebook.com/pages/Illinois-International/284226402015\n','http://instagram.com/illinoisinternational\n',NULL,'https://twitter.com/Illinois_Intl\n',NULL,'http://www.youtube.com/channel/UCVX1RA4R0wWlBiMIVQVqeNA\n',NULL,'http://e.weibo.com/uiuc2012?ref=http://ilint.illinois.edu/\n'),(36,'Illinois Leadership Center\n','https://www.facebook.com/IllinoisLeadershipCenter/\n','https://www.instagram.com/illinoisleadershipcenter/\n','https://www.linkedin.com/grps/Illinois-Leadership-Center-University-Illinois-4082277?_l=en_US\n','https://twitter.com/il_leadership\n',NULL,NULL,NULL,NULL),(37,'Illinois Natural History Survey\n','https://www.facebook.com/IllinoisNaturalHistorySurvey\n','https://www.instagram.com/inhsillinois/\n',NULL,'https://twitter.com/INHSillinois\n',NULL,NULL,NULL,NULL),(38,'Illinois State Archaeological Survey\n','https://www.facebook.com/IllinoisStateArchaeologicalSurvey\n',NULL,NULL,'https://twitter.com/ILStateArch\n',NULL,NULL,NULL,NULL),(39,'Illinois State Water Survey\n','https://www.facebook.com/IllinoisStateWaterSurvey\n',NULL,NULL,'https://twitter.com/watersurvey\n',NULL,NULL,NULL,NULL),(40,'Illinois Sustainable Technology Center\n','https://www.facebook.com/pages/Illinois-Sustainable-Technology-Center/138680452859766\n',NULL,NULL,'https://twitter.com/ISTCatUIUC\n',NULL,'http://www.youtube.com/user/4ISTC\n',NULL,NULL),(41,'Department of Industrial and Enterprise Systems Engineering\n','https://www.facebook.com/illinoisise\n',NULL,'https://www.linkedin.com/groups/3647912\n','https://twitter.com/IllinoisISE\n',NULL,'https://www.youtube.com/channel/UCiS0Hfqt0arpM9w1BqycwIg\n',NULL,NULL),(42,'School of Information Sciences\n','http://www.facebook.com/iSchoolUI\n','https://www.instagram.com/ischoolui/\n','http://www.linkedin.com/groups/675727\n','http://twitter.com/iSchoolUI\n',NULL,'http://www.youtube.com/user/GSLISatIllinois\n',NULL,NULL),(43,'Information Trust Institute\n','http://www.facebook.com/InformationTrustInstitute\n',NULL,'https://www.linkedin.com/company/information-trust-institute/\n',NULL,NULL,NULL,NULL,NULL),(44,'Interdisciplinary Health Sciences Institute\n','https://www.facebook.com/IllinoisIHSI/\n',NULL,NULL,'https://twitter.com/IllinoisIHSI\n',NULL,NULL,NULL,NULL),(45,'International Student and Scholar Services\n','https://www.facebook.com/ISSSillinois/\n','https://www.instagram.com/isssillinois/\n',NULL,'https://twitter.com/ISSSIllinois\n',NULL,'http://www.youtube.com/user/ISSSatIllinois\n',NULL,NULL),(46,'Krannert Center for the Performing Arts\n','http://www.facebook.com/KrannertCenter?ref=ts\n','https://www.instagram.com/krannertcenter/\n',NULL,'http://twitter.com/KrannertCenter\n',NULL,'http://www.youtube.com/krannertcenter\n',NULL,NULL),(47,'School of Labor and Employment Relations\n','https://www.facebook.com/LER.Illinois/\n','https://www.instagram.com/ler_illinois/\n','https://www.linkedin.com/school/university-of-illinois-at-urbana-champaign-school-of-labor-and-employment-relations/\n','https://twitter.com/LER_Illinois\n',NULL,NULL,NULL,NULL),(48,'Law\n','https://www.facebook.com/uillinoislaw\n','https://www.instagram.com/uillinoislaw/\n','https://www.linkedin.com/school/university-of-illinois-college-of-law/\n','http://twitter.com/UIllinoisLaw\n',NULL,'https://www.youtube.com/user/UofIllinoisLaw\n',NULL,NULL),(49,'College of Liberal Arts & Sciences\n','https://www.facebook.com/lasillinois/\n','https://www.instagram.com/lasillinois/\n','https://www.linkedin.com/school/23698254/admin/\n','https://twitter.com/LASillinois\n',NULL,'https://www.youtube.com/user/CollegeOfLAS\n',NULL,NULL),(50,'Library\n','https://www.facebook.com/universitylibrary/\n','https://instagram.com/uillinoislibrary/\n',NULL,'https://twitter.com/IllinoisLibrary\n',NULL,NULL,NULL,NULL),(51,'Marching Illini\n','https://www.facebook.com/MarchingIllini\n','https://www.instagram.com/marchingillini/\n',NULL,'https://twitter.com/MarchingIllini\n',NULL,'https://www.youtube.com/c/MarchingIllini\n',NULL,NULL),(52,'College of Media\n','http://www.facebook.com/collegeofmedia\n','https://instagram.com/MediaAtIllinois/\n','https://www.linkedin.com/groups/2322725/\n','https://twitter.com/MediaAtIllinois\n',NULL,'https://www.youtube.com/channel/UCzaFjZILHXRLM0cXLLWOwMw\n',NULL,NULL),(53,'Metropolitan Food & Environmental Systems\n','https://www.facebook.com/MFSTIllinois/\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'Micro and Nanotechnology Laboratory\n','https://www.facebook.com/holonyaklabIllinois\n','https://www.instagram.com/holonyaklabillinois/\n','https://www.linkedin.com/company/19204043\n',NULL,NULL,'https://www.youtube.com/channel/UCCfbdRZF43gSYz1B16N-32w?view_as=subscriber\n',NULL,NULL),(55,'School of Molecular and Cellular Biology\n','https://www.facebook.com/MCBIllinois/about/\n','https://www.instagram.com/mcb_illinois/?hl=en\n','https://www.linkedin.com/company/school-of-molecular-and-cellular-biology-university-of-illinois-urbana-champaign/\n','https://twitter.com/MCB_Illinois?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor\n',NULL,NULL,NULL,NULL),(56,'National Center for Supercomputing Applications (NCSA)\n','http://www.facebook.com/NCSAatIllinois/\n','https://www.instagram.com/ncsaatillinois/\n','http://www.linkedin.com/company/1362?trk=tyah&trkInfo=tas%3ANational%20Center%20for%20Supercomputing%2Cidx%3A1-1-1\n','http://www.twitter.com/NCSAatIllinois/\n',NULL,'http://www.youtube.com/NCSAatIllinois\n',NULL,NULL),(57,'Department of Nuclear, Plasma, and Radiological Engineering\n','https://www.facebook.com/pages/NPRE-at-Illinois/134532773262689\n',NULL,'https://www.linkedin.com/groups/4510481/\n','https://twitter.com/illinoisNPRE\n',NULL,'https://www.youtube.com/channel/UCXpvzEULjFkHEpWVjh9U9kA\n',NULL,NULL),(58,'Nutritional Sciences\n','https://www.facebook.com/DNSatUofI\n',NULL,'https://www.linkedin.com/in/dnsnutrsci/\n','https://twitter.com/DNSatUofI\n',NULL,NULL,NULL,NULL),(59,'Parent Programs Office, Illini Union\n','https://www.facebook.com/IlliniPFPO\n',NULL,NULL,'https://twitter.com/IlliniPFPO\n',NULL,NULL,NULL,NULL),(60,'Department of Physics\n','http://www.facebook.com/PhysicsIllinois\n','https://www.instagram.com/illinois_physics/?hl=en\n',NULL,'http://twitter.com/PhysicsIllinois\n',NULL,'https://www.youtube.com/channel/UCyEFVTccWu-G4gSdh7Z_NfA\n',NULL,NULL),(61,'Department of Political Science\n','https://www.facebook.com/pages/University-of-Illinois-Department-of-Political-Science/97043913461\n','https://www.instagram.com/illinoispolsci/\n',NULL,'https://twitter.com/illinoispolsci\n',NULL,NULL,NULL,NULL),(62,'Prairie Research Institute\n','https://www.facebook.com/pages/Prairie-Research-Institute/332356300041\n',NULL,NULL,'http://twitter.com/PrairieResInst\n',NULL,NULL,NULL,NULL),(63,'Scholarly Commons in the Main Library\n','https://www.facebook.com/Scholarly-Commons-1445263205541768/\n',NULL,NULL,'http://twitter.com/ScholCommons\n',NULL,NULL,NULL,NULL),(64,'School of Molecular and Cellular Biology Advising Program\n','https://www.facebook.com/MCBAdvisingProgram\n','https://www.instagram.com/mcbadvising/\n',NULL,'https://twitter.com/MCBAdvising\n',NULL,NULL,NULL,NULL),(65,'School of Social Work\n','https://www.facebook.com/socialwork.illinois\n','http://instagram.com/illinois_socialwork#\n','https://www.linkedin.com/school/socialwork-illinois\n','https://twitter.com/UofISocialWork\n',NULL,NULL,NULL,NULL),(66,'Department of Spanish and Portuguese\n','https://www.facebook.com/spanishadvisinguiuc\n','https://www.instagram.com/spanport_uiuc/\n',NULL,'https://twitter.com/SpanPort_UIUC\n',NULL,NULL,NULL,NULL),(67,'Institute for Sustainability, Energy, and Environment\n','https://www.facebook.com/iSEEatUofI/\n',NULL,NULL,'https://twitter.com/sustainILLINOIS\n',NULL,'https://www.youtube.com/channel/UC-rgdCPlnUMoziDzw4pEXQw\n',NULL,NULL),(68,'Tax School\n','https://www.facebook.com/taxschool/\n','https://www.instagram.com/uitaxschool/\n','https://www.linkedin.com/company/3250572\n','https://twitter.com/uofitaxschool\n',NULL,NULL,NULL,NULL),(69,'Technology Entrepreneur Center\n','https://www.facebook.com/technologyentrepreneurcenter\n','https://www.instagram.com/tecenter/\n','http://us.linkedin.com/company/technology-entrepreneur-center\n','https://twitter.com/tecenter?lang=en\n',NULL,NULL,NULL,NULL),(70,'Technology Services at Illinois\n','https://www.facebook.com/TechServicesIL\n',NULL,NULL,'http://twitter.com/TechServicesIL\n',NULL,NULL,NULL,NULL),(71,'Office of Undergraduate Admissions\n','http://www.facebook.com/pages/Urbana-IL/University-of-Illinois-Admissions/238649700085\n','http://instagram.com/illiniview\n',NULL,'http://twitter.com/uofiadmissions\n',NULL,'http://www.youtube.com/user/IllinoisAdmissions\n',NULL,NULL),(72,'Office for University Relations\n','https://www.facebook.com/uillinois.edu/\n',NULL,'https://www.linkedin.com/school/university-of-illinois-system\n','https://twitter.com/uofilsystem\n',NULL,'https://www.youtube.com/channel/UCcJE64pTyjJw_CYy8EVlNbQ\n',NULL,NULL),(73,'University of Illinois Alumni Association\n','https://www.facebook.com/IllinoisAlumni\n','https://www.instagram.com/illinois_alumni/\n','https://www.linkedin.com/company/university-of-illinois-alumni-association/\n','https://twitter.com/Illinois_Alumni\n',NULL,NULL,NULL,NULL),(74,'College of Veterinary Medicine\n','http://www.facebook.com/VetMed.Illinois\n','https://www.instagram.com/vetmedillinois/\n','https://www.linkedin.com/showcase/22343769/\n','https://twitter.com/VetMedIllinois\n',NULL,'http://www.youtube.com/IllinoisVetMed\n',NULL,NULL),(75,'Office of the Vice Chancellor for Diversity\n','https://www.facebook.com/OVCDEI.Illinois\n','https://www.instagram.com/ovcdei_illinois/\n',NULL,'https://twitter.com/OVCDEI_Illinois\n',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `School_Social_Media` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `Users` VALUES (1,'Mr. Super User','superuser','1234su'),(2,'Sir Normal User','normuser','norm');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 14:58:40
