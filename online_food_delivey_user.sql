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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'customer',
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastLoginDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'siv','siv@gmail.com','123','Kodur','Trainer','2023-01-15 12:35:45','2023-03-23 11:24:50'),(2,'vijay','vijay@gmail.com','456','Tirupati','Software','2024-07-07 09:24:57','2024-08-24 10:55:31'),(3,'chinni','chinni@gmail.com','2015','Banglore','Software','2024-04-27 12:43:24','2024-04-28 10:13:56'),(7,'thala','thala@gmail.com','112233','karnool','customer','2024-09-24 20:41:58','2024-09-24 20:41:58'),(8,'mari','mari@gmail.com','1233','kashmir','customer','2024-09-24 20:49:16','2024-09-24 20:49:16'),(9,'nagendra','nag@gmail.com','4433','karnool','customer','2024-09-26 08:22:38','2024-09-26 08:22:38'),(10,'Eswar','esh@gmail.com','12345','ATP','customer','2024-09-26 08:29:49','2024-09-26 08:29:49'),(11,'Naresh','nar@gmail.com','4567','karnool','customer','2024-09-26 08:36:25','2024-09-26 08:36:25'),(12,'jash','jash@gmail.com','0000','ATP','customer','2024-09-26 08:39:30','2024-09-26 08:39:30'),(13,'Arjun','ar@gmail.com','3333','Kerala','customer','2024-09-26 08:45:09','2024-09-26 08:45:09'),(15,'Akil','Akil@gmail.com','7777','BTM','customer','2024-09-26 16:57:24','2024-09-26 16:57:24'),(16,'K Jyoshna','karanamjyoshna06@gmail.com','Jyosh','Kadapa','customer','2024-09-27 15:37:14','2024-09-27 15:37:14'),(17,'naga','naga@gmail.com','5555','ATP','customer','2024-09-27 17:12:31','2024-09-27 17:12:31'),(18,'kiarn','kiarn@gmail.com','2345','ATP','customer','2024-10-05 20:49:24','2024-10-05 20:49:24');
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

-- Dump completed on 2024-10-27 11:39:45
