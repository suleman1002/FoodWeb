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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `rId` int DEFAULT NULL,
  `itemName` varchar(45) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `isAvailable` tinyint DEFAULT NULL,
  `imgPath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  KEY `rid_idx` (`rId`),
  CONSTRAINT `rid` FOREIGN KEY (`rId`) REFERENCES `restaraunt` (`rId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,111,'Chicken Biriyani','Spicy',320,0,'images\\cb.jpg'),(2,111,'Fish Biriyani','Spricy',350,1,'images\\fish.jpg'),(3,222,'VegBiriyani','Spricy',400,1,'images\\veg.jpg'),(4,222,'paneerBiriyani','Tasty',370,1,'images\\p.jpg'),(5,333,'Coffee','Chill',20,1,'images\\coffee.jpg'),(6,333,'Tea and Chai','Chill',35,1,'images\\Tea.jpg'),(7,444,'EggNoodles','Masty',50,1,'images\\egg.jpg'),(8,444,'GobiNoodles','Cheeze',100,1,'images\\g.jpg'),(9,555,'IceCream','cool',25,1,'images\\ice.jpg'),(10,555,'chockos','Sweet',25,0,'images\\chock.jpg'),(12,666,'Fruit ','tasty',23,1,'images\\fruit.jpg'),(13,666,'Fruit Juices','Sweet ',50,1,'images\\juice.jpg'),(14,777,'Mutton Biriyani','Spicy',350,1,'images\\mb.jpg'),(15,777,'Egg Biriyani','Spicy',270,1,'images\\eb.jpg'),(16,888,'PaniPoori','Chill',30,1,'images\\pp.jpg'),(17,888,'gobi','Chill',50,1,'images\\gg.jpg'),(18,999,'Fish Biriyani','HYB',350,1,'images\\fbiriyani.jpg'),(19,999,'Chicken Biriyani','HYB',400,1,'images\\cbiriyani.jpg'),(20,1000,'Chapati','Tasty',100,1,'images\\chapati.jpg'),(21,1000,'Roti','Tasty',150,1,'images\\roti.jpg'),(22,1001,'Idly','Tiffin',20,1,'images\\idly.jpg'),(23,1001,'Dosa','Tiffin',50,1,'images\\dosa.jpg'),(24,1002,'Pongal','Tiffin',30,1,'images\\pongal.jpg'),(25,1002,'Upma','Tiffin',45,1,'images\\upma.jpg'),(26,111,'Mutton Biruyani','Spricy',320,1,'images\\mb.jpg'),(27,1001,'Mutton Fry Biruyani','Spricy',350,1,'images\\mb.jpg'),(28,222,'Mutton Biruyani','Spricy',340,1,'images\\mb.jpg'),(29,1003,'Dosa','Tiffin',75,1,'images\\dosa.jpg'),(30,1003,'Upma','Tiffin',50,1,'images\\upma.jpg'),(31,1004,'Chapati','Tasty',150,1,'images\\chapati.jpg'),(32,1004,'Mutton Biruyani','Tasty',450,1,'images\\mb.jpg'),(33,1005,'Egg Biriyani','Tasty',300,1,'images\\eb.jpg'),(34,1005,'Roti','Tasty',150,1,'images\\roti.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
