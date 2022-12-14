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
-- Table structure for table `member_member`
--

DROP TABLE IF EXISTS `member_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_member` (
  `userId` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `detailaddr` varchar(500) DEFAULT NULL,
  `zonecode` varchar(5) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `signupdate` datetime(6) NOT NULL,
  `modifydate` datetime(6) NOT NULL,
  `status` varchar(500) NOT NULL,
  `age` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member`
--

LOCK TABLES `member_member` WRITE;
/*!40000 ALTER TABLE `member_member` DISABLE KEYS */;
INSERT INTO `member_member` VALUES ('a','a','a','M','부산 해운대구 APEC로 17','a',NULL,'a@naver.com','010-1212-1121','2022-10-11 10:29:45.387454','2022-10-11 10:29:45.387454','','40대'),('aa','aa','박길동','M','서울 송파구 올림픽로 300','우리집',NULL,'aa@naver.com','010-2222-2222','2022-10-11 12:21:08.045858','2022-10-11 12:21:08.045858','','20대'),('aaa','111','박대근','M','부산 해운대구 APEC로 17','1111','48060','','010-1111-1111','2022-10-11 12:14:47.840096','2022-10-11 12:14:47.840096','','20대'),('aaaaaa','111','안산불주먹양규호','M','서울 관악구 남부순환로 1817','123123','08758','12312312@naver.com','010-2423-5235','2022-10-25 01:12:43.824030','2022-10-25 01:12:43.824030','','40대'),('asdfgh1094','as611209','김성기','M','부산 해운대구 APEC로 30','12321313','48060','asdfgh1094@naver.com','010-1212-1231','2022-10-25 01:05:22.646620','2022-10-25 01:05:22.646620','','10대'),('asdfgh7537','as611209','임두혁','M','부산 해운대구 APEC로 17','12312321','48060','asdfgh1094@naver.com','010-7537-6678','2022-10-25 01:02:17.992149','2022-10-25 01:02:17.992149','','20대'),('b','b','b','F','부산 해운대구 APEC로 68','b','48060','b@naver.com','010-1231-1544','2022-10-25 01:00:10.434174','2022-10-25 01:00:10.434174','','60대'),('bbb','222','이정훈','M','경기 화성시 동탄대로시범길 19','1402-2302','18477','2222@daum.net','010-1212-1212','2022-10-24 08:19:40.971591','2022-10-24 08:19:40.971591','','30대'),('c','c','c','F','부산 해운대구 APEC로 17','c','48060','c@naver.com','010-5735-2123','2022-10-25 00:56:08.629684','2022-10-25 00:56:08.629684','','40대'),('cexking','sexking','뚱인데요','M','서울 강남구 선릉로 635','한남동','None','zzanga@naver.com','010-1531-1531','2022-10-11 08:19:50.963884','2022-10-11 08:19:50.963884','','20대'),('cx','cx','cx','F','서울 송파구 탄천동로 36','cx','05500','cx@naver.com','010-5345-1234','2022-10-25 00:57:15.753212','2022-10-25 00:57:15.753212','','20대'),('d','d','d','M','서울 강동구 아리수로 46','d','05237','d@naver.com','010-5663-5345','2022-10-25 01:05:09.829539','2022-10-25 01:05:09.829539','','10대'),('ee','ee','e','M','서울 강남구 논현로126길 24','green','06105','jyj@daum.net','010-1351-1321','2022-10-25 01:04:30.312381','2022-10-25 01:04:30.312381','','20대'),('f','f','f','F','부산 강서구 르노삼성대로 14','f','46760','f@naver.com','010-5564-3121','2022-10-25 01:08:16.503161','2022-10-25 01:08:16.503161','','40대'),('g','g','g','M','서울 마포구 하늘공원로 84','g','03900','g@naver.com','010-3893-8799','2022-10-25 01:09:59.202073','2022-10-25 01:09:59.202073','','30대'),('h','h','h','M','서울 동대문구 사가정로 6','h','02603','h@naver.com','010-4654-1231','2022-10-25 01:12:10.544866','2022-10-25 01:12:10.544866','','40대'),('hgfdsa1094','111','동탄핵주먹이정훈','M','경남 김해시 주촌면 선지로 85','1231323421','50966','231423141234@naver.com','010-1534-4734','2022-10-25 01:17:37.553919','2022-10-25 01:17:37.553919','','20대'),('hgfdsa7537','as611209','김두한','M','부산 해운대구 APEC로 55','qweqeqwe','48060','qewqewq@naver.com','010-1231-1423','2022-10-25 01:08:24.680480','2022-10-25 01:08:24.680480','','60대'),('i','i','i','F','서울 성동구 가람길 46','i','04802','i@naver.com','010-3111-1111','2022-10-25 01:55:50.884228','2022-10-25 01:55:50.884228','','20대'),('ii','ii','양미자','M','서울 강남구 강남대로154길 21','q타워','06035','i@naver.com','010-5465-5646','2022-10-25 02:10:09.222223','2022-10-25 02:10:09.222223','','20대'),('j','j','j','F','서울 동작구 관악로30길 27','j','07031','j@naver.com','010-2334-4443','2022-10-25 01:14:46.596768','2022-10-25 01:14:46.596768','','30대'),('jy','00','홍길동','M','대전 동구 판교1길 4','판교역','34672','jy@naver.com','010-7987-8979','2022-10-25 00:46:53.717991','2022-10-25 00:46:53.717991','','20대'),('l','l','l','F','서울 마포구 삼개로 5','l','04172','l@naver.com','010-2557-1237','2022-10-25 02:09:06.610280','2022-10-25 02:09:06.610280','','10대'),('ll','ll','ll','F','서울 강남구 자곡로 16','ll','06376','ll@naver.com','010-3535-1231','2022-10-25 02:22:55.965370','2022-10-25 02:22:55.965370','','30대'),('m','m','m','M','서울 강남구 밤고개로 120','m','06364','m@naver.com','010-1332-6786','2022-10-25 01:04:06.699143','2022-10-25 01:04:06.699143','','30대'),('n','n','n','F','서울 동대문구 사가정로 6','n','02603','n@naver.com','010-5345-4212','2022-10-25 01:03:02.377155','2022-10-25 01:03:02.377155','','20대'),('o','o','o','M','서울 종로구 낙산성곽서길 5','o','03098','o@naver.com','010-2753-3453','2022-10-25 01:58:53.707499','2022-10-25 01:58:53.707499','','30대'),('oo','oo','노송','F','서울 강북구 삼양로73가길 72-10','하이빌','01106','oo@naver.com','010-5646-7893','2022-10-25 02:21:51.506075','2022-10-25 02:21:51.506075','','40대'),('p','p','p','M','서울 광진구 자양번영로 3','p','05095','p@naver.com','010-5463-1231','2022-10-25 02:07:13.129163','2022-10-25 02:07:13.129163','','40대'),('pp','pp','배수지','F','서울 강남구 헌릉로569길 37','t','06376','t@naver.com','010-4654-7123','2022-10-25 02:28:22.825487','2022-10-25 02:28:22.825487','','30대'),('qq','qq','qq','M','서울 관악구 남부순환로 1817','q타워','08758','ㅂ@daum.net','010-8546-4564','2022-10-25 00:57:56.260060','2022-10-25 00:57:56.260060','','50대'),('rr','rr','rr','M','인천 강화군 불은면 중앙로679번길 25','강화','23038','ㅂ@naver.com','010-7654-6574','2022-10-25 01:12:01.726695','2022-10-25 01:12:01.726695','','10대'),('s','s','s','M','서울 서초구 나루터로 15','s','06517','s@naver.com','010-4355-1121','2022-10-25 01:06:04.427863','2022-10-25 01:06:04.427863','','40대'),('tt','tt','양규호','M','서울 강남구 논현로12길 23-5','t&t','06312','t@naver.com','010-7498-5413','2022-10-25 01:20:26.842730','2022-10-25 01:20:26.842730','','30대'),('u','u','u','F','대구 달성군 화원읍 류목정길 5','u','42957','u@naver.com','010-4333-1211','2022-10-25 01:54:48.210031','2022-10-25 01:54:48.210031','','30대'),('uu','uu','김성철','M','서울 강남구 헌릉로569길 37','t','06376','t@naver.com','010-7446-7132','2022-10-25 02:07:34.505222','2022-10-25 02:07:34.505222','','10대'),('v','v','v','F','서울 종로구 팔판길 1-6','v','03054','v@naver.com','010-5765-4534','2022-10-25 00:58:13.753691','2022-10-25 00:58:13.753691','','50대'),('ww','ww','ww','M','서울 강남구 개포로26길 20','w하우스','06308','w@naver.com','010-1123-1231','2022-10-25 01:03:26.132274','2022-10-25 01:03:26.132274','','20대'),('y','y','y','M','서울 광진구 자양강변길 7','y','05088','y@naver.com','010-6434-4351','2022-10-25 01:53:02.385810','2022-10-25 01:53:02.385810','','40대'),('yy','yy','함형일','M','서울 강북구 덕릉로10길 23','hy','01098','y@naver.com','010-4564-5465','2022-10-25 02:01:18.715809','2022-10-25 02:01:18.715809','','40대'),('z','z','z','M','인천 연수구 컨벤시아대로 43','z','21994','z@naver.com','010-6786-7855','2022-10-25 00:55:05.777732','2022-10-25 00:55:05.777732','','30대'),('zx','zx','zx','M','서울 송파구 탄천동로 36','zx','05500','zx@naver.com','010-4242-1414','2022-10-25 00:53:51.642953','2022-10-25 00:53:51.642953','','70대'),('zxc','zxc','zxc','M','서울 마포구 큰우물로 3','zxc','04150','zxc@naver.com','010-0133-1212','2022-10-25 00:50:58.303951','2022-10-25 00:50:58.303951','','40대');
/*!40000 ALTER TABLE `member_member` ENABLE KEYS */;
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
