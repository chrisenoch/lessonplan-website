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
-- Table structure for table `deleted_lesson_plan`
--

DROP TABLE IF EXISTS `deleted_lesson_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_lesson_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename_UNIQUE` (`filename`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_lesson_plan`
--

LOCK TABLES `deleted_lesson_plan` WRITE;
/*!40000 ALTER TABLE `deleted_lesson_plan` DISABLE KEYS */;
INSERT INTO `deleted_lesson_plan` VALUES (1,'A1_index2021-09-15--06-52-14.html'),(2,'A1_index2021-09-15--06-55-5.html'),(5,'A1_index_2021-09-15--10-54-17.html'),(6,'A1_index_2021-09-15--11-00-22.html'),(8,'A1_index_2021-09-15--11-14-29.html'),(9,'A1_index_2021-09-15--11-14-39.html'),(11,'A1_index_2021-09-15--11-16-18.html'),(13,'A1_index_2021-09-16--11-01-51.html'),(15,'A1_index_2021-09-17--07-02-28.html'),(16,'A1_index_2021-09-18--04-25-51.html'),(22,'A1_index_2021-09-28--10-08-28.html'),(23,'A1_index_2021-09-28--10-08-33.html'),(24,'A1_index_2021-09-28--10-08-43.html'),(25,'A1_index_2021-10-03--01-49-0.html'),(26,'A1_index_2021-10-05--07-48-44.html'),(27,'A1_index_2021-10-05--09-34-57.html'),(21,'A1_yyyy_2021-09-22--11-45-37.html'),(20,'A1_zzz_2021-09-22--11-28-42.html'),(10,'A2_index_2021-09-15--11-14-59.html'),(12,'A2_index_2021-09-15--11-16-24.html'),(28,'A2_index_2021-10-05--09-35-28.html'),(14,'B1_index_2021-09-16--11-04-7.html'),(29,'B1_index_2021-10-05--09-35-42.html'),(7,'B2PLUS_index_2021-09-15--11-10-1.html'),(30,'B2PLUS_index_2021-10-05--09-35-54.html'),(33,'C1PLUS_index_2021-10-05--09-36-12.html'),(32,'C1PLUS_index_2021-10-05--09-36-6.html'),(35,'C1PLUS_index_2021-10-30--07-42-24.html'),(3,'C1PLUS_olympicvillage2021-09-15--06-56-1.html'),(17,'C1PLUS_olympicvillage_2021-09-22--11-02-33.html'),(31,'C1_index_2021-10-05--09-36-0.html'),(34,'C2_index_2021-10-05--09-36-20.html'),(4,'C2_olympicvillage_2021-09-15--07-32-28.html'),(19,'C2_olympicvillage_2021-09-22--11-22-31.html'),(18,'C2_zzz_2021-09-22--11-04-33.html');
/*!40000 ALTER TABLE `deleted_lesson_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 20:40:18
