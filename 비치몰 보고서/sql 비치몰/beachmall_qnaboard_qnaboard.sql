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
-- Table structure for table `qnaboard_qnaboard`
--

DROP TABLE IF EXISTS `qnaboard_qnaboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qnaboard_qnaboard` (
  `qnaNum` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `qnaTitle` varchar(1000) NOT NULL,
  `qnaContent` longtext NOT NULL,
  `qnaScore` int NOT NULL,
  `qnaDate` datetime(6) NOT NULL,
  `qnaIp` varchar(15) NOT NULL,
  `reply_title` varchar(1000) DEFAULT NULL,
  `reply_content` longtext,
  PRIMARY KEY (`qnaNum`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnaboard_qnaboard`
--

LOCK TABLES `qnaboard_qnaboard` WRITE;
/*!40000 ALTER TABLE `qnaboard_qnaboard` DISABLE KEYS */;
INSERT INTO `qnaboard_qnaboard` VALUES (2,'aaa','qwerty','1234567890',1,'2022-10-11 02:21:12.641302','127.0.0.1',NULL,NULL),(3,'cexking','뚱인데요','뚱인데요?',1,'2022-10-11 08:20:36.323364','192.168.0.5',NULL,NULL),(4,'cexking','고민 상담이있어요','코딩 너무 어려워요 싯팔!',2,'2022-10-11 08:20:58.737934','192.168.0.5',NULL,NULL),(6,'aa','ㅁㅁ','ㅁㅁ',0,'2022-10-14 02:11:04.223536','192.168.0.117',NULL,NULL),(7,'aa','ㅁㅁ','ㅁㅁㅁ',0,'2022-10-14 02:11:13.096836','192.168.0.117',NULL,NULL),(8,'aa','ㅁ','ㅁ',0,'2022-10-14 02:11:20.817362','192.168.0.117',NULL,NULL);
/*!40000 ALTER TABLE `qnaboard_qnaboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 17:10:09
