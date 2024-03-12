-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: webapp
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `category_id` int(3) DEFAULT 1,
  `title` varchar(30) NOT NULL,
  `body` text DEFAULT NULL,
  `regist_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ctg_fk` (`category_id`),
  CONSTRAINT `ctg_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,3,'今日の昼','今日は親子丼','2023-11-01 16:39:56',NULL),(2,2,'うちの黒猫','かわいい','2023-11-01 16:39:56',NULL),(3,2,'猫の秘密','内緒で餌をもらっている','2023-11-01 16:39:56',NULL);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'なんでも','とりあえず用'),(2,'ねこ','猫の話題'),(3,'たべもの','食べ物の話題');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` char(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` char(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` text NOT NULL,
  `recv_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'20231024001','namae','email@ncs','taitoru','naiyou','2023-10-23 00:00:00'),(2,'20231024001','namae','email@ncs','taitoru','naiyou','2023-10-23 00:00:00'),(3,'20231024002','namae2','email2@ncs','taitoru2','naiyou2','2023-10-23 00:00:02'),(4,'20231024003','namae3','email3@ncs','taitoru3','naiyou3','2023-10-23 00:00:03'),(5,'20231024001','namae','email@ncs','taitoru','naiyou','2023-10-23 00:00:00'),(6,'20231024002','namae2','email2@ncs','taitoru2','naiyou2','2023-10-23 00:00:02'),(7,'20231024003','namae3','email3@ncs','taitoru3','naiyou3','2023-10-23 00:00:03'),(8,'20231024001','namae','email@ncs','taitoru','naiyou','2023-10-23 00:00:00'),(9,'20231024002','namae2','email2@ncs','taitoru2','naiyou2','2023-10-23 00:00:02'),(10,'20231024003','namae3','email3@ncs','taitoru3','naiyou3','2023-10-23 00:00:03'),(11,'20231024001','名前','email@ncs','タイトル','内容','2023-10-23 00:00:00'),(12,'20231025001','名前','メール@Mail','タイトル','内容','2023-10-25 16:21:27'),(13,'20231025002','名前','メール@Mail','タイトル','内容','2023-10-25 16:24:38'),(14,'20231025003','名前','メール@Mail','タイトル','内容','2023-10-25 16:24:38'),(15,'20231025004','名前','メール@Mail','タイトル','内容','2023-10-25 16:40:59'),(16,'20231031001','2023','10@31','931','眠い','2023-10-31 09:32:13'),(17,'20231031002','2023','10@31','931','眠い','2023-10-31 09:33:02'),(18,'20231031003','2023','10@31','931','眠い','2023-10-31 09:33:07'),(19,'20231031004','名前','メール@Mail','タイトル','内容','2023-10-31 09:53:35'),(20,'20231031005','a','a@a','aaa','a','2023-10-31 11:03:10'),(21,'20231031006','a','aa@a','aaa','aaa','2023-10-31 12:18:15'),(22,'20231031007','a','aa@a','aaa','aaa','2023-10-31 12:18:32'),(23,'20231101001','a','a@a','aaa','a','2023-11-01 13:39:52'),(24,'20231101002','a','a@a','aaa','a','2023-11-01 13:44:07'),(25,'20231101003','a','a@a','aaa','a','2023-11-01 13:44:43'),(26,'20231101004','a','a@a','aaa','a','2023-11-01 13:45:59'),(27,'20231101005','a','a@a','aaa','a','2023-11-01 13:46:14'),(28,'20231101006','a','a@a','aaa','a','2023-11-01 13:47:37'),(29,'20231101007','名前','メール@Mail','aaa','a','2023-11-01 13:56:38'),(30,'20231101008','a','a@a','aaaa','a','2023-11-01 14:00:30'),(31,'20231101009','a','a@a','aaaa','a','2023-11-01 14:00:52'),(32,'20231101010','a','a@a','aaaa','a','2023-11-01 14:00:53'),(33,'20231101011','a','a@a','aaa','a','2023-11-01 14:01:11'),(34,'20231101012','a','a@a','aaa','a','2023-11-01 14:01:24'),(35,'20231101013','a','a@a','aaa','a','2023-11-01 14:01:49'),(36,'20231101014','a','a@a','aaa','a','2023-11-01 14:03:27'),(37,'20231101015','a','a@a','aaa','a','2023-11-01 14:04:20'),(38,'20231101016','a','a@a','aaa','a','2023-11-01 14:06:21'),(39,'20231101017','a','a@a','aaa','a','2023-11-01 14:07:37'),(40,'20231101018','a','a@a','aaa','a','2023-11-01 14:08:40'),(41,'20231101019','a','a@a','aaa','a','2023-11-01 14:15:35'),(42,'20231101020','a','a@a','aaa','a','2023-11-01 14:28:07'),(43,'20231101021','a','a@a','aaa','a','2023-11-01 14:30:03'),(44,'20231108001','a','a@a','aaa','13：17','2023-11-08 13:17:46');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-08 14:19:31
