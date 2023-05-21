-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: lessonplans_test
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
-- Table structure for table `lesson_plan_grammar`
--

DROP TABLE IF EXISTS `lesson_plan_grammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_plan_grammar` (
  `lesson_plan_id` int NOT NULL,
  `grammar_id` int NOT NULL,
  PRIMARY KEY (`lesson_plan_id`,`grammar_id`),
  KEY `FK_LESSON_PLAN_GRAMMAR--GRAMMAR_idx` (`grammar_id`),
  CONSTRAINT `FK_LESSON_PLAN_GRAMMAR--GRAMMAR` FOREIGN KEY (`grammar_id`) REFERENCES `grammar` (`id`),
  CONSTRAINT `FK_LESSON_PLAN_GRAMMAR--LESSON_PLAN` FOREIGN KEY (`lesson_plan_id`) REFERENCES `lesson_plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_plan_grammar`
--

LOCK TABLES `lesson_plan_grammar` WRITE;
/*!40000 ALTER TABLE `lesson_plan_grammar` DISABLE KEYS */;
INSERT INTO `lesson_plan_grammar` VALUES (45,33),(46,33),(47,34),(48,34),(54,34),(52,36),(44,100),(44,102);
/*!40000 ALTER TABLE `lesson_plan_grammar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 20:40:31
