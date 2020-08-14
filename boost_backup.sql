-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: boost
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Board`
--

DROP TABLE IF EXISTS `Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Board` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `info` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `story` text,
  `keywords` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Board`
--

LOCK TABLES `Board` WRITE;
/*!40000 ALTER TABLE `Board` DISABLE KEYS */;
INSERT INTO `Board` VALUES (1,'a','여자',29,'골프를 좋아함','2020-07-03','2020-07-20','강남','골프 그룹','골프치다가 만남','강남 가나다라 마바사'),(2,'a','여자',NULL,'kl;','2020-08-06','2020-08-20','kl;k','kl;k;','kl;kl;',NULL),(3,'a','여자',90,'ㅝㅏ','2020-08-07','2020-09-05','ㅜㅏㅓㅜ','ㅝㅏ','ㅝㅏ',NULL),(4,'a','여자',90,'ㅝㅏ','2020-08-07','2020-09-05','ㅜㅏㅓㅜ','ㅝㅏ','ㅝㅏ',NULL),(5,'a','남자',908,'ㅏ;ㅣ','2020-07-27','2020-07-31','ㅑㅐㅔㅔ','ㅑㅔㅐ','ㅑㅐㅑㅔㅐ',NULL),(6,'a','남자',908,'ㅏ;ㅣ','2020-07-27','2020-07-31','ㅑㅐㅔㅔ','ㅑㅔㅐ','ㅑㅐㅑㅔㅐ',NULL),(7,'a','여자',890,'ㅓㅣㅏㅓ','2020-08-07','2020-08-14','ㅓㅣㅏㅓㅏ','ㅓㅏㅣㅓ','ㅓㅏㅣ',NULL),(8,'a','여자',890,'ㅏ;ㅣ','2020-08-06','2020-08-28','ㅏㅣ;ㅏ;','ㅏ;ㅣㅏ','ㅏㅣ;ㅏ',NULL),(9,'a','남자',29,'착하고 좋은 사람','2020-08-20','2020-08-28','서울 신촌','스터디 그룹','스터디 그룹을 같이한 사람을 찾습니다. ㅜㅜ','스터디 그룹을 같이한 사람을 찾습니다. ㅜㅜ 착하고 좋은 사람 29 남자 2020-08-20 2020-08-28 서울 신촌 스터디 그룹'),(10,'a','남자',33,'밥을 많이 먹는다 돈이 많다 통통하다 키가 크다','2020-08-15','2020-08-21','돼지국밥집','국밥그룹','서울에서 국밥을 함께 먹음. 밥을 세 공기나 먹는다.','남자 밥 돈 키 돼지국밥 집 국밥 그룹 서울'),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'a','남자',26,'이사람은 축구를 잘하는 착한 사람입니다. 짧은머리를 주로 합니다. 농구도 좋아합니다. ','2020-08-05','2020-08-28','서울','서울 초등학교','귤을 좋아하는 친구입니다. 부캠 초등학교에서 함께 축구를 하다가 친해졌습니다.','남자 사람 축구 머리 농구 서울 초등 학교 귤 친구 부 캠 2020-08-05 2020-08-28'),(13,'a','남자',26,'축구를 좋아함','2020-08-04','2020-08-21','운동장','부캠','저는 축구를 좋아합니다.','남자 축구 운동장 부 캠 2020-08-04 2020-08-21'),(14,'a','남자',26,'농구를 좋아함','2020-08-11','2020-08-27','어딘가','부캠','농구하다 넘어져써요','남자 농구 캠 2020-08-11 2020-08-27'),(15,'a','남자',11,'태은이','1111-11-11','1112-02-02','집','그룹','안녕하세요 축구와 귤을 좋아하는 친구를 찾아요','남자 태은 그룹 안녕 축구 귤 친구 1111-11-11 1112-02-02'),(16,'a','남자',3,'3','1111-11-11','1111-11-11','3','3','wefwef','남자 1111-11-11 1111-11-11'),(17,'a','남자',2,'2','1111-11-11','1111-11-01','2','2','2','남자 1111-11-11 1111-11-01'),(18,'a','남자',2,'2','1111-11-11','1111-11-11','2','2','wef','남자 1111-11-11 1111-11-11');
/*!40000 ALTER TABLE `Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` varchar(50) NOT NULL,
  `pw` char(60) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('a','123','kwon','M',12);
INSERT INTO `User` VALUES ('test','test','test','M',22);

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-09  0:03:29
