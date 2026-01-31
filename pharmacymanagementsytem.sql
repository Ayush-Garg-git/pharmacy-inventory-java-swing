-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacymanagementsytem
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `application_users`
--

DROP TABLE IF EXISTS `application_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(60) DEFAULT NULL,
  `user_Role` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_users`
--

LOCK TABLES `application_users` WRITE;
/*!40000 ALTER TABLE `application_users` DISABLE KEYS */;
INSERT INTO `application_users` VALUES (1,'sumit22','pharmacist','sumit','2000-02-02','9818457876','manali','sumit22@gmail.com','sumit'),(2,'Ayush123','Admin','Ayush','2000-02-02','9818457876','manali','sumit22@gmail.com','Ayush'),(3,'Ayush1234','Pahrmacist','Ayush GArg','1-January-2012 ','9818549572','rohini','garg3444@gmail.com','Ayush123');
/*!40000 ALTER TABLE `application_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_data`
--

DROP TABLE IF EXISTS `bill_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_data` (
  `Bill_serialNumber` int NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(200) DEFAULT NULL,
  `bill_date` varchar(200) DEFAULT NULL,
  `Total_Amount` bigint DEFAULT NULL,
  `generatedBy` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Bill_serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_data`
--

LOCK TABLES `bill_data` WRITE;
/*!40000 ALTER TABLE `bill_data` DISABLE KEYS */;
INSERT INTO `bill_data` VALUES (1,'Bill-134634223707800','06-06-2025',464,'sumit22'),(2,'Bill-134941591206799','06-06-2025',374,'sumit22'),(3,'Bill-78353406894000','08-06-2025',4589,'sagar'),(4,'Bill-361026288335900','31-01-2026',1820,'Ayush1234');
/*!40000 ALTER TABLE `bill_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_data`
--

DROP TABLE IF EXISTS `medicine_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_data` (
  `medicineSerialNumber` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `companyName` varchar(300) DEFAULT NULL,
  `MedicneId` varchar(300) DEFAULT NULL,
  `Price` bigint DEFAULT NULL,
  `Quantity` bigint DEFAULT NULL,
  PRIMARY KEY (`medicineSerialNumber`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_data`
--

LOCK TABLES `medicine_data` WRITE;
/*!40000 ALTER TABLE `medicine_data` DISABLE KEYS */;
INSERT INTO `medicine_data` VALUES (1,'Daflon 45mg','dolo','201',780,9025),(4,'Dolo','safrox','34095',10,4),(9,'Daflon 95mg','safrox','67893',67,18),(10,'eco-Sprin','Medimore','34059',200,234),(11,'Parcetmol','Medimore','98708',120,446);
/*!40000 ALTER TABLE `medicine_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01  1:03:48
