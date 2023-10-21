CREATE DATABASE  IF NOT EXISTS `sentinel` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sentinel`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: ls-62eb40477453b6df6f08c878e98d46dad1e8d817.cqzbzeeivowe.eu-central-1.rds.amazonaws.com    Database: sentinel
-- ------------------------------------------------------
-- Server version	8.0.33

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `addition` varchar(255) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Uilenburg','7','H','5211 EV','\'s-Hertogenbosch','Noord-Brabant',51.68807660,5.29928820),(3,'Uilenburg','11','R','5211 EV','\'s-Hertogenbosch','Noord-Brabant',51.68787002,5.29938815),(4,'Sint Janssingel','234','','5211 DA','\'s-Hertogenbosch','Noord-Brabant',51.68795122,5.29817051),(5,'Sint Janssingel','200','','5211 DA','\'s-Hertogenbosch','Noord-Brabant',51.68793607,5.29842058),(6,'Veluwehof','16','','5709 KA','Helmond','Noord-Brabant',51.68814391,5.29922114),(7,'Kon. Julianaweg','26','','5684VE','Best','Noord-Brabant',51.68819774,5.29921793),(8,'Kon. Julianaweg','26','','5684VE','Best','Noord-Brabant',51.68819774,5.29921793),(9,'Kon. Julianaweg','26','','5684VE','Best','Noord-Brabant',51.68819774,5.29921793),(10,'Kon. Julianaweg','26','','5684VE','Best','Noord-Brabant',51.68819774,5.29921793),(11,'Vleutstraat','x','','5298','Liempde','North Brabant',51.68816735,5.29929525),(12,'Bleekheuvel','2','','5685 AN','Best','Noord-Brabant',51.68805843,5.29929957),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Uilenburg','24','','5211 EV','\'s-Hertogenbosch','Noord-Brabant',51.68833935,5.29986322),(16,'','','A','5211 EV','\'s-Hertogenbosch','Noord-Brabant',51.68850231,5.29990614),(17,'','','','5211 EV','\'s-Hertogenbosch','Noord-Brabant',51.68803300,5.29923850),(18,'Deken B.J. van Miertstraat','32','','5683 EB','Best','Noord-Brabant',51.51203060,5.39807040),(19,'Eindhovenseweg Zuid','73','A','5683 PW','Best','Noord-Brabant',51.49563110,5.42221740),(20,'Bedrijfsweg','43','','5683 CN','Best','Noord-Brabant',51.49946140,5.40462120),(21,'Frans Joseph van Thielpark','5','','5707 BX','Helmond','Noord-Brabant',51.47777557,5.65079617),(22,'Berkendonk','31','','5703 KB','Helmond','Noord-Brabant',51.48250620,5.71299980),(23,'Gelderlandhof','1','','5709 EP','Helmond','Noord-Brabant',51.47792450,5.71203980),(24,'Uilenburg','7','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(25,'Ruysdaelbaan','4','','5613 ','Eindhoven, ','Paesi Bassi',NULL,NULL),(32,'Uilenburg','7','-','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(33,'Uilenburg','7','C','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(34,'Uilenburg','6','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(35,'Uilenburg','9','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(36,'Walpoort ','10','','5211DK','\'s-Hertogenbosch','Noord-Brabant',51.43980880,5.49649950),(37,'Uilenburg ','87','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(38,'sdfccg','67','','5122','dtfh','ygukh',NULL,NULL),(39,'drftgh','6','','5122','cvghbjn','tfgyh',NULL,NULL),(40,'drfgh','5','','2155','fthjjk','yhjnk',NULL,NULL),(41,'htgbfvd','34','','5122','vfdscxaz','redsxaz fd',NULL,NULL),(47,'Uilenburg','89','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(48,'Uilenburg','65','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL),(49,'Sportpark de Braak','7','','5703 DX','Helmond','Noord-Brabant',51.48616790,5.67946690),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Uilenburg','5','','5211 EV','\'s Hertogenbosch','North Braabant',NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offense`
--

DROP TABLE IF EXISTS `offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offense` (
  `id` int NOT NULL,
  `law` varchar(45) NOT NULL,
  `article` varchar(45) NOT NULL,
  `sub` varchar(45) DEFAULT NULL,
  `criminal_law` tinyint NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offense`
--

LOCK TABLES `offense` WRITE;
/*!40000 ALTER TABLE `offense` DISABLE KEYS */;
INSERT INTO `offense` VALUES (1,'BRP','2.4','',0,''),(2,'BW:7','616','',0,''),(3,'BW:7','617','lid 2',0,''),(4,'BW:7','621','',0,''),(5,'BW:7','625','',0,''),(6,'BW:7','626','lid 1',0,''),(7,'BW:7','634','lid 1',0,''),(8,'BW:7','650','lid 1',0,''),(9,'BW:7','655','lid 1, sub b',0,''),(10,'BW:7','655','lid 8',0,''),(11,'BW:7','658','lid 1',0,''),(12,'BW:7','610a','',0,''),(13,'BW:7','650','lid 1',0,''),(14,'ZvW','2','',0,''),(15,'WvSr','273f','lid 1, sub 1',1,''),(16,'WvSr','273f','lid 6',1,''),(17,'WvSr','273f','lid 1, sub 4',1,'');
/*!40000 ALTER TABLE `offense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `report_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employer_name` varchar(255) DEFAULT NULL,
  `employment_agency_name` varchar(255) DEFAULT NULL,
  `branch_type` varchar(255) DEFAULT NULL,
  `max_households` int DEFAULT NULL,
  `num_people` int DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `address_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_case_address1_idx` (`address_id`),
  CONSTRAINT `fk_case_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'e4da4d67-7256-40eb-892b-ce97f67d6cef','2022-11-21 18:57:39','','','',NULL,NULL,'',1),(2,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2022-11-27 12:02:15','','','',NULL,NULL,'',2),(3,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2022-12-03 16:13:19','','','',NULL,NULL,'',2),(4,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2022-12-04 14:30:36','','','',NULL,NULL,'',3),(5,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2022-12-05 10:14:17','','','',NULL,NULL,'',4),(6,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2022-12-06 14:19:14','','','',NULL,NULL,'No additional remarks',5),(7,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 11:30:53','','','',NULL,NULL,'Nothing else',5),(8,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 11:30:55','','','',NULL,NULL,'Notes here',5),(9,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:30','onbekend','onbekend','onbekend',1,4,'De bewoner ontvangt op zijn eigen naam de rekening voor afvalstoffenverordening.  De eigenaar zegt tegen hem dat hij deze moet betalen.',6),(10,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:37','Eigenaar pand + bouwbegeleider','','',4,5,'',7),(11,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:37','Eigenaar pand + bouwbegeleider','','',4,5,'',7),(12,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:39','Eigenaar pand + bouwbegeleider','','',4,5,'',8),(13,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:37','Eigenaar pand + bouwbegeleider','','',4,5,'',7),(14,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:39','Eigenaar pand + bouwbegeleider','','',4,5,'',8),(15,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:37','Eigenaar pand + bouwbegeleider','','',4,5,'',7),(16,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:41','Eigenaar pand + bouwbegeleider','','',4,5,'',9),(17,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:39','Eigenaar pand + bouwbegeleider','','',4,5,'',8),(18,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:37','Eigenaar pand + bouwbegeleider','','',4,5,'',7),(19,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:41','Eigenaar pand + bouwbegeleider','','',4,5,'',9),(20,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:39','Eigenaar pand + bouwbegeleider','','',4,5,'',8),(21,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:42','Eigenaar pand + bouwbegeleider','','',4,5,'',10),(22,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:41','Eigenaar pand + bouwbegeleider','','',4,5,'',9),(23,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:39','Eigenaar pand + bouwbegeleider','','',4,5,'',8),(24,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:42','Eigenaar pand + bouwbegeleider','','',4,5,'',10),(25,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:41','Eigenaar pand + bouwbegeleider','','',4,5,'',9),(26,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:42','Eigenaar pand + bouwbegeleider','','',4,5,'',10),(27,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:41','Eigenaar pand + bouwbegeleider','','',4,5,'',9),(28,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:42','Eigenaar pand + bouwbegeleider','','',4,5,'',10),(29,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:03:42','Eigenaar pand + bouwbegeleider','','',4,5,'',10),(30,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(31,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(32,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(33,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(34,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(35,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:19:47','pietje','','',NULL,NULL,'',11),(36,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(37,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(38,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(39,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(40,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(41,'ce511148-0259-4072-921d-9bbaca8d1ba4','2022-12-07 14:36:31','','jetje ','',4,10,'',12),(42,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:04:00','','','',NULL,NULL,'',13),(43,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:04:00','','','',NULL,NULL,'',13),(44,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:04:00','','','',NULL,NULL,'',13),(45,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:04:00','','','',NULL,NULL,'',14),(46,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:16:44','','','',NULL,NULL,'',15),(47,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 16:17:28','','','',NULL,NULL,'',16),(48,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 20:39:38','','','',NULL,NULL,'',17),(49,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 20:39:38','','','',NULL,NULL,'',17),(50,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 20:39:38','','','',NULL,NULL,'',17),(51,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-17 21:24:16','','','',NULL,NULL,'',17),(52,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:07:00','','','',4,5,'Catergorie toevoegen: illegale bewoning (bij)gebouw(bestemmingsplan) ',18),(53,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(54,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(55,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(56,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(57,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(58,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(59,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(60,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(61,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(62,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(63,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(64,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(65,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(66,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:19:58','','','',NULL,NULL,'categorie toevoegen: onveilige of gevaarlijke woonsituatie',19),(67,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(68,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(69,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(70,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(71,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(72,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:34:50','','','',1,6,'Categorie toevoegen: Illegale bewoning (bij)gebouw (bestemmingsplan)',20),(73,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:38:21','Dhr. Janssen (aannemer)','NVT','Bouw',1,4,'Let op ! Dit is en verzonnen situatie',21),(74,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:38:21','Dhr. Janssen (aannemer)','NVT','Bouw',1,4,'Let op ! Dit is en verzonnen situatie',21),(75,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:38:21','Dhr. Janssen (aannemer)','NVT','Bouw',1,4,'Let op ! Dit is en verzonnen situatie',21),(76,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:38:21','Dhr. Janssen (aannemer)','NVT','Bouw',1,4,'Let op ! Dit is en verzonnen situatie',21),(77,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:42:48','gemeente Helmond','','',NULL,NULL,'',22),(78,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:42:48','gemeente Helmond','','',NULL,NULL,'',22),(79,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:42:48','gemeente Helmond','','',NULL,NULL,'',22),(80,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:42:48','gemeente Helmond','','',NULL,NULL,'',22),(81,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:42:48','gemeente Helmond','','',NULL,NULL,'',22),(82,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:48:11','Dhr. Janssen','NVT','Onbekend',1,5,'Fictief dossier',23),(83,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:48:11','Dhr. Janssen','NVT','Onbekend',1,5,'Fictief dossier',23),(84,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:48:11','Dhr. Janssen','NVT','Onbekend',1,5,'Fictief dossier',23),(85,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:48:11','Dhr. Janssen','NVT','Onbekend',1,5,'Fictief dossier',23),(86,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-01-18 14:48:11','Dhr. Janssen','NVT','Onbekend',1,5,'Fictief dossier',23),(87,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-02-23 08:46:37','','','',NULL,NULL,'',24),(88,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-03-01 10:01:22','','','',NULL,NULL,'',24),(89,'3289d25f-7981-475a-88fe-b110e5b8c894','2023-06-07 14:25:49','','','',NULL,NULL,'',25),(90,'3289d25f-7981-475a-88fe-b110e5b8c894','2023-06-07 14:25:49','','','',NULL,NULL,'',25),(91,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-06-09 09:43:14','','','',NULL,NULL,'',32),(92,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-06-09 10:27:57','','','',NULL,NULL,'',33),(93,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-06-12 14:28:49','','','',NULL,NULL,'',34),(94,'3289d25f-7981-475a-88fe-b110e5b8c894','2023-06-23 13:44:35','','','',NULL,NULL,'',35),(95,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-07-11 14:38:42','','','',NULL,NULL,'',36),(96,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-27 12:28:32','','','',NULL,NULL,'',37),(97,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-27 12:28:32','','','',NULL,NULL,'',37),(98,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-27 18:32:47','','','',NULL,NULL,'',38),(99,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-28 11:55:09','','','',NULL,NULL,'',39),(100,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-28 11:55:09','','','',NULL,NULL,'',39),(101,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-28 12:00:50','','','',NULL,NULL,'',40),(102,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-28 12:00:50','','','',NULL,NULL,'',40),(103,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-07-28 12:03:44','','','',NULL,NULL,'',41),(104,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-08-09 12:22:58','','','',NULL,NULL,'',47),(105,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-08-09 14:02:50','','','',NULL,NULL,'',48),(106,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-01 12:15:11','Pilot Werkgever','Dummy Data ','Sport en entertainment',0,12,'',49),(107,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-01 12:15:11','Pilot Werkgever','Dummy Data ','Sport en entertainment',0,12,'',49),(108,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-01 12:15:11','','','',NULL,NULL,'',49),(109,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-14 14:55:02','','','',NULL,NULL,'',50),(110,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-14 14:55:02','','','',NULL,NULL,'',50),(111,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-14 14:55:02','','','',NULL,NULL,'',50),(112,'08701ee4-e783-4d9f-9bfc-5eb21ca6e51d','2023-09-14 14:55:02','','','',NULL,NULL,'',50),(113,'b1115dfd-90eb-4ca7-a77e-28661680dd58','2023-09-22 07:50:49','','','',NULL,NULL,'',51);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_has_situation`
--

DROP TABLE IF EXISTS `report_has_situation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_has_situation` (
  `report_id` int NOT NULL,
  `situation_id` varchar(25) NOT NULL,
  PRIMARY KEY (`report_id`,`situation_id`),
  KEY `fk_report_has_situation_situation1_idx` (`situation_id`),
  KEY `fk_repoert_has_situation_case_idx` (`report_id`),
  CONSTRAINT `fk_case_has_situation_case` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`),
  CONSTRAINT `fk_case_has_situation_situation1` FOREIGN KEY (`situation_id`) REFERENCES `situation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_has_situation`
--

LOCK TABLES `report_has_situation` WRITE;
/*!40000 ALTER TABLE `report_has_situation` DISABLE KEYS */;
INSERT INTO `report_has_situation` VALUES (1,'q_he_4'),(1,'q_he_5'),(1,'q_ho_1'),(1,'q_ho_3'),(1,'q_pa_3'),(2,'q_em_12'),(2,'q_em_13'),(2,'q_em_14'),(2,'q_ho_1'),(3,'q_ho_2'),(4,'q_pa_3'),(4,'q_pa_4'),(5,'q_ho_2'),(5,'q_ho_4'),(5,'q_la_5'),(5,'q_la_8'),(6,'q_ho_11'),(6,'q_ho_12'),(6,'q_ho_8'),(7,'q_ho_1'),(7,'q_ho_2'),(7,'q_ho_3'),(7,'q_la_5'),(7,'q_la_6'),(8,'q_he_5'),(8,'q_he_6'),(8,'q_pa_4'),(8,'q_pa_5'),(9,'q_ho_14'),(9,'q_ho_7'),(9,'q_la_12'),(9,'q_la_8'),(10,'q_em_1'),(10,'q_em_12'),(10,'q_em_25'),(10,'q_em_7'),(10,'q_em_8'),(10,'q_em_9'),(10,'q_ho_10'),(10,'q_ho_14'),(10,'q_ho_4'),(10,'q_ho_5'),(10,'q_ho_6'),(10,'q_ho_7'),(10,'q_ho_9'),(10,'q_la_18'),(10,'q_la_4'),(10,'q_la_8'),(10,'q_pa_2'),(10,'q_pa_3'),(11,'q_em_1'),(11,'q_em_12'),(11,'q_em_25'),(11,'q_em_7'),(11,'q_em_8'),(11,'q_em_9'),(11,'q_ho_10'),(11,'q_ho_14'),(11,'q_ho_4'),(11,'q_ho_5'),(11,'q_ho_6'),(11,'q_ho_7'),(11,'q_ho_9'),(11,'q_la_18'),(11,'q_la_4'),(11,'q_la_8'),(11,'q_pa_2'),(11,'q_pa_3'),(12,'q_em_1'),(12,'q_em_12'),(12,'q_em_25'),(12,'q_em_7'),(12,'q_em_8'),(12,'q_em_9'),(12,'q_ho_10'),(12,'q_ho_14'),(12,'q_ho_4'),(12,'q_ho_5'),(12,'q_ho_6'),(12,'q_ho_7'),(12,'q_ho_9'),(12,'q_la_18'),(12,'q_la_4'),(12,'q_la_8'),(12,'q_pa_2'),(12,'q_pa_3'),(13,'q_em_1'),(13,'q_em_12'),(13,'q_em_25'),(13,'q_em_7'),(13,'q_em_8'),(13,'q_em_9'),(13,'q_ho_10'),(13,'q_ho_14'),(13,'q_ho_4'),(13,'q_ho_5'),(13,'q_ho_6'),(13,'q_ho_7'),(13,'q_ho_9'),(13,'q_la_18'),(13,'q_la_4'),(13,'q_la_8'),(13,'q_pa_2'),(13,'q_pa_3'),(14,'q_em_1'),(14,'q_em_12'),(14,'q_em_25'),(14,'q_em_7'),(14,'q_em_8'),(14,'q_em_9'),(14,'q_ho_10'),(14,'q_ho_14'),(14,'q_ho_4'),(14,'q_ho_5'),(14,'q_ho_6'),(14,'q_ho_7'),(14,'q_ho_9'),(14,'q_la_18'),(14,'q_la_4'),(14,'q_la_8'),(14,'q_pa_2'),(14,'q_pa_3'),(15,'q_em_1'),(15,'q_em_12'),(15,'q_em_25'),(15,'q_em_7'),(15,'q_em_8'),(15,'q_em_9'),(15,'q_ho_10'),(15,'q_ho_14'),(15,'q_ho_4'),(15,'q_ho_5'),(15,'q_ho_6'),(15,'q_ho_7'),(15,'q_ho_9'),(15,'q_la_18'),(15,'q_la_4'),(15,'q_la_8'),(15,'q_pa_2'),(15,'q_pa_3'),(16,'q_em_1'),(16,'q_em_12'),(16,'q_em_25'),(16,'q_em_7'),(16,'q_em_8'),(16,'q_em_9'),(16,'q_ho_10'),(16,'q_ho_14'),(16,'q_ho_4'),(16,'q_ho_5'),(16,'q_ho_6'),(16,'q_ho_7'),(16,'q_ho_9'),(16,'q_la_18'),(16,'q_la_4'),(16,'q_la_8'),(16,'q_pa_2'),(16,'q_pa_3'),(17,'q_em_1'),(17,'q_em_12'),(17,'q_em_25'),(17,'q_em_7'),(17,'q_em_8'),(17,'q_em_9'),(17,'q_ho_10'),(17,'q_ho_14'),(17,'q_ho_4'),(17,'q_ho_5'),(17,'q_ho_6'),(17,'q_ho_7'),(17,'q_ho_9'),(17,'q_la_18'),(17,'q_la_4'),(17,'q_la_8'),(17,'q_pa_2'),(17,'q_pa_3'),(18,'q_em_1'),(18,'q_em_12'),(18,'q_em_25'),(18,'q_em_7'),(18,'q_em_8'),(18,'q_em_9'),(18,'q_ho_10'),(18,'q_ho_14'),(18,'q_ho_4'),(18,'q_ho_5'),(18,'q_ho_6'),(18,'q_ho_7'),(18,'q_ho_9'),(18,'q_la_18'),(18,'q_la_4'),(18,'q_la_8'),(18,'q_pa_2'),(18,'q_pa_3'),(19,'q_em_1'),(19,'q_em_12'),(19,'q_em_25'),(19,'q_em_7'),(19,'q_em_8'),(19,'q_em_9'),(19,'q_ho_10'),(19,'q_ho_14'),(19,'q_ho_4'),(19,'q_ho_5'),(19,'q_ho_6'),(19,'q_ho_7'),(19,'q_ho_9'),(19,'q_la_18'),(19,'q_la_4'),(19,'q_la_8'),(19,'q_pa_2'),(19,'q_pa_3'),(20,'q_em_1'),(20,'q_em_12'),(20,'q_em_25'),(20,'q_em_7'),(20,'q_em_8'),(20,'q_em_9'),(20,'q_ho_10'),(20,'q_ho_14'),(20,'q_ho_4'),(20,'q_ho_5'),(20,'q_ho_6'),(20,'q_ho_7'),(20,'q_ho_9'),(20,'q_la_18'),(20,'q_la_4'),(20,'q_la_8'),(20,'q_pa_2'),(20,'q_pa_3'),(21,'q_em_1'),(21,'q_em_12'),(21,'q_em_25'),(21,'q_em_7'),(21,'q_em_8'),(21,'q_em_9'),(21,'q_ho_10'),(21,'q_ho_14'),(21,'q_ho_4'),(21,'q_ho_5'),(21,'q_ho_6'),(21,'q_ho_7'),(21,'q_ho_9'),(21,'q_la_18'),(21,'q_la_4'),(21,'q_la_8'),(21,'q_pa_2'),(21,'q_pa_3'),(22,'q_em_1'),(22,'q_em_12'),(22,'q_em_25'),(22,'q_em_7'),(22,'q_em_8'),(22,'q_em_9'),(22,'q_ho_10'),(22,'q_ho_14'),(22,'q_ho_4'),(22,'q_ho_5'),(22,'q_ho_6'),(22,'q_ho_7'),(22,'q_ho_9'),(22,'q_la_18'),(22,'q_la_4'),(22,'q_la_8'),(22,'q_pa_2'),(22,'q_pa_3'),(23,'q_em_1'),(23,'q_em_12'),(23,'q_em_25'),(23,'q_em_7'),(23,'q_em_8'),(23,'q_em_9'),(23,'q_ho_10'),(23,'q_ho_14'),(23,'q_ho_4'),(23,'q_ho_5'),(23,'q_ho_6'),(23,'q_ho_7'),(23,'q_ho_9'),(23,'q_la_18'),(23,'q_la_4'),(23,'q_la_8'),(23,'q_pa_2'),(23,'q_pa_3'),(24,'q_em_1'),(24,'q_em_12'),(24,'q_em_25'),(24,'q_em_7'),(24,'q_em_8'),(24,'q_em_9'),(24,'q_ho_10'),(24,'q_ho_14'),(24,'q_ho_4'),(24,'q_ho_5'),(24,'q_ho_6'),(24,'q_ho_7'),(24,'q_ho_9'),(24,'q_la_18'),(24,'q_la_4'),(24,'q_la_8'),(24,'q_pa_2'),(24,'q_pa_3'),(25,'q_em_1'),(25,'q_em_12'),(25,'q_em_25'),(25,'q_em_7'),(25,'q_em_8'),(25,'q_em_9'),(25,'q_ho_10'),(25,'q_ho_14'),(25,'q_ho_4'),(25,'q_ho_5'),(25,'q_ho_6'),(25,'q_ho_7'),(25,'q_ho_9'),(25,'q_la_18'),(25,'q_la_4'),(25,'q_la_8'),(25,'q_pa_2'),(25,'q_pa_3'),(26,'q_em_1'),(26,'q_em_12'),(26,'q_em_25'),(26,'q_em_7'),(26,'q_em_8'),(26,'q_em_9'),(26,'q_ho_10'),(26,'q_ho_14'),(26,'q_ho_4'),(26,'q_ho_5'),(26,'q_ho_6'),(26,'q_ho_7'),(26,'q_ho_9'),(26,'q_la_18'),(26,'q_la_4'),(26,'q_la_8'),(26,'q_pa_2'),(26,'q_pa_3'),(27,'q_em_1'),(27,'q_em_12'),(27,'q_em_25'),(27,'q_em_7'),(27,'q_em_8'),(27,'q_em_9'),(27,'q_ho_10'),(27,'q_ho_14'),(27,'q_ho_4'),(27,'q_ho_5'),(27,'q_ho_6'),(27,'q_ho_7'),(27,'q_ho_9'),(27,'q_la_18'),(27,'q_la_4'),(27,'q_la_8'),(27,'q_pa_2'),(27,'q_pa_3'),(28,'q_em_1'),(28,'q_em_12'),(28,'q_em_25'),(28,'q_em_7'),(28,'q_em_8'),(28,'q_em_9'),(28,'q_ho_10'),(28,'q_ho_14'),(28,'q_ho_4'),(28,'q_ho_5'),(28,'q_ho_6'),(28,'q_ho_7'),(28,'q_ho_9'),(28,'q_la_18'),(28,'q_la_4'),(28,'q_la_8'),(28,'q_pa_2'),(28,'q_pa_3'),(29,'q_em_1'),(29,'q_em_12'),(29,'q_em_25'),(29,'q_em_7'),(29,'q_em_8'),(29,'q_em_9'),(29,'q_ho_10'),(29,'q_ho_14'),(29,'q_ho_4'),(29,'q_ho_5'),(29,'q_ho_6'),(29,'q_ho_7'),(29,'q_ho_9'),(29,'q_la_18'),(29,'q_la_4'),(29,'q_la_8'),(29,'q_pa_2'),(29,'q_pa_3'),(30,'q_em_25'),(30,'q_em_8'),(30,'q_ho_14'),(30,'q_ho_4'),(30,'q_ho_5'),(30,'q_ho_6'),(30,'q_ho_7'),(30,'q_ho_9'),(31,'q_em_25'),(31,'q_em_8'),(31,'q_ho_14'),(31,'q_ho_4'),(31,'q_ho_5'),(31,'q_ho_6'),(31,'q_ho_7'),(31,'q_ho_9'),(32,'q_em_25'),(32,'q_em_8'),(32,'q_ho_14'),(32,'q_ho_4'),(32,'q_ho_5'),(32,'q_ho_6'),(32,'q_ho_7'),(32,'q_ho_9'),(33,'q_em_25'),(33,'q_em_8'),(33,'q_ho_14'),(33,'q_ho_4'),(33,'q_ho_5'),(33,'q_ho_6'),(33,'q_ho_7'),(33,'q_ho_9'),(34,'q_em_25'),(34,'q_em_8'),(34,'q_ho_14'),(34,'q_ho_4'),(34,'q_ho_5'),(34,'q_ho_6'),(34,'q_ho_7'),(34,'q_ho_9'),(35,'q_em_25'),(35,'q_em_8'),(35,'q_ho_14'),(35,'q_ho_4'),(35,'q_ho_5'),(35,'q_ho_6'),(35,'q_ho_7'),(35,'q_ho_9'),(36,'q_ho_10'),(36,'q_ho_14'),(36,'q_ho_5'),(37,'q_ho_10'),(37,'q_ho_14'),(37,'q_ho_5'),(38,'q_ho_10'),(38,'q_ho_14'),(38,'q_ho_5'),(39,'q_ho_10'),(39,'q_ho_14'),(39,'q_ho_5'),(40,'q_ho_10'),(40,'q_ho_14'),(40,'q_ho_5'),(41,'q_ho_10'),(41,'q_ho_14'),(41,'q_ho_5'),(42,'q_em_21'),(42,'q_he_8'),(42,'q_ho_13'),(42,'q_la_16'),(42,'q_pa_13'),(43,'q_em_21'),(43,'q_he_8'),(43,'q_ho_13'),(43,'q_la_16'),(43,'q_pa_13'),(44,'q_em_21'),(44,'q_he_8'),(44,'q_ho_13'),(44,'q_la_16'),(44,'q_pa_13'),(45,'q_em_21'),(45,'q_he_8'),(45,'q_ho_13'),(45,'q_la_16'),(45,'q_pa_13'),(46,'q_em_21'),(46,'q_he_8'),(46,'q_ho_13'),(46,'q_la_16'),(46,'q_pa_13'),(47,'q_ho_14'),(48,'q_em_21'),(48,'q_he_8'),(48,'q_ho_13'),(48,'q_la_16'),(48,'q_pa_13'),(49,'q_em_21'),(49,'q_he_8'),(49,'q_ho_13'),(49,'q_la_16'),(49,'q_pa_13'),(50,'q_em_21'),(50,'q_he_8'),(50,'q_ho_13'),(50,'q_la_16'),(50,'q_pa_13'),(51,'q_ho_10'),(52,'q_em_8'),(52,'q_ho_14'),(52,'q_ho_5'),(53,'q_ho_9'),(54,'q_ho_9'),(55,'q_ho_9'),(56,'q_ho_9'),(57,'q_ho_9'),(58,'q_ho_9'),(59,'q_ho_9'),(60,'q_ho_9'),(61,'q_ho_9'),(62,'q_ho_9'),(63,'q_ho_9'),(64,'q_ho_9'),(65,'q_ho_9'),(66,'q_ho_9'),(67,'q_ho_14'),(67,'q_ho_9'),(68,'q_ho_14'),(68,'q_ho_9'),(69,'q_ho_14'),(69,'q_ho_9'),(70,'q_ho_14'),(70,'q_ho_9'),(71,'q_ho_14'),(71,'q_ho_9'),(72,'q_ho_14'),(72,'q_ho_9'),(73,'q_em_1'),(73,'q_em_15'),(73,'q_em_16'),(73,'q_em_19'),(73,'q_em_20'),(73,'q_em_22'),(73,'q_em_24'),(73,'q_he_3'),(73,'q_he_6'),(73,'q_he_7'),(73,'q_ho_11'),(73,'q_ho_2'),(73,'q_ho_7'),(73,'q_ho_8'),(73,'q_ho_9'),(73,'q_la_1'),(73,'q_la_11'),(73,'q_la_14'),(73,'q_la_15'),(73,'q_la_17'),(73,'q_la_18'),(73,'q_la_3'),(73,'q_la_4'),(73,'q_pa_10'),(73,'q_pa_14'),(73,'q_pa_2'),(73,'q_pa_3'),(74,'q_em_1'),(74,'q_em_15'),(74,'q_em_16'),(74,'q_em_19'),(74,'q_em_20'),(74,'q_em_22'),(74,'q_em_24'),(74,'q_he_3'),(74,'q_he_6'),(74,'q_he_7'),(74,'q_ho_11'),(74,'q_ho_2'),(74,'q_ho_7'),(74,'q_ho_8'),(74,'q_ho_9'),(74,'q_la_1'),(74,'q_la_11'),(74,'q_la_14'),(74,'q_la_15'),(74,'q_la_17'),(74,'q_la_18'),(74,'q_la_3'),(74,'q_la_4'),(74,'q_pa_10'),(74,'q_pa_14'),(74,'q_pa_2'),(74,'q_pa_3'),(75,'q_em_1'),(75,'q_em_15'),(75,'q_em_16'),(75,'q_em_19'),(75,'q_em_20'),(75,'q_em_22'),(75,'q_em_24'),(75,'q_he_3'),(75,'q_he_6'),(75,'q_he_7'),(75,'q_ho_11'),(75,'q_ho_2'),(75,'q_ho_7'),(75,'q_ho_8'),(75,'q_ho_9'),(75,'q_la_1'),(75,'q_la_11'),(75,'q_la_14'),(75,'q_la_15'),(75,'q_la_17'),(75,'q_la_18'),(75,'q_la_3'),(75,'q_la_4'),(75,'q_pa_10'),(75,'q_pa_14'),(75,'q_pa_2'),(75,'q_pa_3'),(76,'q_em_1'),(76,'q_em_15'),(76,'q_em_16'),(76,'q_em_19'),(76,'q_em_20'),(76,'q_em_22'),(76,'q_em_24'),(76,'q_he_3'),(76,'q_he_6'),(76,'q_he_7'),(76,'q_ho_11'),(76,'q_ho_2'),(76,'q_ho_7'),(76,'q_ho_8'),(76,'q_ho_9'),(76,'q_la_1'),(76,'q_la_11'),(76,'q_la_14'),(76,'q_la_15'),(76,'q_la_17'),(76,'q_la_18'),(76,'q_la_3'),(76,'q_la_4'),(76,'q_pa_10'),(76,'q_pa_14'),(76,'q_pa_2'),(76,'q_pa_3'),(77,'q_em_15'),(77,'q_ho_1'),(77,'q_ho_10'),(77,'q_ho_11'),(77,'q_ho_9'),(77,'q_pa_9'),(78,'q_em_15'),(78,'q_ho_1'),(78,'q_ho_10'),(78,'q_ho_11'),(78,'q_ho_9'),(78,'q_pa_9'),(79,'q_em_15'),(79,'q_ho_1'),(79,'q_ho_10'),(79,'q_ho_11'),(79,'q_ho_9'),(79,'q_pa_9'),(80,'q_em_15'),(80,'q_ho_1'),(80,'q_ho_10'),(80,'q_ho_11'),(80,'q_ho_9'),(80,'q_pa_9'),(81,'q_em_15'),(81,'q_ho_1'),(81,'q_ho_10'),(81,'q_ho_11'),(81,'q_ho_9'),(81,'q_pa_9'),(82,'q_ho_14'),(83,'q_ho_14'),(84,'q_ho_14'),(85,'q_ho_14'),(86,'q_ho_14'),(87,'q_em_17'),(87,'q_em_8'),(87,'q_he_4'),(87,'q_ho_12'),(87,'q_ho_5'),(87,'q_la_12'),(87,'q_pa_12'),(88,'q_em_15'),(88,'q_em_7'),(88,'q_ho_11'),(88,'q_ho_4'),(89,'q_em_7'),(89,'q_em_9'),(89,'q_ho_4'),(89,'q_ho_6'),(91,'q_em_9'),(91,'q_ho_6'),(92,'q_em_3'),(92,'q_em_6'),(92,'q_ho_10'),(92,'q_ho_3'),(92,'q_la_7'),(92,'q_pa_5'),(93,'q_em_24'),(93,'q_la_1'),(94,'q_em_1'),(94,'q_em_17'),(94,'q_em_5'),(94,'q_he_4'),(94,'q_ho_12'),(94,'q_la_12'),(94,'q_la_4'),(94,'q_la_6'),(94,'q_pa_12'),(94,'q_pa_3'),(94,'q_pa_7'),(95,'q_em_17'),(95,'q_he_4'),(95,'q_ho_1'),(95,'q_ho_10'),(95,'q_ho_12'),(95,'q_la_12'),(95,'q_pa_12'),(95,'q_pa_9'),(96,'q_ho_10'),(96,'q_la_2'),(96,'q_pa_1'),(97,'q_ho_10'),(97,'q_la_2'),(97,'q_pa_1'),(98,'q_em_1'),(98,'q_em_3'),(98,'q_ho_14'),(98,'q_la_3'),(98,'q_la_4'),(98,'q_pa_1'),(98,'q_pa_3'),(98,'q_pa_5'),(99,'q_em_15'),(99,'q_em_17'),(99,'q_em_21'),(99,'q_em_22'),(99,'q_em_6'),(99,'q_em_7'),(99,'q_em_9'),(99,'q_he_4'),(99,'q_he_8'),(99,'q_ho_1'),(99,'q_ho_10'),(99,'q_ho_11'),(99,'q_ho_12'),(99,'q_ho_13'),(99,'q_ho_14'),(99,'q_ho_2'),(99,'q_ho_3'),(99,'q_ho_4'),(99,'q_ho_5'),(99,'q_ho_6'),(99,'q_ho_7'),(99,'q_ho_8'),(99,'q_ho_9'),(99,'q_la_12'),(99,'q_la_16'),(99,'q_la_17'),(99,'q_la_18'),(99,'q_la_7'),(99,'q_pa_10'),(99,'q_pa_12'),(99,'q_pa_13'),(99,'q_pa_14'),(99,'q_pa_9'),(100,'q_em_9'),(100,'q_ho_6'),(101,'q_ho_5'),(102,'q_em_12'),(103,'q_ho_2'),(103,'q_pa_10'),(104,'q_em_17'),(104,'q_em_9'),(104,'q_he_4'),(104,'q_ho_12'),(104,'q_ho_6'),(104,'q_la_12'),(104,'q_pa_12'),(105,'q_em_1'),(105,'q_em_20'),(105,'q_em_3'),(105,'q_em_4'),(105,'q_em_7'),(105,'q_he_7'),(105,'q_ho_4'),(105,'q_ho_5'),(105,'q_la_15'),(105,'q_la_4'),(105,'q_pa_3'),(105,'q_pa_5'),(105,'q_pa_6'),(106,'q_em_15'),(106,'q_em_20'),(106,'q_em_21'),(106,'q_em_22'),(106,'q_em_23'),(106,'q_em_24'),(106,'q_em_4'),(106,'q_em_9'),(106,'q_he_7'),(106,'q_he_8'),(106,'q_ho_1'),(106,'q_ho_11'),(106,'q_ho_13'),(106,'q_ho_14'),(106,'q_ho_6'),(106,'q_ho_7'),(106,'q_ho_8'),(106,'q_la_1'),(106,'q_la_15'),(106,'q_la_16'),(106,'q_la_17'),(106,'q_la_18'),(106,'q_la_2'),(106,'q_la_3'),(106,'q_pa_13'),(106,'q_pa_14'),(106,'q_pa_15'),(106,'q_pa_6'),(106,'q_pa_9'),(107,'q_em_15'),(107,'q_em_20'),(107,'q_em_21'),(107,'q_em_22'),(107,'q_em_23'),(107,'q_em_24'),(107,'q_em_4'),(107,'q_em_9'),(107,'q_he_7'),(107,'q_he_8'),(107,'q_ho_1'),(107,'q_ho_11'),(107,'q_ho_13'),(107,'q_ho_14'),(107,'q_ho_6'),(107,'q_ho_7'),(107,'q_ho_8'),(107,'q_la_1'),(107,'q_la_15'),(107,'q_la_16'),(107,'q_la_17'),(107,'q_la_18'),(107,'q_la_2'),(107,'q_la_3'),(107,'q_pa_13'),(107,'q_pa_14'),(107,'q_pa_15'),(107,'q_pa_6'),(107,'q_pa_9'),(109,'q_em_1'),(109,'q_la_4'),(109,'q_pa_3'),(110,'q_em_1'),(110,'q_la_4'),(110,'q_pa_3'),(111,'q_em_1'),(111,'q_la_4'),(111,'q_pa_3'),(112,'q_em_1'),(112,'q_la_4'),(112,'q_pa_3');
/*!40000 ALTER TABLE `report_has_situation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situation`
--

DROP TABLE IF EXISTS `situation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situation` (
  `id` varchar(25) NOT NULL,
  `category` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situation`
--

LOCK TABLES `situation` WRITE;
/*!40000 ALTER TABLE `situation` DISABLE KEYS */;
INSERT INTO `situation` VALUES ('q_em_1','Employer','Geen contract ondertekend (>3 mdn werk à 16 uur p/w)'),('q_em_10','Employer','Niet op de hoogte waar werkzaamheden plaats gaan vinden p/d'),('q_em_11','Employer','Gechanteerd door werkgever'),('q_em_12','Employer','Geen uitleg over inschrijving BRP + rechten huurwoning'),('q_em_13','Employer','Wel betaald voor (zorg) verzekeringen, niet verzekerd'),('q_em_14','Employer','Bedreigd door werkgever'),('q_em_15','Employer','Niet op de hoogte van verblijfsadres'),('q_em_16','Employer','Gedwongen tot arbeid'),('q_em_17','Employer','Onder druk gezet worden op andere manieren door werkgever'),('q_em_18','Employer','Niet anders kunnen (onttrekken) dan uitbuiting ondergaan'),('q_em_19','Employer','Mishandeld door werkgever'),('q_em_2','Employer','Contract alleen in NL en persoon spreekt geen NL'),('q_em_20','Employer','Angstig voor werkgever'),('q_em_21','Employer','Paspoort ingenomen als borg'),('q_em_22','Employer','Vergoeding moeten betalen voor gebruikt vervoer'),('q_em_23','Employer','Boete moeten betalen die niet in arbeidsovereenkomst staat'),('q_em_24','Employer','Gevaarlijk werk moeten doen (door nalatigheid werkgever)'),('q_em_25','Employer','Anderzijds slecht gehuisvest (min. 10m2 p/p woonoppervlak)'),('q_em_3','Employer','Geen vakantiegeld / vakantiedagen'),('q_em_4','Employer','Geen loonstrookje ontvangen'),('q_em_5','Employer','Schuld bij werkgever'),('q_em_6','Employer','Met valse beloften naar Nederland gehaald'),('q_em_7','Employer','Op privéadres van werkgever verblijven'),('q_em_8','Employer','Geen inschrijving Basis Register Personen (BRP) - uitleg achtergehouden'),('q_em_9','Employer','In bedrijfspand van werkgever verblijven'),('q_he_1','Health','Wel betaald voor (zorg) verzekeringen, niet verzekerd'),('q_he_2','Health','Bedreigd door werkgever'),('q_he_3','Health','Gedwongen tot arbeid'),('q_he_4','Health','Onder druk gezet worden op andere manieren door werkgever'),('q_he_5','Health','Niet anders kunnen (onttrekken) dan uitbuiting ondergaan'),('q_he_6','Health','Mishandeld door werkgever'),('q_he_7','Health','Angstig voor werkgever'),('q_he_8','Health','Paspoort ingenomen als borg'),('q_ho_1','Housing','Huur afgetrokken van het loon zonder SNF keurmerk'),('q_ho_10','Housing','Kleine woonruimte moeten delen met (onbekende) collega\'s (min. 10m2 p/p woonoppervlak)'),('q_ho_11','Housing','Niet op de hoogte van verblijfsadres'),('q_ho_12','Housing','Onder druk gezet worden op andere manieren door werkgever'),('q_ho_13','Housing','Paspoort ingenomen als borg'),('q_ho_14','Housing','Maximale aantal huishoudens bestemmingsplan overschreden'),('q_ho_2','Housing','Kosten door werkgever verleende diensten (huur, vervoer, etc) onevenredig hoog'),('q_ho_3','Housing','Met valse beloften naar Nederland gehaald'),('q_ho_4','Housing','Op privéadres van werkgever verblijven'),('q_ho_5','Housing','Geen inschrijving Basis Register Personen (BRP) - uitleg achtergehouden'),('q_ho_6','Housing','In bedrijfspand van werkgever verblijven'),('q_ho_7','Housing','Huisvesting direct gekoppeld aan werkzaamheden. Door het verliezen van de werkzaamheden, verliest deze persoon ook zijn/haar huisvesting.'),('q_ho_8','Housing','Vergoeding moeten betalen voor gebruikt vervoer'),('q_ho_9','Housing','Anderzijds slecht gehuisvest'),('q_la_1','Labor','Gevaarlijk werk moeten doen (door nalatigheid werkgever)'),('q_la_10','Labor','Gechanteerd door werkgever'),('q_la_11','Labor','Gedwongen tot arbeid'),('q_la_12','Labor','Onder druk gezet worden op andere manieren door werkgever'),('q_la_13','Labor','Niet anders kunnen (onttrekken) dan uitbuiting ondergaan'),('q_la_14','Labor','Mishandeld door werkgever'),('q_la_15','Labor','Angstig voor werkgever'),('q_la_16','Labor','Paspoort ingenomen als borg'),('q_la_17','Labor','Vergoeding moeten betalen voor gebruikt vervoer'),('q_la_18','Labor','Huisvesting direct gekoppeld aan werkzaamheden. Door het verliezen van de werkzaamheden, verliest deze persoon ook zijn/haar huisvesting'),('q_la_2','Labor','Ongezond werk moeten doen'),('q_la_3','Labor','Werkdagen > 8 uur'),('q_la_4','Labor','Geen contract ondertekend (>3 mdn werk à 16 uur p/w)'),('q_la_5','Labor','Contract alleen in NL en persoon spreekt geen NL'),('q_la_6','Labor','Schuld bij werkgever'),('q_la_7','Labor','Met valse beloften naar Nederland gehaald'),('q_la_8','Labor','Huisvesting direct gekoppeld aan arbeid'),('q_la_9','Labor','Niet op de hoogte waar werkzaamheden plaats gaan vinden p/d'),('q_pa_1','Payment','Overschrijding uitbetalingstermijn (>30 dgn)'),('q_pa_10','Payment','Kosten door werkgever verleende diensten (huur, vervoer, etc.) onevenredig hoog'),('q_pa_11','Payment','Wel betaald voor (zorg) verzekeringen, niet verzekerd'),('q_pa_12','Payment','Onder druk gezet worden op andere manieren door werkgever'),('q_pa_13','Payment','Paspoort ingenomen als borg'),('q_pa_14','Payment','Vergoeding moeten betalen voor gebruikt vervoer'),('q_pa_15','Payment','Boete moeten betalen die niet in arbeidsovereenkomst staat'),('q_pa_2','Payment','Zwart betaald'),('q_pa_3','Payment','Geen contract ondertekend (>3 mdn werk à 16 uur p/w)'),('q_pa_4','Payment','Contract alleen in NL en persoon spreekt geen NL'),('q_pa_5','Payment','Geen vakantiegeld / vakantiedagen'),('q_pa_6','Payment','Geen loonstrookje ontvangen'),('q_pa_7','Payment','Schuld bij werkgever'),('q_pa_8','Payment','Niet kunnen beschikken over eigen bankrekening'),('q_pa_9','Payment','Huur afgetrokken van het loon zonder SNF keurmerk');
/*!40000 ALTER TABLE `situation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situation_has_offense`
--

DROP TABLE IF EXISTS `situation_has_offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situation_has_offense` (
  `situation_id` varchar(25) NOT NULL,
  `offense_id` int NOT NULL,
  PRIMARY KEY (`situation_id`,`offense_id`),
  KEY `fk_situation_has_offence_offence1_idx` (`offense_id`),
  KEY `fk_situation_has_offence_situation1_idx` (`situation_id`),
  CONSTRAINT `fk_situation_has_offence_offence1` FOREIGN KEY (`offense_id`) REFERENCES `offense` (`id`),
  CONSTRAINT `fk_situation_has_offence_situation1` FOREIGN KEY (`situation_id`) REFERENCES `situation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situation_has_offense`
--

LOCK TABLES `situation_has_offense` WRITE;
/*!40000 ALTER TABLE `situation_has_offense` DISABLE KEYS */;
INSERT INTO `situation_has_offense` VALUES ('q_em_8',1),('q_ho_5',1),('q_pa_1',2),('q_em_22',3),('q_ho_2',3),('q_ho_8',3),('q_la_17',3),('q_pa_10',3),('q_pa_14',3),('q_pa_1',4),('q_pa_1',5),('q_em_3',6),('q_em_4',6),('q_la_6',6),('q_pa_5',6),('q_pa_6',6),('q_em_3',7),('q_pa_5',7),('q_em_23',8),('q_em_10',9),('q_la_9',9),('q_em_1',10),('q_la_4',10),('q_pa_3',10),('q_em_24',11),('q_la_1',11),('q_la_2',11),('q_em_1',12),('q_la_4',12),('q_pa_3',12),('q_pa_15',13),('q_em_13',14),('q_he_1',14),('q_pa_11',14),('q_em_14',15),('q_em_19',15),('q_he_2',15),('q_he_6',15),('q_la_14',15),('q_em_18',16),('q_he_5',16),('q_la_13',16),('q_em_16',17),('q_he_3',17),('q_la_11',17);
/*!40000 ALTER TABLE `situation_has_offense` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 18:42:03
