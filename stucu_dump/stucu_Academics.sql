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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-05 23:08:28
