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
-- Table structure for table `restaraunt`
--

DROP TABLE IF EXISTS `restaraunt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaraunt` (
  `rId` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cusineType` varchar(45) DEFAULT NULL,
  `deliveryTime` int DEFAULT NULL,
  `isOpen` tinyint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `imgPath` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaraunt`
--

LOCK TABLES `restaraunt` WRITE;
/*!40000 ALTER TABLE `restaraunt` DISABLE KEYS */;
INSERT INTO `restaraunt` VALUES (111,'Kings','North indian',30,1,5,'images\\1.jpg'),(222,'Taj','South Indian',40,1,5,'images\\2.jpg'),(333,'SoftCafe','indian',20,0,5,'images\\3.jpg'),(444,'LocalCroud','Chines',30,1,5,'images\\4.jpg'),(555,'ninja','souoth korean',34,1,5,'images\\5.jpg'),(666,'jampa','Northkorean',23,1,5,'images\\6.jpg'),(777,'Tarze','Indian',45,1,5,'images\\7.jpg'),(888,'Kargo','souoth korean',45,1,4,'images\\8.jpg'),(999,'compact','korean',50,1,5,'images\\9.jpg'),(1000,'Quant','Indian',34,0,5,'images\\10.jpg'),(1001,'timtom','souoth korean',12,0,4,'images\\11.jpg'),(1002,'tomkat','chinees',45,1,5,'images\\12.jpg'),(1003,'Dhvarak','Treditional',10,0,5,'images\\13.jpg'),(1004,'MAX','Northkorean',15,0,5,'images\\14.jpg'),(1005,'Galex','souoth korean',30,0,4,'images\\15.jpg'),(2001,'Spice Symphony','Indian',30,1,4,'images\\spice_sym.jpg'),(2002,'El Mexicano','Mexican',25,1,5,'images\\el_mexicano.jpg'),(2003,'Kimchi Corner','South Korean',35,1,4,'images\\kimchi_corner.jpg'),(2004,'The Curry Pot','Indian',28,1,5,'images\\curry_pot.jpg'),(2005,'Taco Town','Mexican',20,0,5,'images\\taco_town.jpg'),(2006,'Bibimbap Bowl','South Korean',40,1,5,'images\\bibimbap_bowl.jpg'),(2007,'Masala Magic','Indian',32,1,5,'images\\masala_magic.jpg'),(2008,'Salsa Fiesta','Mexican',22,0,4,'images\\salsa_fiesta.jpg'),(2009,'Seoul House','South Korean',38,1,4,'images\\seoul_house.jpg'),(2010,'Biryani Bliss','Indian',30,0,5,'images\\biryani_bliss.jpg'),(2011,'Baja Fresh','Mexican',27,1,5,'images\\baja_fresh.jpg'),(2012,'K BBQ Hub','South Korean',42,1,4,'images\\k_bbq_hub.jpg'),(2013,'Tandoori Treat','Indian',34,0,5,'images\\tandoori_treat.jpg'),(2014,'Churro Express','Mexican',30,1,4,'images\\churro_express.jpg'),(2015,'Bibigo','South Korean',25,1,5,'images\\bibigo.jpg'),(2016,'Naan Cafe','Indian',35,1,5,'images\\naan_cafe.jpg'),(2017,'Guacamole Grill','Mexican',18,0,5,'images\\guac_grill.jpg'),(2018,'Seoul Eats','South Korean',31,1,4,'images\\seoul_eats.jpg'),(2019,'Chaat Bazaar','Indian',24,1,5,'images\\chaat_bazaar.jpg'),(2020,'Mexicali Blue','Mexican',40,1,4,'images\\mexicali_blue.jpg');
/*!40000 ALTER TABLE `restaraunt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 11:39:46
