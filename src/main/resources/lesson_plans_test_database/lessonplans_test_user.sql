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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `enabled` tinyint DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (28,'lessonplantest@lptest.com',1,'lessonplantest','lessonplantest','$2a$10$.Lif7o0UEJEOS6Q5KsplvOX4BSgOpwLzY8AVFo2OC6YDxAZMvt8LC','lessonplantest'),(29,'lessonplantest1@lp.com',1,'lessonplantest1','lessonplantest1','$2a$10$N2vnGDbaTrSmGrg6aieJTeUeMvjqam9xJnm/bBC80wGZbpjN9ak6K','lessonplantest1'),(30,'lessonplantest2@lp.com',1,'lessonplantest2','lessonplantest2','$2a$10$D/BUj9D3Bb.aPCSnePkgcurNFWUx4W5wM4uLJuxGdarUiGHPMf52u','lessonplantest2'),(31,'lessonplantest3@lp.com',1,'lessonplantest3','lessonplantest3','$2a$10$JOMPW3S5zM2jeS49WTsAC.azM/gPyPwOpCliJTqLGNOdM3QIl7Pt2','lessonplantest3'),(33,'lessonplantest4@lp.com',1,'dddd','ddddd','$2a$10$j30OMGAtFKoYv4XfF/Vwp.NmigATJn2gwCJghXhVLEP8ECa64b4jq','lessonplantest4'),(34,'lessonplantest5@lp.com',1,NULL,NULL,'$2a$10$tqO4SiMHMzoA0NHqyZ1HeuVMv/M4n.REsi/Acb4wrso1YwM8mTOry','lessonplantest5'),(35,'lessonplantest6@lp.com',1,NULL,NULL,'$2a$10$zskUMSMa/QmWUAnY9sA0hu27KeEUetzn5T.5fmE/RE/GuaguSeouK','lessonplantest6'),(36,'lessonplantest7@gmail.com',1,NULL,NULL,'$2a$10$3Koa5mmjFFfxx2yjRLzvnO1U0G3Vy3qYl1EegC/KRAVgzVr.9diry','lessonplantest7');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
