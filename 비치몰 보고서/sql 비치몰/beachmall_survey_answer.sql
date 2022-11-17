-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: beachmall
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `survey_answer`
--

DROP TABLE IF EXISTS `survey_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_answer` (
  `answer_idx` int NOT NULL AUTO_INCREMENT,
  `survey_idx` int NOT NULL,
  `num` int NOT NULL,
  `num1` int NOT NULL,
  `num2` int NOT NULL,
  `num3` int NOT NULL,
  `num4` int NOT NULL,
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`answer_idx`),
  KEY `survey_answer_userId_4e7bc9e8_fk_member_member_userId` (`userId`),
  CONSTRAINT `survey_answer_userId_4e7bc9e8_fk_member_member_userId` FOREIGN KEY (`userId`) REFERENCES `member_member` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answer`
--

LOCK TABLES `survey_answer` WRITE;
/*!40000 ALTER TABLE `survey_answer` DISABLE KEYS */;
INSERT INTO `survey_answer` VALUES (1,1,1,4,6,7,9,'a'),(2,1,1,3,5,7,9,'aaa'),(3,1,1,4,5,8,9,'aa'),(4,1,1,3,5,7,9,'bbb'),(5,1,2,4,6,8,10,'jy'),(6,1,2,4,5,7,9,'zxc'),(7,1,2,3,5,8,9,'zx'),(8,1,1,4,6,7,9,'z'),(9,1,1,4,6,8,10,'c'),(10,1,1,3,6,8,10,'cx'),(11,1,2,3,5,8,10,'v'),(12,1,1,3,5,7,9,'qq'),(13,1,2,4,6,8,10,'b'),(14,1,2,3,5,8,9,'n'),(15,1,1,3,5,7,9,'asdfgh7537'),(16,1,2,4,6,8,10,'m'),(17,1,2,4,5,7,10,'ee'),(18,1,2,3,6,7,9,'d'),(19,1,1,3,5,8,9,'asdfgh1094'),(20,1,2,4,5,7,10,'s'),(21,1,2,4,5,7,10,'f'),(22,1,2,4,6,8,10,'hgfdsa7537'),(23,1,2,3,5,8,9,'g'),(24,1,2,4,6,8,10,'rr'),(25,1,2,4,5,8,10,'h'),(26,1,1,4,5,7,9,'aaaaaa'),(27,1,2,4,5,7,10,'j'),(28,1,1,3,5,7,9,'hgfdsa1094'),(29,1,2,3,5,8,9,'y'),(30,1,2,3,5,8,10,'u'),(31,1,2,4,6,7,9,'i'),(32,1,1,3,6,8,9,'o'),(33,1,1,3,5,7,9,'yy'),(34,1,2,4,5,8,9,'p'),(35,1,2,4,6,8,10,'uu'),(36,1,2,4,6,8,10,'l'),(37,1,2,4,5,8,10,'ii'),(39,1,2,4,6,8,9,'oo'),(40,1,2,3,5,8,9,'ll'),(41,1,1,3,5,7,9,'pp'),(42,1,1,4,5,8,9,'cexking');
/*!40000 ALTER TABLE `survey_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 17:10:06
