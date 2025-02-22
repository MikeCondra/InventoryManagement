CREATE DATABASE  IF NOT EXISTS `smartshopdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smartshopdb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: smartshopdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) NOT NULL,
  `CategoryDescription` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Electronics','Electronic items and gadgets'),(2,'Clothing','Apparel and accessories'),(3,'Home Appliances','Household appliances and gadgets'),(4,'Toys','Toys and games for children'),(5,'Books','Various genres of books');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `SignUpDate` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John','Smith','123 Elm St, Tracy, CA','2023-12-10'),(2,'Jane','Doe','456 Oak St, Tracy, CA','2023-11-18'),(3,'Alice','Johnson','789 Pine St, Tracy, CA','2023-07-31'),(4,'Bob','Brown','101 Maple St, Tracy, CA','2023-04-04'),(5,'Charlie','Davis','202 Cedar St, Tracy, CA','2023-07-18'),(6,'Diana','Evans','303 Spruce St, Tracy, CA','2023-12-13'),(7,'Edward','Garcia','404 Birch St, Tracy, CA','2023-02-10'),(8,'Fiona','Harris','505 Walnut St, Tracy, CA','2023-09-16'),(9,'George','Martinez','606 Chestnut St, Tracy, CA','2023-03-18'),(10,'Hannah','Wilson','707 Redwood St, Tracy, CA','2023-12-04'),(11,'Ivan','Moore','808 Cypress St, Tracy, CA','2023-12-28'),(12,'Jasmine','Thomas','909 Ash St, Tracy, CA','2023-03-08'),(13,'Kevin','White','1010 Magnolia St, Tracy, CA','2023-12-09'),(14,'Laura','Clark','1111 Poplar St, Tracy, CA','2023-02-24'),(15,'Michael','Lewis','1212 Fir St, Tracy, CA','2023-12-04'),(16,'Nina','Walker','1313 Alder St, Tracy, CA','2023-03-07'),(17,'Oscar','Hall','1414 Juniper St, Tracy, CA','2023-02-14'),(18,'Paula','Allen','1515 Willow St, Tracy, CA','2023-01-26'),(19,'Quinn','Young','1616 Sequoia St, Tracy, CA','2023-12-24'),(20,'Rachel','King','1717 Dogwood St, Tracy, CA','2023-09-12'),(21,'John','Smith','123 Elm St, Tracy, CA','2023-07-17'),(22,'Jane','Doe','456 Oak St, Tracy, CA','2023-08-15'),(23,'Alice','Johnson','789 Pine St, Tracy, CA','2023-06-23'),(24,'Bob','Brown','101 Maple St, Tracy, CA','2023-07-06'),(25,'Charlie','Davis','202 Cedar St, Tracy, CA','2023-02-16'),(26,'Diana','Evans','303 Spruce St, Tracy, CA','2023-02-08'),(27,'Edward','Garcia','404 Birch St, Tracy, CA','2023-02-21'),(28,'Fiona','Harris','505 Walnut St, Tracy, CA','2023-05-24'),(29,'George','Martinez','606 Chestnut St, Tracy, CA','2023-07-17'),(30,'Hannah','Wilson','707 Redwood St, Tracy, CA','2023-07-13'),(31,'Ivan','Moore','808 Cypress St, Tracy, CA','2023-01-11'),(32,'Jasmine','Thomas','909 Ash St, Tracy, CA','2023-07-22'),(33,'Kevin','White','1010 Magnolia St, Tracy, CA','2023-09-09'),(34,'Laura','Clark','1111 Poplar St, Tracy, CA','2023-10-11'),(35,'Michael','Lewis','1212 Fir St, Tracy, CA','2023-10-28'),(36,'Nina','Walker','1313 Alder St, Tracy, CA','2023-10-11'),(37,'Oscar','Hall','1414 Juniper St, Tracy, CA','2023-06-03'),(38,'Paula','Allen','1515 Willow St, Tracy, CA','2023-10-09'),(39,'Quinn','Young','1616 Sequoia St, Tracy, CA','2023-08-05'),(40,'Rachel','King','1717 Dogwood St, Tracy, CA','2023-08-26');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `DeliveryID` int NOT NULL AUTO_INCREMENT,
  `SupplierID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `StoreID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryRequestDate` date DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `SupplierID` (`SupplierID`),
  KEY `StoreID` (`StoreID`),
  KEY `idx_delivery_date` (`DeliveryDate`),
  KEY `idx_delivery_product_store` (`ProductID`,`StoreID`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`),
  CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`StoreID`) REFERENCES `store` (`StoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (401,3,12,2,3,'2024-12-17','2024-12-13'),(402,2,1,2,10,'2024-01-11','2024-01-07'),(403,1,2,1,19,'2024-08-26','2024-08-21'),(404,3,5,2,1,'2024-07-10','2024-07-05'),(405,2,17,2,3,'2024-01-02','2023-12-28'),(406,1,9,2,20,'2024-02-02','2024-02-01'),(407,3,1,1,11,'2024-01-10','2024-01-09'),(408,1,4,2,6,'2024-02-13','2024-02-12'),(409,3,4,1,11,'2024-08-13','2024-08-11'),(410,1,3,2,13,'2024-04-20','2024-04-15'),(411,1,17,2,2,'2024-05-04','2024-04-29'),(412,1,3,1,11,'2024-08-02','2024-07-29'),(413,1,11,2,4,'2024-07-06','2024-07-01'),(414,2,10,2,17,'2024-08-04','2024-08-01'),(415,2,13,1,12,'2024-03-02','2024-02-29'),(416,1,10,1,20,'2024-09-09','2024-09-05'),(417,3,7,1,18,'2024-06-04','2024-06-02'),(418,3,10,1,6,'2024-10-17','2024-10-14'),(419,2,3,2,1,'2024-01-19','2024-01-17'),(420,1,18,2,3,'2024-01-05','2024-01-04'),(421,2,5,2,1,'2024-06-25','2024-06-20'),(422,2,5,2,6,'2024-12-29','2024-12-24'),(423,3,3,1,14,'2024-06-17','2024-06-14'),(424,1,18,1,5,'2024-05-20','2024-05-15'),(425,2,20,2,13,'2024-07-10','2024-07-05'),(426,3,12,2,10,'2024-01-23','2024-01-21'),(427,1,18,1,14,'2024-06-19','2024-06-14'),(428,1,18,1,11,'2024-02-05','2024-02-02'),(429,2,20,1,9,'2024-06-08','2024-06-05'),(430,3,17,2,14,'2024-04-29','2024-04-27'),(431,3,10,1,11,'2024-12-17','2024-12-13'),(432,2,18,2,9,'2024-12-15','2024-12-13'),(433,1,10,2,18,'2024-09-20','2024-09-18'),(434,1,4,1,18,'2024-06-07','2024-06-04'),(435,2,10,2,17,'2024-12-08','2024-12-07'),(436,3,1,1,18,'2024-06-15','2024-06-10'),(437,3,8,2,20,'2024-04-11','2024-04-07'),(438,3,17,2,5,'2024-04-29','2024-04-25'),(439,2,20,2,7,'2024-11-05','2024-11-02'),(440,1,9,1,19,'2024-12-29','2024-12-28'),(441,3,18,2,20,'2024-10-18','2024-10-16'),(442,1,18,2,16,'2024-04-01','2024-03-30'),(443,1,18,2,7,'2024-10-19','2024-10-15'),(444,2,8,1,19,'2024-04-20','2024-04-17'),(445,1,20,1,11,'2024-11-26','2024-11-22'),(446,3,12,2,16,'2024-04-01','2024-03-28'),(447,3,5,2,20,'2024-04-19','2024-04-18'),(448,1,6,1,9,'2024-03-05','2024-02-29'),(449,2,5,1,15,'2024-10-28','2024-10-23'),(450,2,1,2,1,'2024-03-12','2024-03-07'),(451,1,9,1,15,'2024-03-13','2024-03-08'),(452,1,19,2,9,'2024-04-19','2024-04-17'),(453,1,3,2,20,'2024-04-08','2024-04-07'),(454,1,19,2,19,'2024-05-16','2024-05-11'),(455,2,11,2,19,'2024-05-21','2024-05-20'),(456,3,6,1,12,'2024-11-05','2024-11-02'),(457,2,14,2,18,'2024-05-30','2024-05-28'),(458,3,9,2,2,'2024-02-06','2024-02-01'),(459,1,3,1,12,'2024-09-26','2024-09-23'),(460,1,17,1,5,'2024-09-25','2024-09-20'),(461,3,14,1,10,'2024-09-28','2024-09-27'),(462,3,18,2,9,'2024-11-11','2024-11-06'),(463,2,4,2,7,'2024-04-27','2024-04-25'),(464,1,16,1,19,'2024-08-17','2024-08-15'),(465,3,12,2,20,'2024-06-13','2024-06-10'),(466,3,20,2,13,'2024-01-05','2024-01-04'),(467,3,20,1,16,'2024-04-27','2024-04-23'),(468,1,3,1,17,'2024-11-09','2024-11-04'),(469,1,3,1,17,'2024-01-31','2024-01-26'),(470,3,12,1,2,'2024-06-06','2024-06-02'),(471,1,17,2,4,'2024-11-11','2024-11-10'),(472,2,1,1,7,'2024-02-23','2024-02-22'),(473,3,7,1,1,'2024-04-25','2024-04-22'),(474,2,20,1,20,'2024-08-04','2024-07-30'),(475,2,5,1,13,'2024-09-06','2024-09-03'),(476,3,10,2,18,'2024-08-18','2024-08-16'),(477,1,14,2,18,'2024-04-27','2024-04-26'),(478,2,14,2,17,'2024-07-02','2024-06-27'),(479,3,6,1,13,'2024-04-29','2024-04-28'),(480,1,11,2,14,'2024-08-07','2024-08-06'),(481,1,7,1,3,'2024-05-15','2024-05-10'),(482,3,12,2,1,'2024-08-20','2024-08-16'),(483,1,5,1,5,'2024-03-13','2024-03-08'),(484,3,4,1,15,'2024-01-22','2024-01-19'),(485,2,20,1,1,'2024-05-04','2024-05-01'),(486,3,18,1,1,'2024-01-06','2024-01-01'),(487,1,16,1,16,'2024-09-14','2024-09-11'),(488,3,4,1,10,'2024-02-27','2024-02-24'),(489,3,17,1,8,'2024-09-22','2024-09-20'),(490,2,5,1,13,'2024-09-16','2024-09-13'),(491,1,4,1,7,'2024-12-26','2024-12-25'),(492,2,11,2,3,'2024-03-04','2024-02-28'),(493,1,2,1,10,'2024-07-04','2024-07-03'),(494,1,1,1,8,'2024-12-23','2024-12-20'),(495,3,9,1,16,'2024-01-09','2024-01-04'),(496,3,3,2,2,'2024-09-12','2024-09-11'),(497,2,15,2,20,'2024-12-28','2024-12-24'),(498,3,5,2,11,'2024-12-22','2024-12-17'),(499,1,1,2,17,'2024-08-14','2024-08-10'),(500,3,17,1,19,'2024-06-05','2024-06-01'),(501,1,6,2,17,'2024-09-20','2024-09-15'),(502,1,16,2,14,'2024-05-25','2024-05-22'),(503,2,12,1,12,'2024-01-16','2024-01-15'),(504,3,2,2,7,'2024-09-15','2024-09-10'),(505,2,13,2,1,'2024-05-29','2024-05-28'),(506,2,13,2,7,'2024-02-15','2024-02-12'),(507,1,2,2,19,'2024-09-22','2024-09-18'),(508,3,3,2,14,'2024-10-26','2024-10-24'),(509,1,12,2,17,'2024-06-12','2024-06-10'),(510,1,17,2,15,'2024-11-15','2024-11-10'),(511,1,16,2,3,'2024-09-19','2024-09-16'),(512,3,1,1,2,'2024-10-29','2024-10-24'),(513,1,9,2,6,'2024-03-24','2024-03-19'),(514,2,15,1,1,'2024-08-10','2024-08-08'),(515,3,19,1,1,'2024-02-11','2024-02-08'),(516,2,18,1,11,'2024-09-05','2024-09-03'),(517,3,4,2,11,'2024-03-11','2024-03-08'),(518,3,11,1,18,'2024-03-03','2024-03-01'),(519,3,6,2,19,'2024-01-14','2024-01-11'),(520,1,9,2,17,'2024-10-08','2024-10-07'),(521,2,19,2,6,'2024-05-11','2024-05-09'),(522,1,12,2,8,'2024-07-24','2024-07-19'),(523,2,17,1,14,'2024-02-08','2024-02-06'),(524,3,17,2,5,'2024-03-19','2024-03-18'),(525,2,18,2,19,'2024-11-27','2024-11-22'),(526,1,5,2,16,'2024-11-09','2024-11-06'),(527,1,9,2,9,'2024-10-24','2024-10-20'),(528,1,7,2,19,'2024-10-30','2024-10-25'),(529,2,1,2,18,'2024-09-13','2024-09-09'),(530,2,17,1,9,'2024-02-16','2024-02-11'),(531,1,16,2,10,'2024-07-30','2024-07-26'),(532,2,11,2,7,'2024-06-03','2024-05-30'),(533,3,11,2,11,'2024-10-16','2024-10-15'),(534,3,20,1,6,'2024-01-25','2024-01-20'),(535,3,6,1,6,'2024-09-25','2024-09-21'),(536,2,2,2,12,'2024-10-08','2024-10-03'),(537,3,7,2,9,'2024-02-21','2024-02-20'),(538,3,13,1,13,'2024-01-23','2024-01-22'),(539,1,20,1,9,'2024-02-23','2024-02-18'),(540,1,19,1,3,'2024-09-14','2024-09-12'),(541,2,9,1,17,'2024-02-07','2024-02-06'),(542,2,14,1,4,'2024-12-26','2024-12-23'),(543,1,6,2,17,'2024-06-24','2024-06-19'),(544,1,18,2,19,'2024-11-16','2024-11-11'),(545,1,10,1,8,'2024-12-17','2024-12-12'),(546,1,8,1,19,'2024-05-10','2024-05-06'),(547,1,18,1,7,'2024-08-01','2024-07-31'),(548,3,17,2,6,'2024-01-13','2024-01-12'),(549,1,5,1,16,'2024-09-12','2024-09-08'),(550,1,5,1,18,'2024-02-23','2024-02-21'),(551,3,19,1,18,'2024-05-23','2024-05-20'),(552,2,4,1,12,'2024-01-14','2024-01-11'),(553,2,14,2,14,'2024-03-29','2024-03-26'),(554,2,15,2,10,'2024-10-23','2024-10-18'),(555,3,18,1,14,'2024-09-12','2024-09-11'),(556,3,1,1,13,'2024-11-24','2024-11-21'),(557,1,3,1,6,'2024-03-03','2024-02-27'),(558,2,10,1,16,'2024-12-05','2024-11-30'),(559,3,1,2,7,'2024-01-20','2024-01-15'),(560,1,13,2,7,'2024-08-02','2024-07-28'),(561,3,19,1,16,'2024-01-28','2024-01-25'),(562,3,18,2,20,'2024-07-27','2024-07-24'),(563,1,19,1,18,'2024-08-09','2024-08-08'),(564,2,11,2,9,'2024-06-29','2024-06-25'),(565,2,9,2,10,'2024-04-06','2024-04-05'),(566,3,17,2,7,'2024-08-30','2024-08-25'),(567,2,18,2,8,'2024-10-20','2024-10-15'),(568,1,10,1,10,'2024-01-26','2024-01-24'),(569,1,18,1,10,'2024-10-10','2024-10-07'),(570,3,19,1,15,'2024-01-27','2024-01-26'),(571,1,10,1,8,'2024-08-19','2024-08-18'),(572,2,5,1,5,'2024-11-18','2024-11-16'),(573,3,2,1,17,'2024-11-30','2024-11-25'),(574,1,13,2,8,'2024-11-17','2024-11-12'),(575,2,4,2,19,'2024-04-06','2024-04-04'),(576,1,18,1,11,'2024-08-03','2024-08-02'),(577,2,19,2,7,'2024-12-08','2024-12-07'),(578,2,4,2,5,'2024-10-12','2024-10-07'),(579,3,10,1,9,'2024-11-01','2024-10-29'),(580,1,4,2,16,'2024-01-27','2024-01-26'),(581,2,18,2,2,'2024-12-19','2024-12-16'),(582,2,15,1,5,'2024-07-28','2024-07-24'),(583,2,17,2,9,'2024-11-10','2024-11-06'),(584,2,18,1,11,'2024-05-29','2024-05-25'),(585,3,8,1,2,'2024-11-22','2024-11-17'),(586,3,5,1,3,'2024-12-28','2024-12-24'),(587,1,1,1,18,'2024-07-14','2024-07-12'),(588,2,17,2,8,'2024-10-18','2024-10-16'),(589,1,6,1,11,'2024-01-16','2024-01-15'),(590,3,12,2,7,'2024-07-17','2024-07-16'),(591,3,17,2,6,'2024-09-10','2024-09-07'),(592,2,3,2,5,'2024-06-21','2024-06-17'),(593,1,8,2,16,'2024-05-08','2024-05-07'),(594,3,13,2,15,'2024-12-27','2024-12-24'),(595,3,15,1,2,'2024-01-30','2024-01-28'),(596,3,9,2,4,'2024-02-13','2024-02-10'),(597,1,17,1,4,'2024-03-23','2024-03-19'),(598,3,14,2,11,'2024-08-01','2024-07-30'),(599,3,1,1,15,'2024-03-09','2024-03-07'),(600,2,12,2,16,'2024-02-26','2024-02-23');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `StoreID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `StoreID` (`StoreID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `store` (`StoreID`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,50),(2,1,2,30),(3,1,3,100),(4,1,4,150),(5,1,5,80),(6,1,6,20),(7,1,7,15),(8,1,8,60),(9,1,9,90),(10,1,10,70),(11,1,11,50),(12,1,12,100),(13,1,13,40),(14,1,14,30),(15,1,15,60),(16,1,16,80),(17,1,17,70),(18,1,18,25),(19,1,19,40),(20,1,20,50),(21,2,1,0),(22,2,2,25),(23,2,3,40),(24,2,4,100),(25,2,5,70),(26,2,6,10),(27,2,7,0),(28,2,8,50),(29,2,9,60),(30,2,10,40),(31,2,11,30),(32,2,12,50),(33,2,13,20),(34,2,14,0),(35,2,15,30),(36,2,16,40),(37,2,17,50),(38,2,18,20),(39,2,19,60),(40,2,20,30);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `CategoryID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` text,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone',1,1,299.99,'Latest model smartphone with 128GB storage'),(2,'Laptop',1,1,999.99,'High-performance laptop with 16GB RAM'),(3,'Headphones',1,2,49.99,'Noise-cancelling over-ear headphones'),(4,'T-Shirt',2,2,19.99,'Comfortable cotton t-shirt in various sizes'),(5,'Jeans',2,2,39.99,'Stylish denim jeans'),(6,'Microwave',3,3,89.99,'Compact microwave oven with digital controls'),(7,'Refrigerator',3,3,499.99,'Energy-efficient refrigerator with large capacity'),(8,'Toaster',3,1,29.99,'Two-slice toaster with adjustable settings'),(9,'Toy Car',4,2,9.99,'Remote control toy car'),(10,'Doll',4,3,14.99,'Fashionable doll with accessories'),(11,'Puzzle',4,1,12.99,'1000-piece jigsaw puzzle'),(12,'Children\'s Book',5,1,6.99,'Illustrated children\'s storybook'),(13,'Novel',5,2,15.99,'Bestselling fiction novel'),(14,'Cookbook',5,3,24.99,'Gourmet cookbook with recipes'),(15,'Smartwatch',1,1,199.99,'Fitness-tracking smartwatch'),(16,'Bluetooth Speaker',1,2,59.99,'Portable Bluetooth speaker with excellent sound quality'),(17,'Jacket',2,2,79.99,'Waterproof and windproof jacket'),(18,'Blender',3,3,69.99,'High-speed blender with multiple settings'),(19,'Board Game',4,2,29.99,'Popular strategy board game'),(20,'Non-Fiction Book',5,3,18.99,'Informative non-fiction book on various topics');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `SaleID` int NOT NULL AUTO_INCREMENT,
  `ProductID` int DEFAULT NULL,
  `StoreID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `SaleDate` date DEFAULT NULL,
  PRIMARY KEY (`SaleID`),
  KEY `StoreID` (`StoreID`),
  KEY `idx_sale_date` (`SaleDate`),
  KEY `idx_sale_product_store` (`ProductID`,`StoreID`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`StoreID`) REFERENCES `store` (`StoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,10,1,7,'2024-01-04'),(2,3,1,1,'2024-12-19'),(3,13,1,8,'2024-08-08'),(4,13,1,9,'2024-05-24'),(5,6,1,5,'2024-07-06'),(6,4,1,3,'2024-12-29'),(7,8,2,10,'2024-06-04'),(8,5,2,3,'2024-01-24'),(9,10,1,4,'2024-03-25'),(10,4,1,9,'2024-03-26'),(11,11,2,6,'2024-04-09'),(12,15,2,4,'2024-01-25'),(13,5,2,2,'2024-09-19'),(14,5,2,3,'2024-03-24'),(15,9,1,2,'2024-04-23'),(16,2,1,2,'2024-06-27'),(17,18,2,8,'2024-05-06'),(18,7,2,3,'2024-05-19'),(19,2,1,4,'2024-11-03'),(20,3,1,8,'2024-10-23'),(21,15,1,2,'2024-11-20'),(22,1,1,1,'2024-10-13'),(23,19,1,5,'2024-09-25'),(24,4,2,10,'2024-06-29'),(25,15,1,7,'2024-11-02'),(26,4,1,5,'2024-01-14'),(27,17,1,10,'2024-08-19'),(28,5,1,10,'2024-06-11'),(29,8,1,2,'2024-04-29'),(30,6,1,7,'2024-07-05'),(31,11,1,10,'2024-07-14'),(32,16,1,6,'2024-02-28'),(33,5,2,5,'2024-07-20'),(34,6,2,2,'2024-06-16'),(35,16,1,8,'2024-06-02'),(36,19,1,3,'2024-01-11'),(37,8,2,2,'2024-01-02'),(38,14,1,9,'2024-12-26'),(39,10,1,9,'2024-10-31'),(40,13,2,7,'2024-01-11'),(41,5,1,10,'2024-03-18'),(42,7,2,5,'2024-07-26'),(43,11,2,4,'2024-10-23'),(44,20,1,5,'2024-12-06'),(45,5,1,2,'2024-07-10'),(46,5,2,7,'2024-01-27'),(47,11,1,1,'2024-03-13'),(48,19,2,2,'2024-12-05'),(49,3,2,7,'2024-08-27'),(50,10,1,5,'2024-01-04'),(51,16,2,3,'2024-06-26'),(52,14,2,7,'2024-04-30'),(53,16,2,10,'2024-05-08'),(54,17,2,5,'2024-05-04'),(55,7,2,6,'2024-08-11'),(56,8,1,5,'2024-12-17'),(57,9,1,4,'2024-08-18'),(58,20,2,7,'2024-05-28'),(59,4,2,6,'2024-01-19'),(60,11,1,6,'2024-06-09'),(61,12,2,4,'2024-09-20'),(62,14,1,9,'2024-07-19'),(63,7,2,10,'2024-11-07'),(64,8,1,5,'2024-05-09'),(65,8,2,3,'2024-09-09'),(66,13,1,7,'2024-01-25'),(67,6,1,1,'2024-10-31'),(68,19,1,2,'2024-04-27'),(69,2,1,4,'2024-09-05'),(70,10,1,1,'2024-05-26'),(71,17,2,5,'2024-03-21'),(72,16,1,1,'2024-07-18'),(73,10,2,3,'2024-03-17'),(74,4,1,9,'2024-06-20'),(75,16,1,8,'2024-05-01'),(76,11,2,10,'2024-09-02'),(77,10,1,2,'2024-11-14'),(78,18,2,3,'2024-01-16'),(79,8,2,7,'2024-12-28'),(80,1,1,4,'2024-08-20'),(81,2,1,7,'2024-12-27'),(82,3,2,9,'2024-06-26'),(83,16,1,6,'2024-10-01'),(84,1,2,5,'2024-06-05'),(85,18,1,6,'2024-08-18'),(86,11,2,3,'2024-12-16'),(87,1,1,5,'2024-06-22'),(88,19,1,10,'2024-06-01'),(89,4,2,8,'2024-08-28'),(90,3,2,9,'2024-04-27'),(91,2,1,5,'2024-05-24'),(92,11,2,10,'2024-03-18'),(93,5,1,4,'2024-09-26'),(94,11,1,5,'2024-11-02'),(95,20,1,2,'2024-04-25'),(96,5,1,8,'2024-10-17'),(97,16,1,10,'2024-03-24'),(98,9,1,7,'2024-12-07'),(99,18,1,7,'2024-01-25'),(100,6,1,5,'2024-06-01'),(101,16,2,6,'2024-02-18'),(102,20,1,1,'2024-01-23'),(103,4,2,1,'2024-02-10'),(104,8,2,2,'2024-07-24'),(105,10,2,3,'2024-10-31'),(106,12,1,7,'2024-08-12'),(107,1,1,4,'2024-11-05'),(108,5,2,2,'2024-02-18'),(109,4,1,6,'2024-06-14'),(110,14,1,1,'2024-03-01'),(111,15,1,10,'2024-11-26'),(112,11,1,5,'2024-05-28'),(113,11,1,8,'2024-03-07'),(114,16,1,2,'2024-09-29'),(115,8,2,1,'2024-03-26'),(116,2,2,7,'2024-11-03'),(117,6,2,7,'2024-09-06'),(118,8,2,1,'2024-09-08'),(119,7,2,10,'2024-11-20'),(120,14,2,3,'2024-06-13'),(121,9,2,2,'2024-12-05'),(122,2,2,5,'2024-07-18'),(123,10,2,2,'2024-06-01'),(124,16,2,9,'2024-05-10'),(125,5,1,7,'2024-11-17'),(126,12,1,3,'2024-11-19'),(127,11,1,7,'2024-01-12'),(128,5,1,10,'2024-03-13'),(129,5,2,3,'2024-05-03'),(130,1,1,7,'2024-10-17'),(131,1,2,9,'2024-12-08'),(132,2,2,1,'2024-03-12'),(133,18,2,2,'2024-06-20'),(134,19,1,2,'2024-05-14'),(135,6,1,7,'2024-04-18'),(136,12,2,2,'2024-12-19'),(137,6,2,10,'2024-11-26'),(138,16,1,5,'2024-11-01'),(139,17,2,2,'2024-03-31'),(140,16,1,2,'2024-07-27'),(141,7,1,1,'2024-02-20'),(142,12,2,9,'2024-07-20'),(143,7,2,4,'2024-05-10'),(144,13,1,5,'2024-12-18'),(145,11,2,3,'2024-01-28'),(146,11,1,6,'2024-07-25'),(147,3,2,9,'2024-08-27'),(148,16,1,7,'2024-04-09'),(149,8,1,3,'2024-03-11'),(150,2,2,2,'2024-11-25'),(151,4,1,9,'2024-03-20'),(152,14,2,2,'2024-09-25'),(153,7,1,2,'2024-05-13'),(154,10,1,6,'2024-01-01'),(155,10,1,9,'2024-10-19'),(156,10,1,8,'2024-10-14'),(157,12,1,8,'2024-05-24'),(158,13,1,3,'2024-04-12'),(159,12,2,2,'2024-08-22'),(160,19,2,3,'2024-08-30'),(161,9,1,6,'2024-05-23'),(162,5,2,7,'2024-11-12'),(163,6,2,7,'2024-04-29'),(164,13,1,4,'2024-07-01'),(165,12,1,8,'2024-11-24'),(166,6,2,1,'2024-07-01'),(167,8,1,2,'2024-05-29'),(168,12,2,2,'2024-02-25'),(169,5,2,2,'2024-05-29'),(170,12,2,1,'2024-10-28'),(171,2,2,9,'2024-11-22'),(172,18,2,1,'2024-12-25'),(173,17,1,10,'2024-09-14'),(174,12,2,6,'2024-11-02'),(175,11,1,3,'2024-08-19'),(176,10,2,3,'2024-09-18'),(177,16,2,1,'2024-03-12'),(178,18,2,2,'2024-05-03'),(179,7,2,6,'2024-09-10'),(180,16,2,2,'2024-10-07'),(181,8,1,3,'2024-10-19'),(182,7,1,7,'2024-12-11'),(183,16,2,5,'2024-07-16'),(184,6,2,9,'2024-02-29'),(185,4,1,8,'2024-04-14'),(186,5,1,7,'2024-08-14'),(187,1,1,7,'2024-01-08'),(188,6,1,6,'2024-11-27'),(189,19,2,6,'2024-02-02'),(190,17,2,4,'2024-09-22'),(191,13,1,4,'2024-06-10'),(192,6,2,10,'2024-12-29'),(193,2,1,9,'2024-03-04'),(194,4,1,7,'2024-10-21'),(195,4,1,3,'2024-04-02'),(196,10,2,2,'2024-06-14'),(197,18,1,9,'2024-02-03'),(198,17,2,3,'2024-01-22'),(199,11,2,10,'2024-04-04'),(200,9,1,2,'2024-02-17');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `StoreID` int NOT NULL AUTO_INCREMENT,
  `StoreName` varchar(100) NOT NULL,
  `StoreLocation` varchar(100) NOT NULL,
  PRIMARY KEY (`StoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Main Street Store','123 Main St, Tracy, CA'),(2,'Second Street Store','456 Second St, Tracy, CA');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(100) NOT NULL,
  `ContactInfo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Supplier One','contact@supplierone.com'),(2,'Supplier Two','contact@suppliertwo.com'),(3,'Supplier Three','contact@supplierthree.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'smartshopdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `CalculateMonthlySales2024` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateMonthlySales2024`()
BEGIN
    -- Create a temporary table to store the results
    CREATE TEMPORARY TABLE MonthlySales (
        ProductID INT,
        Jan INT DEFAULT 0,
        Feb INT DEFAULT 0,
        Mar INT DEFAULT 0,
        Apr INT DEFAULT 0,
        May INT DEFAULT 0,
        Jun INT DEFAULT 0,
        Jul INT DEFAULT 0,
        Aug INT DEFAULT 0,
        Sep INT DEFAULT 0,
        Oct INT DEFAULT 0,
        Nov INT DEFAULT 0,
        Dece INT DEFAULT 0
    );

    -- Insert aggregated sales data into the temporary table
    INSERT INTO MonthlySales (ProductID, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dece)
    SELECT 
        ProductID,
        SUM(CASE WHEN MONTH(SaleDate) = 1 THEN Quantity ELSE 0 END) AS Jan,
        SUM(CASE WHEN MONTH(SaleDate) = 2 THEN Quantity ELSE 0 END) AS Feb,
        SUM(CASE WHEN MONTH(SaleDate) = 3 THEN Quantity ELSE 0 END) AS Mar,
        SUM(CASE WHEN MONTH(SaleDate) = 4 THEN Quantity ELSE 0 END) AS Apr,
        SUM(CASE WHEN MONTH(SaleDate) = 5 THEN Quantity ELSE 0 END) AS May,
        SUM(CASE WHEN MONTH(SaleDate) = 6 THEN Quantity ELSE 0 END) AS Jun,
        SUM(CASE WHEN MONTH(SaleDate) = 7 THEN Quantity ELSE 0 END) AS Jul,
        SUM(CASE WHEN MONTH(SaleDate) = 8 THEN Quantity ELSE 0 END) AS Aug,
        SUM(CASE WHEN MONTH(SaleDate) = 9 THEN Quantity ELSE 0 END) AS Sep,
        SUM(CASE WHEN MONTH(SaleDate) = 10 THEN Quantity ELSE 0 END) AS Oct,
        SUM(CASE WHEN MONTH(SaleDate) = 11 THEN Quantity ELSE 0 END) AS Nov,
        SUM(CASE WHEN MONTH(SaleDate) = 12 THEN Quantity ELSE 0 END) AS Dece
    FROM Sale
    WHERE YEAR(SaleDate) = 2024
    GROUP BY ProductID
    ORDER BY ProductID;

    -- Select the result from the temporary table
    SELECT * FROM MonthlySales;

    -- Drop the temporary table
    DROP TEMPORARY TABLE MonthlySales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateProductLeadTimes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateProductLeadTimes`()
BEGIN
    -- Create a temporary table to store the results
    CREATE TEMPORARY TABLE ProductLeadTimes (
        ProductID INT,
        MaxLeadTime INT,
        MinLeadTime INT,
        AvgLeadTime DECIMAL(10, 2)
    );

    -- Insert aggregated lead time data into the temporary table
    INSERT INTO ProductLeadTimes (ProductID, MaxLeadTime, MinLeadTime, AvgLeadTime)
    SELECT 
        ProductID,
        MAX(DATEDIFF(DeliveryDate, DeliveryRequestDate)) AS MaxLeadTime,
        MIN(DATEDIFF(DeliveryDate, DeliveryRequestDate)) AS MinLeadTime,
        AVG(DATEDIFF(DeliveryDate, DeliveryRequestDate)) AS AvgLeadTime
    FROM Delivery
    GROUP BY ProductID
    ORDER BY ProductID;

    -- Select the result from the temporary table
    SELECT * FROM ProductLeadTimes;

    -- Drop the temporary table
    DROP TEMPORARY TABLE ProductLeadTimes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateTotalProductSales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateTotalProductSales`()
BEGIN
    -- Declare variable for product name
    DECLARE productName VARCHAR(255);

    -- Create a temporary table to store the results
    CREATE TEMPORARY TABLE ProductSales (
        ProductID INT,
        ProductName VARCHAR(255),
        TotalSales INT
    );

    -- Insert aggregated sales data into the temporary table
    INSERT INTO ProductSales (ProductID, ProductName, TotalSales)
    SELECT p.ProductID, p.ProductName, IFNULL(SUM(s.Quantity), 0) AS TotalSales
    FROM Product p
    LEFT JOIN Sale s ON p.ProductID = s.ProductID
    GROUP BY p.ProductID, p.ProductName;

    -- Select the result from the temporary table
    SELECT * FROM ProductSales;

    -- Drop the temporary table
    DROP TEMPORARY TABLE ProductSales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateTotalSalesPerProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateTotalSalesPerProduct`()
BEGIN
    -- Create a temporary table to store the results
    CREATE TEMPORARY TABLE TotalSales (
        ProductID INT,
        TotalSales INT
    );

    -- Insert aggregated sales data into the temporary table
    INSERT INTO TotalSales (ProductID, TotalSales)
    SELECT 
        ProductID, 
        SUM(Quantity) AS TotalSales
    FROM Sale
    GROUP BY ProductID
    ORDER BY ProductID;

    -- Select the result from the temporary table
    SELECT * FROM TotalSales;

    -- Drop the temporary table
    DROP TEMPORARY TABLE TotalSales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountRowsInTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user`@`localhost` PROCEDURE `CountRowsInTables`(IN arg1 INTEGER, OUT arg2 INTEGER)
BEGIN
    /* Insert the procedure code here. */
    SET arg2 = arg1 * 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateSampleDeliveries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateSampleDeliveries`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE maxDeliveries INT DEFAULT 200;
    DECLARE deliveryDate DATE;
    DECLARE requestDate DATE;

    WHILE i <= maxDeliveries DO
        -- Generate random delivery date
        SET deliveryDate = DATE_ADD('2024-01-01', INTERVAL FLOOR(RAND() * 365) DAY);
        
        -- Generate random request date 1-5 days before the delivery date
        SET requestDate = DATE_SUB(deliveryDate, INTERVAL FLOOR(1 + (RAND() * 5)) DAY);

        INSERT INTO Delivery (SupplierID, ProductID, StoreID, Quantity, DeliveryDate, DeliveryRequestDate)
        VALUES (
            FLOOR(1 + (RAND() * 3)), -- Random SupplierID between 1 and 3
            FLOOR(1 + (RAND() * 20)), -- Random ProductID between 1 and 20
            FLOOR(1 + (RAND() * 2)), -- Random StoreID between 1 and 2
            FLOOR(1 + (RAND() * 20)), -- Random Quantity between 1 and 20
            deliveryDate,
            requestDate
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateSampleSales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateSampleSales`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE maxSales INT DEFAULT 200;

    WHILE i <= maxSales DO
        INSERT INTO Sale (ProductID, StoreID, Quantity, SaleDate)
        VALUES (
            FLOOR(1 + (RAND() * 20)), -- Random ProductID between 1 and 20
            FLOOR(1 + (RAND() * 2)), -- Random StoreID between 1 and 2
            FLOOR(1 + (RAND() * 10)), -- Random Quantity between 1 and 10
            DATE_ADD('2024-01-01', INTERVAL FLOOR(RAND() * 365) DAY) -- Random date in 2024
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts`()
begin
select * from product;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSuppliers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSuppliers`()
BEGIN
    SELECT 
        SupplierID,
        SupplierName,
        ContactInfo
    FROM 
        Supplier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSuppliersSortedBySupplierName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSuppliersSortedBySupplierName`()
BEGIN
    SELECT 
        SupplierID,
        SupplierName,
        ContactInfo
    FROM 
        Supplier
    ORDER BY 
        SupplierName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryByStore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryByStore`(IN storeId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.StoreID = storeId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryByStoreId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryByStoreId`(IN storeId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.StoreID = storeId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryFilteredByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryFilteredByProductId`(IN productId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.ProductID = productId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryFilteredByProductIdSortedByStoreName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryFilteredByProductIdSortedByStoreName`(IN productId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.ProductID = productId
        AND i.Quantity > 0
    ORDER BY 
        s.StoreName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryFilteredByStoreId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryFilteredByStoreId`(IN storeId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.StoreID = storeId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryFilteredByStoreIdSortedByProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryFilteredByStoreIdSortedByProductName`(IN storeId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.StoreID = storeId
        AND i.Quantity > 0
    ORDER BY 
        p.ProductName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryForProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryForProduct`(IN productId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.ProductID = productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventoryForProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryForProductId`(IN productId INT)
BEGIN
    SELECT 
        i.InventoryID,
        s.StoreName,
        p.ProductName,
        i.Quantity
    FROM 
        Inventory i
    JOIN 
        Store s ON i.StoreID = s.StoreID
    JOIN 
        Product p ON i.ProductID = p.ProductID
    WHERE 
        i.ProductID = productId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductDetails`(IN productId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        c.CategoryName,
        s.SupplierName,
        p.Price,
        p.Description
    FROM 
        Product p
    JOIN 
        Category c ON p.CategoryID = c.CategoryID
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    WHERE 
        p.ProductID = productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductDetailsByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductDetailsByProductId`(IN productId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        c.CategoryName,
        s.SupplierName,
        p.Price,
        p.Description
    FROM 
        Product p
    JOIN 
        Category c ON p.CategoryID = c.CategoryID
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.ProductID = productId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductDetailsFilteredByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductDetailsFilteredByProductId`(IN productId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        c.CategoryName,
        s.SupplierName,
        p.Price,
        p.Description
    FROM 
        Product p
    JOIN 
        Category c ON p.CategoryID = c.CategoryID
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.ProductID = productId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductDetailsFilteredByProductIdSortedByProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductDetailsFilteredByProductIdSortedByProductName`(IN productId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        c.CategoryName,
        s.SupplierName,
        p.Price,
        p.Description
    FROM 
        Product p
    JOIN 
        Category c ON p.CategoryID = c.CategoryID
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.ProductID = productId
        AND i.Quantity > 0
    ORDER BY 
        p.ProductName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsByCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsByCategory`(IN categoryId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        p.Price,
        p.Description,
        s.SupplierName
    FROM 
        Product p
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    WHERE 
        p.CategoryID = categoryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsByCategoryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsByCategoryId`(IN categoryId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        p.Price,
        p.Description,
        s.SupplierName
    FROM 
        Product p
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.CategoryID = categoryId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsFilteredByCategoryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsFilteredByCategoryId`(IN categoryId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        p.Price,
        p.Description,
        s.SupplierName
    FROM 
        Product p
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.CategoryID = categoryId
        AND i.Quantity > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsFilteredByCategoryIdSortedByProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsFilteredByCategoryIdSortedByProductName`(IN categoryId INT)
BEGIN
    SELECT 
        p.ProductID,
        p.ProductName,
        p.Price,
        p.Description,
        s.SupplierName
    FROM 
        Product p
    JOIN 
        Supplier s ON p.SupplierID = s.SupplierID
    JOIN 
        Inventory i ON p.ProductID = i.ProductID
    WHERE 
        p.CategoryID = categoryId
        AND i.Quantity > 0
    ORDER BY 
        p.ProductName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RunningPerStoreInventoryChanges` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RunningPerStoreInventoryChanges`()
BEGIN
    -- Declare variables
    DECLARE done INT DEFAULT FALSE;
    DECLARE event VARCHAR(10);
    DECLARE eventDate DATE;
    DECLARE storeID INT;
    DECLARE productID INT;
    DECLARE quantityChange INT;
    DECLARE startTime TIMESTAMP(3);
    DECLARE endTime TIMESTAMP(3);
    DECLARE elapsedTime DECIMAL(10, 3);

    -- Declare cursor for combined deliveries and sales
    DECLARE cur CURSOR FOR 
        SELECT 'Delivery' AS Event, DeliveryDate AS EventDate, StoreID, ProductID, Quantity
        FROM Delivery
        UNION ALL
        SELECT 'Sale' AS Event, SaleDate AS EventDate, StoreID, ProductID, -Quantity
        FROM Sale
        ORDER BY EventDate;

    -- Declare continue handler
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Create a temporary table to store the running inventory
    CREATE TEMPORARY TABLE TempInventory (
        StoreID INT,
        ProductID INT,
        Inventory INT DEFAULT 0
    );
    
    -- Add an index per Copilot recommendation
    CREATE INDEX idx_temp_inventory_store_product ON TempInventory (StoreID, ProductID);

    -- Populate initial inventory values from deliveries
    INSERT INTO TempInventory (StoreID, ProductID, Inventory)
    SELECT StoreID, ProductID, SUM(Quantity)
    FROM Delivery
    GROUP BY StoreID, ProductID;

    -- Get the start time
    SET startTime = CURRENT_TIMESTAMP(3);

    -- Open cursor
    OPEN cur;

    -- Loop through cursor
    read_loop: LOOP
        FETCH cur INTO event, eventDate, storeID, productID, quantityChange;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Update running inventory
        UPDATE TempInventory
        SET Inventory = Inventory + quantityChange
        WHERE StoreID = storeID AND ProductID = productID;

        -- Insert into result table
        SELECT eventDate AS Date, event AS Event, storeID AS StoreID, productID AS ProductID, 
               quantityChange AS QuantityChange, 
               (SELECT Inventory FROM TempInventory WHERE StoreID = storeID AND ProductID = productID) AS CurrentInventory;
    END LOOP;

    -- Close cursor
    CLOSE cur;

    -- Get the end time
    SET endTime = CURRENT_TIMESTAMP(3);

    -- Calculate elapsed time in milliseconds
    SET elapsedTime = TIMESTAMPDIFF(MICROSECOND, startTime, endTime) / 1000;

    -- Output the elapsed time
    SELECT CONCAT('Elapsed time: ', elapsedTime, ' milliseconds') AS ElapsedTime;

    -- Drop temporary table
    DROP TEMPORARY TABLE TempInventory;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RunningPerStoreInventoryChanges_NoCursors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RunningPerStoreInventoryChanges_NoCursors`()
BEGIN
    -- Declare variables
    DECLARE startTime TIMESTAMP(3);
    DECLARE endTime TIMESTAMP(3);
    DECLARE elapsedTime DECIMAL(10, 3);

    -- Get the start time
    SET startTime = CURRENT_TIMESTAMP(3);

    -- Create a result table to store running inventory changes
    CREATE TEMPORARY TABLE ResultInventory (
        EventDate DATE,
        Event VARCHAR(10),
        StoreID INT,
        ProductID INT,
        QuantityChange INT,
        CurrentInventory INT
    );

    -- Calculate initial inventory based on deliveries
    INSERT INTO ResultInventory (EventDate, Event, StoreID, ProductID, QuantityChange, CurrentInventory)
    SELECT DeliveryDate AS EventDate, 'Delivery' AS Event, StoreID, ProductID, Quantity,
           SUM(Quantity) OVER (PARTITION BY StoreID, ProductID ORDER BY DeliveryDate) AS CurrentInventory
    FROM Delivery;

    -- Update inventory based on sales
    INSERT INTO ResultInventory (EventDate, Event, StoreID, ProductID, QuantityChange, CurrentInventory)
    SELECT SaleDate AS EventDate, 'Sale' AS Event, StoreID, ProductID, -Quantity,
           (SUM(Quantity) OVER (PARTITION BY StoreID, ProductID ORDER BY SaleDate) +
           IFNULL((SELECT SUM(Quantity) FROM Delivery d WHERE d.StoreID = s.StoreID AND d.ProductID = s.ProductID AND d.DeliveryDate <= s.SaleDate), 0)) AS CurrentInventory
    FROM Sale s;

    -- Get the end time
    SET endTime = CURRENT_TIMESTAMP(3);

    -- Calculate elapsed time in milliseconds
    SET elapsedTime = TIMESTAMPDIFF(MICROSECOND, startTime, endTime) / 1000;

    -- Output the result
    SELECT EventDate, Event, StoreID, ProductID, QuantityChange, CurrentInventory FROM ResultInventory ORDER BY EventDate;

    -- Output the elapsed time
    SELECT CONCAT('Elapsed time: ', elapsedTime, ' milliseconds') AS ElapsedTime;

    -- Drop temporary table
    DROP TEMPORARY TABLE ResultInventory;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RunningPerStoreInventoryChanges_NoCursors_WithJoin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RunningPerStoreInventoryChanges_NoCursors_WithJoin`()
BEGIN
    -- Declare variables
    DECLARE startTime TIMESTAMP(3);
    DECLARE endTime TIMESTAMP(3);
    DECLARE elapsedTime DECIMAL(10, 3);

    -- Get the start time
    SET startTime = CURRENT_TIMESTAMP(3);

    -- Create a combined result set with running inventory
    SELECT EventDate, Event, StoreID, ProductID, SUM(QuantityChange) AS QuantityChange,
           SUM(SUM(QuantityChange)) OVER (PARTITION BY StoreID, ProductID ORDER BY EventDate) AS CurrentInventory
    FROM (
        SELECT DeliveryDate AS EventDate, 'Delivery' AS Event, StoreID, ProductID, Quantity AS QuantityChange
        FROM Delivery
        UNION ALL
        SELECT SaleDate AS EventDate, 'Sale' AS Event, StoreID, ProductID, -Quantity AS QuantityChange
        FROM Sale
    ) AS InventoryChanges
    GROUP BY EventDate, Event, StoreID, ProductID
    ORDER BY EventDate;

    -- Get the end time
    SET endTime = CURRENT_TIMESTAMP(3);

    -- Calculate elapsed time in milliseconds
    SET elapsedTime = TIMESTAMPDIFF(MICROSECOND, startTime, endTime) / 1000;

    -- Output the elapsed time
    SELECT CONCAT('Elapsed time: ', elapsedTime, ' milliseconds') AS ElapsedTime;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Run_All_Procedures` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Run_All_Procedures`()
BEGIN
select 'Calling Calling GetAllProducts()' into @message;
select @message;
call GetAllProducts();
select 'Calling CallingAllSuppliers()' into @message;
select @message;
call GetAllSuppliers();
select 'Calling GetAllSuppliersSortedBySupplierName()' into @message;
select @message;
call GetAllSuppliersSortedBySupplierName();
select 'Calling GetInventoryByStore(1)' into @message;
select @message;
call GetInventoryByStore(1);
select 'Calling GetInventoryFilteredByProductId(1)' into @message;
select @message;
call GetInventoryFilteredByProductId(1);
select 'Calling GetInventoryFilteredByProductIdSortedByStoreName(1)' into @message;
select @message;
call GetInventoryFilteredByProductIdSortedByStoreName(1);
select 'Calling GetInventoryFilteredByStoreId(1)' into @message;
select @message;
call GetInventoryFilteredByStoreId(1);
select 'Calling GetInventoryFilteredByStoreIdSortedByProductName(1)' into @message;
select @message;
call GetInventoryFilteredByStoreIdSortedByProductName(1);
select 'Calling GetInventoryForProduct(1)' into @message;
select @message;
call GetInventoryForProduct(1);
select 'Calling GetInventoryForProductId(1)' into @message;
select @message;
call GetInventoryForProductId(1);
select 'Calling GetProductDetails(1)' into @message;
select @message;
call GetProductDetails(1);
select 'Calling GetProductDetailsByProductId(1)' into @message;
select @message;
call GetProductDetailsByProductId(1);
select 'Calling GetProductDetailsFilteredByProductIdSortedByProductName(1)';
call GetProductDetailsFilteredByProductIdSortedByProductName(1);
select 'Calling GetProductsByCategory(1)' into @message;
select @message;
call GetProductsByCategory(1);
select 'Calling GetProductsByCategoryId(1)' into @message;
select @message;
call GetProductsByCategoryId(1);
select 'Calling GetProductsFilteredByCategoryId(1)' into @message;
select @message;
call GetProductsFilteredByCategoryId(1);
select 'Calling GetProductsFilteredByCategoryIdSortedByProductName(1)' into @message;
select @message;
call GetProductsFilteredByCategoryIdSortedByProductName(1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-21 14:10:14
