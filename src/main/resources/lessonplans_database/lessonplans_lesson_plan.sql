-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: lessonplans
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lesson_plan`
--

DROP TABLE IF EXISTS `lesson_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `date_added` date NOT NULL,
  `subscription_id` int NOT NULL,
  `lesson_time` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `age` tinyint DEFAULT NULL,
  `speaking_amount` varchar(20) DEFAULT NULL,
  `listening` tinyint NOT NULL DEFAULT '0',
  `vocabulary` tinyint NOT NULL DEFAULT '0',
  `reading` tinyint NOT NULL DEFAULT '0',
  `writing` tinyint NOT NULL DEFAULT '0',
  `video` tinyint NOT NULL DEFAULT '0',
  `song` tinyint NOT NULL DEFAULT '0',
  `fun_class` tinyint NOT NULL DEFAULT '0',
  `games` tinyint NOT NULL DEFAULT '0',
  `jigsaw` tinyint NOT NULL DEFAULT '0',
  `translation` tinyint NOT NULL DEFAULT '0',
  `preparation_time` varchar(30) NOT NULL,
  `no_printed_materials_needed` tinyint NOT NULL DEFAULT '0',
  `picture_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_LESSON_PLAN--PICTURE_idx` (`picture_id`),
  KEY `FK_LESSON_PLAN--SUBSCRIPTION_idx` (`subscription_id`),
  CONSTRAINT `FK_LESSON_PLAN--PICTURE` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `FK_LESSON_PLAN--SUBSCRIPTION` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_plan`
--

LOCK TABLES `lesson_plan` WRITE;
/*!40000 ALTER TABLE `lesson_plan` DISABLE KEYS */;
INSERT INTO `lesson_plan` VALUES (44,'Famous people','2021-08-15',7,'SIXTY','GENERAL',10,NULL,1,0,0,0,1,0,0,0,0,0,'FIVE',1,63),(45,'Driverless Cars','2021-08-15',4,'NINETY','GENERAL',10,NULL,1,1,0,0,1,0,0,0,0,0,'TEN',1,71),(46,'Electric Car Conspiracy','2021-08-15',2,'SIXTY','GENERAL',10,NULL,0,1,0,1,1,0,0,0,1,0,'FIVE',1,65),(47,'Environment Strike','2021-08-15',8,'SIXTY','GENERAL',10,NULL,0,1,0,0,1,1,0,0,1,0,'FIVE',0,64),(48,'Olympic Village','2021-08-15',7,'SIXTY','GENERAL',10,NULL,0,1,0,0,0,0,0,0,0,0,'FIVE',0,74),(49,'Olympic Village','2021-08-15',4,'SIXTY','GENERAL',10,NULL,0,1,0,0,0,0,0,0,0,0,'FIVE',0,74),(50,'Olympic Village','2021-08-15',3,'SIXTY','GENERAL',10,NULL,0,1,0,0,0,0,0,0,0,0,'FIVE',0,74),(51,'Daredevils','2021-08-15',4,'SIXTY','GENERAL',0,'SPEAKING_ONLY',0,0,0,0,0,0,0,0,0,0,'FIVE',1,69),(52,'Phones','2021-08-15',5,'NINETY','GENERAL',0,NULL,0,1,0,0,0,0,0,0,0,0,'FIVE',1,72),(53,'Beach Activities','2021-08-22',4,'SIXTY','GENERAL',0,NULL,1,1,0,0,1,0,0,0,0,0,'FIVE',1,68),(54,'Artifical Intelligence','2021-08-23',5,'SIXTY','GENERAL',0,NULL,1,1,0,0,1,0,0,0,0,0,'FIVE',1,73);
/*!40000 ALTER TABLE `lesson_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 20:40:17
