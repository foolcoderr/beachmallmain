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
-- Table structure for table `wishlist_wishlist`
--

DROP TABLE IF EXISTS `wishlist_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist_wishlist` (
  `wishNum` bigint NOT NULL AUTO_INCREMENT,
  `prodNum` bigint NOT NULL,
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`wishNum`),
  KEY `wishlist_wishlist_prodNum_ca827dec_fk_product_product_prodNum` (`prodNum`),
  KEY `wishlist_wishlist_userId_9ba68f55_fk_member_member_userId` (`userId`),
  CONSTRAINT `wishlist_wishlist_prodNum_ca827dec_fk_product_product_prodNum` FOREIGN KEY (`prodNum`) REFERENCES `product_product` (`prodNum`),
  CONSTRAINT `wishlist_wishlist_userId_9ba68f55_fk_member_member_userId` FOREIGN KEY (`userId`) REFERENCES `member_member` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist_wishlist`
--

LOCK TABLES `wishlist_wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist_wishlist` DISABLE KEYS */;
INSERT INTO `wishlist_wishlist` VALUES (1,541,'cexking'),(2,456,'aaa'),(3,461,'aaa'),(4,462,'aaa'),(5,540,'aaa'),(8,124,'jy'),(9,421,'zxc'),(11,406,'jy'),(12,54,'zx'),(13,110,'z'),(14,257,'c'),(15,468,'cx'),(16,359,'v'),(17,373,'b'),(18,306,'n'),(19,228,'m'),(25,417,'d'),(27,540,'ee'),(28,533,'ee'),(29,531,'ee'),(30,522,'ee'),(31,513,'ee'),(32,412,'s'),(33,516,'ee'),(34,22,'ee'),(35,494,'ee'),(36,199,'f'),(37,34,'g'),(38,186,'ee'),(39,424,'rr'),(40,366,'rr'),(41,362,'rr'),(42,122,'rr'),(43,488,'rr'),(45,358,'rr'),(46,34,'rr'),(47,115,'h'),(52,494,'yy'),(53,491,'yy'),(54,490,'yy'),(55,406,'uu'),(56,541,'uu'),(57,533,'uu'),(58,52,'uu'),(59,541,'ii'),(60,540,'ii'),(61,190,'ii'),(62,537,'ii'),(63,531,'ii'),(64,532,'ii'),(65,528,'ii'),(66,521,'ii'),(67,148,'ii'),(68,477,'ii'),(69,541,'oo'),(70,540,'oo'),(71,539,'oo'),(72,535,'oo'),(73,534,'oo'),(74,528,'oo'),(75,267,'oo'),(76,541,'pp'),(77,540,'pp'),(78,512,'pp'),(79,472,'pp');
/*!40000 ALTER TABLE `wishlist_wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 17:10:07
