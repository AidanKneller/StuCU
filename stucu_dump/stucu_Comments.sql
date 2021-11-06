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
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-05 23:08:28
