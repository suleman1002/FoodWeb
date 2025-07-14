-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: online_food_delivey
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `uId` int DEFAULT NULL,
  `rId` int DEFAULT NULL,
  `totalAmount` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `paymentOption` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `uId_idx` (`uId`),
  KEY `rId_idx` (`rId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,111,1340,'Completed','2024-04-25 12:45:53','upi'),(2,2,222,1170,'waiting','2024-07-21 11:34:53','online'),(23,0,111,320,'Pending','2024-10-23 12:58:10','Card'),(24,0,111,320,'Pending','2024-10-23 13:04:21','Card'),(25,0,111,1280,'Pending','2024-10-23 13:06:31','Cash on Delivery'),(26,0,111,640,'Pending','2024-10-23 13:09:15','Cash on Delivery'),(27,0,111,320,'Pending','2024-10-23 13:15:34','Cash on Delivery'),(28,0,111,320,'Pending','2024-10-23 13:24:49','Cash on Delivery'),(29,1,111,640,'Pending','2024-10-23 13:29:51','Cash on Delivery'),(30,3,333,20,'Pending','2024-10-23 13:39:48','Card'),(31,3,333,40,'Pending','2024-10-23 13:42:46','Cash on Delivery'),(32,1,222,800,'Pending','2024-10-23 13:49:25','Card'),(33,1,111,320,'Pending','2024-10-23 13:53:48','Cash on Delivery'),(34,2,888,60,'Pending','2024-10-23 16:20:35','Card'),(35,1,555,75,'Pending','2024-10-23 16:38:50','UPI'),(36,1,555,25,'Pending','2024-10-23 16:40:39','Card'),(37,12,1001,40,'Pending','2024-10-23 16:48:15','Cash on Delivery'),(38,12,777,2100,'Pending','2024-10-23 16:54:45','Cash on Delivery'),(39,2,111,640,'Pending','2024-10-23 17:00:20','Cash on Delivery'),(40,1,222,800,'Pending','2024-10-23 17:11:16','UPI'),(41,2,222,800,'Pending','2024-10-23 17:18:31','Cash on Delivery'),(42,1,111,1340,'Pending','2024-10-23 18:05:11','Cash on Delivery'),(43,1,333,60,'Pending','2024-10-24 10:06:34','Cash on Delivery'),(44,1,111,1660,'Pending','2024-10-24 12:14:45','Cash on Delivery'),(45,1,111,1980,'Pending','2024-10-24 12:19:02','Cash on Delivery'),(46,2,888,150,'Pending','2024-10-24 12:26:05','Cash on Delivery'),(47,1,111,640,'Pending','2024-10-24 13:43:03','Cash on Delivery'),(48,1,111,700,'Pending','2024-10-24 14:13:38','Card'),(49,2,444,100,'Pending','2024-10-24 16:16:23','Card'),(50,1,111,960,'Pending','2024-10-24 20:43:23','Card'),(51,2,111,640,'Pending','2024-10-24 21:00:55','Cash on Delivery'),(52,1,222,920,'Pending','2024-10-24 21:53:02','Cash on Delivery'),(53,1,888,120,'Pending','2024-10-25 09:31:41','Cash on Delivery'),(54,1,1004,600,'Pending','2024-10-25 16:37:00','Cash on Delivery'),(55,1,444,200,'Pending','2024-10-25 16:38:48','Cash on Delivery'),(56,1,111,640,'Pending','2024-10-26 11:46:22','Cash on Delivery');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 11:39:45
