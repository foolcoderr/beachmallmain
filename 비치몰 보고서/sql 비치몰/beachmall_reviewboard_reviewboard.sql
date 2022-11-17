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
-- Table structure for table `reviewboard_reviewboard`
--

DROP TABLE IF EXISTS `reviewboard_reviewboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewboard_reviewboard` (
  `reviewNum` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `reviewDate` datetime(6) NOT NULL,
  `reviewTitle` varchar(1000) NOT NULL,
  `reviewContent` longtext NOT NULL,
  `reviewIp` varchar(15) NOT NULL,
  `reviewPhoto` varchar(100) DEFAULT NULL,
  `prodNum` bigint NOT NULL,
  PRIMARY KEY (`reviewNum`),
  KEY `reviewboard_reviewbo_prodNum_4ba4894c_fk_product_p` (`prodNum`),
  CONSTRAINT `reviewboard_reviewbo_prodNum_4ba4894c_fk_product_p` FOREIGN KEY (`prodNum`) REFERENCES `product_product` (`prodNum`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewboard_reviewboard`
--

LOCK TABLES `reviewboard_reviewboard` WRITE;
/*!40000 ALTER TABLE `reviewboard_reviewboard` DISABLE KEYS */;
INSERT INTO `reviewboard_reviewboard` VALUES (1,'cexking','2022-10-11 08:23:00.428106','너무맛있어요','잘 썻어요','192.168.0.5','',541),(2,'aaa','2022-10-14 05:17:40.762937','오렌지 먹어본지 오랜지','오랜지 랜랜랜랜','192.168.0.117','',148);
/*!40000 ALTER TABLE `reviewboard_reviewboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 17:10:08
