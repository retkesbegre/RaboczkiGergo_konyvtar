-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: konyvtar
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `kolcsonzesek`
--

DROP TABLE IF EXISTS `kolcsonzesek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kolcsonzesek` (
  `kolcsonzo_id` int(11) NOT NULL,
  `konyv_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kolcsonzo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kolcsonzesek`
--

LOCK TABLES `kolcsonzesek` WRITE;
/*!40000 ALTER TABLE `kolcsonzesek` DISABLE KEYS */;
INSERT INTO `kolcsonzesek` VALUES (1,'2'),(2,'1');
/*!40000 ALTER TABLE `kolcsonzesek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konyvek`
--

DROP TABLE IF EXISTS `konyvek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konyvek` (
  `konyv_id` int(11) NOT NULL,
  `cim` varchar(45) DEFAULT NULL,
  `szerzo` varchar(45) DEFAULT NULL,
  `mufaj` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`konyv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konyvek`
--

LOCK TABLES `konyvek` WRITE;
/*!40000 ALTER TABLE `konyvek` DISABLE KEYS */;
INSERT INTO `konyvek` VALUES (1,'Az','Stephen King','horror'),(2,'Ragyogás','Stephen King','horror'),(3,'Uzumaki','Junji Ito','horror');
/*!40000 ALTER TABLE `konyvek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olvasok`
--

DROP TABLE IF EXISTS `olvasok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olvasok` (
  `olvaso_id` int(11) NOT NULL,
  `nev` varchar(45) DEFAULT NULL,
  `regisztralt` tinyint(4) DEFAULT NULL,
  `kolcsonzo_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`olvaso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olvasok`
--

LOCK TABLES `olvasok` WRITE;
/*!40000 ALTER TABLE `olvasok` DISABLE KEYS */;
INSERT INTO `olvasok` VALUES (1,'Fodor Dominik',0,'1'),(2,'Lantos Péter',0,'2');
/*!40000 ALTER TABLE `olvasok` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10 11:18:02
