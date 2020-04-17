CREATE DATABASE  IF NOT EXISTS `smartparking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smartparking`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: smartparking
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `parkID` int NOT NULL,
  `vehicleNo` varchar(11) NOT NULL,
  `spotNo` int NOT NULL,
  `contact` bigint DEFAULT NULL,
  `payMode` varchar(4) NOT NULL,
  `upi` varchar(50) DEFAULT NULL,
  `validFromDate` date NOT NULL,
  `validFromTime` time NOT NULL,
  `validTillDate` date NOT NULL,
  `validTillTime` time NOT NULL,
  PRIMARY KEY (`bookingID`),
  UNIQUE KEY `contact` (`contact`),
  KEY `Fk_uid` (`userID`),
  KEY `Fk_pid` (`parkID`),
  CONSTRAINT `Fk_pid` FOREIGN KEY (`parkID`) REFERENCES `parking` (`park_id`),
  CONSTRAINT `Fk_uid` FOREIGN KEY (`userID`) REFERENCES `user` (`uid`),
  CONSTRAINT `booking_chk_1` CHECK ((`payMode` in (_utf8mb4'Cash',_utf8mb4'UPI')))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'ashu123','Ashutosh Mourya',2,'MP09SS6985',5,9876543210,'UPI','ashu@ohkhdfcbank','2020-04-10','15:35:00','2020-04-10','18:35:00'),(2,'avani0111','Avantika',1,'MP07CC7412',4,9874563210,'Cash',NULL,'2020-04-10','17:00:00','2020-04-10','18:00:00');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10 17:11:20
