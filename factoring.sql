-- MySQL dump 10.16  Distrib 10.1.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: factoringTesting
-- ------------------------------------------------------
-- Server version	10.1.15-MariaDB-1~xenial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accionista_codeudores_per_pagare`
--

DROP TABLE IF EXISTS `accionista_codeudores_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accionista_codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `accionista_codeudores_per_pagare_persona_id_foreign` (`persona_id`),
  CONSTRAINT `accionista_codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `accionista_codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accionista_codeudores_per_pagare`
--

LOCK TABLES `accionista_codeudores_per_pagare` WRITE;
/*!40000 ALTER TABLE `accionista_codeudores_per_pagare` DISABLE KEYS */;
INSERT INTO `accionista_codeudores_per_pagare` VALUES ('AAPG2016-001',11),('AAPG2016-001',12),('AAPG2016-002',10),('AAPG2016-002',11),('AAPG2016-002',12),('AAPG2016-003',10),('AAPG2016-003',11),('AAPG2016-003',12),('AAPG2016-004',12),('AAPG2016-007',12),('AAPG2016-009',10),('AAPG2016-009',12),('AAPG2016-012',10),('AAPG2016-012',12),('AAPG2016-013',11),('AAPG2016-013',12),('AAPG2017-002',11),('AAPG2017-002',12),('AAPG2017-004',10),('AAPG2017-004',12),('AAPG2017-005',11),('AAPG2017-005',12),('AAPG2017-006',11),('AAPG2017-006',12);
/*!40000 ALTER TABLE `accionista_codeudores_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeudores_for_pn`
--

DROP TABLE IF EXISTS `codeudores_for_pn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeudores_for_pn` (
  `solicitudId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `personaId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `codeudores_for_pn_solicitudid_foreign` (`solicitudId`),
  CONSTRAINT `codeudores_for_pn_solicitudid_foreign` FOREIGN KEY (`solicitudId`) REFERENCES `pagares` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudores_for_pn`
--

LOCK TABLES `codeudores_for_pn` WRITE;
/*!40000 ALTER TABLE `codeudores_for_pn` DISABLE KEYS */;
INSERT INTO `codeudores_for_pn` VALUES ('AAPG2016-005','pedro','antonio','diaz','garcia','panamena','M','c-3657894'),('AAPG2016-005','ana','patricia','calderon','zuniga','venezolana','F','p054896299'),('AAPG2016-006','guillermo','arturo','ramirez','castillo','venezolano','M','p-18143217'),('AAPG2016-006','ana','','castillo','','panamena','F','c-6060428'),('AAPG2016-010','carlos','augusto','fernandez','aguiar','venezolano','M','p-2547894'),('AAPG2016-010','ana','patricia','garcia','acosta','panamena','F','c-256478');
/*!40000 ALTER TABLE `codeudores_for_pn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeudores_per_cupo`
--

DROP TABLE IF EXISTS `codeudores_per_cupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeudores_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_cupo_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_cupo_persona_id_foreign` (`persona_id`),
  CONSTRAINT `codeudores_per_cupo_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  CONSTRAINT `codeudores_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `codeudores_per_cupo_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudores_per_cupo`
--

LOCK TABLES `codeudores_per_cupo` WRITE;
/*!40000 ALTER TABLE `codeudores_per_cupo` DISABLE KEYS */;
INSERT INTO `codeudores_per_cupo` VALUES ('AACP2016-001',1,10),('AACP2016-001',2,11),('AACP2016-002',19,4),('AACP2016-002',20,6),('AACP2017-001',23,10),('AACP2017-001',24,11);
/*!40000 ALTER TABLE `codeudores_per_cupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeudores_per_pagare`
--

DROP TABLE IF EXISTS `codeudores_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_pagare_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_pagare_persona_id_foreign` (`persona_id`),
  CONSTRAINT `codeudores_per_pagare_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  CONSTRAINT `codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudores_per_pagare`
--

LOCK TABLES `codeudores_per_pagare` WRITE;
/*!40000 ALTER TABLE `codeudores_per_pagare` DISABLE KEYS */;
INSERT INTO `codeudores_per_pagare` VALUES ('AAPG2016-002',5,12),('AAPG2016-002',6,11),('AAPG2016-003',7,10),('AAPG2016-003',8,11),('AAPG2016-012',15,10),('AAPG2016-012',16,11),('AAPG2017-006',25,11),('AAPG2017-006',26,12);
/*!40000 ALTER TABLE `codeudores_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeudores_per_venta`
--

DROP TABLE IF EXISTS `codeudores_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeudores_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_venta_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_venta_persona_id_foreign` (`persona_id`),
  CONSTRAINT `codeudores_per_venta_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  CONSTRAINT `codeudores_per_venta_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `codeudores_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudores_per_venta`
--

LOCK TABLES `codeudores_per_venta` WRITE;
/*!40000 ALTER TABLE `codeudores_per_venta` DISABLE KEYS */;
INSERT INTO `codeudores_per_venta` VALUES ('AAVF2016-001',3,12),('AAVF2016-001',4,11),('AAVF2016-002',9,10),('AAVF2016-002',10,11),('AAVF2016-003',11,10),('AAVF2016-003',12,11),('AAVF2017-002',21,10),('AAVF2017-002',22,12);
/*!40000 ALTER TABLE `codeudores_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeudores_solicitudes`
--

DROP TABLE IF EXISTS `codeudores_solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeudores_solicitudes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ingreso_neto` double(11,2) NOT NULL,
  `activo_circulante` double(11,2) NOT NULL,
  `activo_fijo_neto` double(11,2) NOT NULL,
  `otros_activos` double(11,2) NOT NULL,
  `pasivo_corto_plazo` double(11,2) NOT NULL,
  `pasivo_largo_plazo` double(11,2) NOT NULL,
  `otro_pasivo` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudores_solicitudes`
--

LOCK TABLES `codeudores_solicitudes` WRITE;
/*!40000 ALTER TABLE `codeudores_solicitudes` DISABLE KEYS */;
INSERT INTO `codeudores_solicitudes` VALUES (1,180000.00,50000.00,500000.00,200000.00,20000.00,25000.00,12000.00),(2,80000.00,25000.00,300000.00,25000.00,15000.00,10000.00,5000.00),(3,125000.00,35000.00,325500.00,42000.00,12500.00,21000.00,2500.00),(4,120000.00,25000.00,324500.00,35200.00,5200.00,15450.00,1250.00),(5,125000.00,35000.00,325500.00,42000.00,12500.00,21000.00,2500.00),(6,120000.00,25000.00,324500.00,35200.00,5200.00,15450.00,1250.00),(7,120000.00,20000.00,50000.00,10000.00,10000.00,5000.00,3000.00),(8,40000.00,5000.00,25000.00,4000.00,3000.00,5000.00,4000.00),(9,120000.00,25000.00,250000.00,15000.00,15000.00,9250.00,2525.25),(10,80000.00,15000.00,125000.00,7500.00,8250.00,3600.00,3658.00),(11,120000.00,12500.00,280000.00,23500.00,6500.00,4500.00,7800.00),(12,80000.00,6500.00,80000.00,14200.00,3400.00,5250.00,5300.00),(13,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(14,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(15,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(16,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(17,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(18,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(19,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(20,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(21,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(22,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(23,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(24,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(25,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(26,0.00,0.00,0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `codeudores_solicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nro_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nro_ficha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_registro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'   ELE FACTORING, INC','    2593450-1-832669','   +50766351579','    2593450','832669','2014-05-05','PANAMA','REGISTRO PUBLICO DE PANAMA');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_directivo`
--

DROP TABLE IF EXISTS `company_directivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_directivo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `directivo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firma` enum('U','C') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_directivo_company_id_foreign` (`company_id`),
  CONSTRAINT `company_directivo_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_directivo`
--

LOCK TABLES `company_directivo` WRITE;
/*!40000 ALTER TABLE `company_directivo` DISABLE KEYS */;
INSERT INTO `company_directivo` VALUES (1,1,'WILLIAN','','RAMIREZ','','M','VENEZOLANO','P-054896299','DIRECTOR','U'),(2,1,'CARLOS','','PEREZ','HERNANDEZ','M','PANAMENO','C-36985214','DIRECTOR','U');
/*!40000 ALTER TABLE `company_directivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_representante_per_cupo`
--

DROP TABLE IF EXISTS `company_representante_per_cupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_representante_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `co_repre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`co_repre_id`),
  KEY `company_representante_per_cupo_co_repre_id_foreign` (`co_repre_id`),
  CONSTRAINT `company_representante_per_cupo_co_repre_id_foreign` FOREIGN KEY (`co_repre_id`) REFERENCES `company_directivo` (`id`),
  CONSTRAINT `company_representante_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_representante_per_cupo`
--

LOCK TABLES `company_representante_per_cupo` WRITE;
/*!40000 ALTER TABLE `company_representante_per_cupo` DISABLE KEYS */;
INSERT INTO `company_representante_per_cupo` VALUES ('AACP2016-001',1),('AACP2016-001',2),('AACP2016-002',2),('AACP2016-003',1),('AACP2016-003',2),('AACP2017-001',2);
/*!40000 ALTER TABLE `company_representante_per_cupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_representante_per_venta`
--

DROP TABLE IF EXISTS `company_representante_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_representante_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `co_repre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`co_repre_id`),
  KEY `company_representante_per_venta_co_repre_id_foreign` (`co_repre_id`),
  CONSTRAINT `company_representante_per_venta_co_repre_id_foreign` FOREIGN KEY (`co_repre_id`) REFERENCES `company_directivo` (`id`),
  CONSTRAINT `company_representante_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_representante_per_venta`
--

LOCK TABLES `company_representante_per_venta` WRITE;
/*!40000 ALTER TABLE `company_representante_per_venta` DISABLE KEYS */;
INSERT INTO `company_representante_per_venta` VALUES ('AAVF2016-001',1),('AAVF2016-002',1),('AAVF2016-003',1),('AAVF2016-004',1),('AAVF2017-001',2),('AAVF2017-002',2),('AAVF2017-003',1),('AAVF2017-003',2);
/*!40000 ALTER TABLE `company_representante_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupo_per_users`
--

DROP TABLE IF EXISTS `cupo_per_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupo_per_users` (
  `user_id` int(10) unsigned NOT NULL,
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`cupo_id`),
  KEY `cupo_per_users_cupo_id_foreign` (`cupo_id`),
  CONSTRAINT `cupo_per_users_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cupo_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupo_per_users`
--

LOCK TABLES `cupo_per_users` WRITE;
/*!40000 ALTER TABLE `cupo_per_users` DISABLE KEYS */;
INSERT INTO `cupo_per_users` VALUES (2,'AACP2016-002'),(3,'AACP2016-001'),(3,'AACP2017-001'),(4,'AACP2016-003');
/*!40000 ALTER TABLE `cupo_per_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupos`
--

DROP TABLE IF EXISTS `cupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupos` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `monto_initial` double(11,2) NOT NULL,
  `monto_final` double(11,2) DEFAULT NULL,
  `destino` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('S','R','IP','AWOC','AWC','A','D','I','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprovado` datetime DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `fecha_desactivacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cupos_report_id_foreign` (`report_id`),
  CONSTRAINT `cupos_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupos`
--

LOCK TABLES `cupos` WRITE;
/*!40000 ALTER TABLE `cupos` DISABLE KEYS */;
INSERT INTO `cupos` VALUES ('AACP2016-001',1,150000.00,NULL,'capital de trabajo','AWOC','2016-06-21 12:42:25','2016-06-21 13:33:14','2016-06-24 18:16:21','2016-06-27 18:16:21',NULL),('AACP2016-002',19,85000.00,NULL,'capital de trabajo','AWC','2016-08-29 12:14:29','2017-01-03 13:27:12','2017-01-03 13:27:41','2017-01-03 13:27:41',NULL),('AACP2016-003',6,25000.00,NULL,'capital de trabajo','AWOC','2016-08-29 12:25:22','2016-08-29 12:28:01','2016-08-29 12:39:46','2016-08-30 12:39:46',NULL),('AACP2017-001',24,250000.00,NULL,'capital de trabajo','AWOC','2017-02-07 10:34:44','2017-02-07 10:41:38','2017-02-07 10:49:23','2017-02-07 10:49:23',NULL);
/*!40000 ALTER TABLE `cupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_bancario_pj`
--

DROP TABLE IF EXISTS `datos_bancario_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_bancario_pj` (
  `pj_id` int(10) unsigned NOT NULL,
  `nombre_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` enum('A','C') COLLATE utf8_unicode_ci NOT NULL,
  `nro_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`nombre_banco`,`nro_cuenta`),
  CONSTRAINT `datos_bancario_pj_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_bancario_pj`
--

LOCK TABLES `datos_bancario_pj` WRITE;
/*!40000 ALTER TABLE `datos_bancario_pj` DISABLE KEYS */;
INSERT INTO `datos_bancario_pj` VALUES (1,'Fritsch-Dach Bank','A','4929943494233'),(2,'BANESCO','C','123654789'),(2,'CITI','A','987654321'),(2,'CREDI CORP','C','741258963');
/*!40000 ALTER TABLE `datos_bancario_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_bancario_pn`
--

DROP TABLE IF EXISTS `datos_bancario_pn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_bancario_pn` (
  `pn_id` int(10) unsigned NOT NULL,
  `nombre_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` enum('A','C') COLLATE utf8_unicode_ci NOT NULL,
  `nro_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pn_id`,`nombre_banco`,`nro_cuenta`),
  CONSTRAINT `datos_bancario_pn_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_bancario_pn`
--

LOCK TABLES `datos_bancario_pn` WRITE;
/*!40000 ALTER TABLE `datos_bancario_pn` DISABLE KEYS */;
INSERT INTO `datos_bancario_pn` VALUES (1,'Emmerich-Ryan Bank','A','5292267770027317'),(2,'Hayes-Goodwin Bank','A','4485014315914'),(2,'Murazik, Schroeder and Stokes Bank','A','5256207100392829'),(3,'Carter PLC Bank','A','5217356992294821'),(3,'Hodkiewicz, Kemmer and Metz Bank','C','375283171833865'),(4,'McKenzie, Wisoky and Osinski Bank','C','4024007133784'),(5,'Greenfelder, Leannon and Langworth Bank','A','5419186238545389'),(6,'Conroy, Dicki and Block Bank','A','4485323143034561'),(6,'Mitchell, Abbott and Stehr Bank','A','5595056282906108'),(7,'Russel, Welch and Beahan Bank','A','4539312310850285'),(8,'BANESCO','C','123456789'),(8,'CREDI CORP','A','987654321'),(9,'BANESCO','C','369852147'),(9,'CITI BANK','A','147852369'),(9,'CREDI CORP','C','258741'),(9,'CREDICORP','A','963852741'),(10,'BANESCO','C','123456789'),(10,'CREDI CORP','A','369852147'),(11,'BANESCO','C','369852147'),(11,'CITI','A','3698741258'),(12,'BANESCO','C','147852369'),(12,'CREDI CORP','A','963852741'),(13,'CITI BANK','A','3658794587'),(13,'COR BANK','C','32598754875');
/*!40000 ALTER TABLE `datos_bancario_pn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_laborales`
--

DROP TABLE IF EXISTS `datos_laborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_laborales` (
  `pn_id` int(10) unsigned NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pj_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actividad_economica` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `antiguedad` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pn_id`),
  CONSTRAINT `datos_laborales_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_laborales`
--

LOCK TABLES `datos_laborales` WRITE;
/*!40000 ALTER TABLE `datos_laborales` DISABLE KEYS */;
INSERT INTO `datos_laborales` VALUES (1,'Christiansen, Hagenes and Price','106-522','+84725231744','Layla.Harber@yahoo.com','9078 Collier Estate\nMoenborough, OK 96252-0940','Operator in System','vice-President',6),(2,'Wunsch PLC','437-573','+12449584131','Monahan.Louisa@yahoo.com','739 Kuvalis Hills\nElinorburgh, IN 85581-9944','Casher','reporter',15),(3,'Krajcik, Prosacco and Adams','897-560','+13981105534','Olen.Fritsch@gmail.com','89059 Emerson Common\nVirginialand, HI 02352-1075','Operator in System','President',12),(4,'Will, Bauch and Wisoky','804-338','+88252471120','Delia.Daugherty@hotmail.com','35620 Bernhard Rapids\nEast Louie, IA 08257','Casher','vice-President',13),(5,'Armstrong, Langworth and Fisher','966-333','+30717929197','Vivienne.Bode@gmail.com','3591 Erling Groves Apt. 042\nEast Lambertville, MS 21889-3578','Operator in System','vice-President',14),(6,'Braun and Sons','678-591','+98667994330','Adaline.Botsford@gmail.com','539 Stanton Drive Apt. 569\nNew Gabemouth, TN 01539','Looking for stuff','President',12),(7,'Nitzsche, Ondricka and Adams','270-271','+21152154572','Stephany.Turcotte@yahoo.com','84225 Enoch Pines\nZacharymouth, IL 01194','Operator in System','vice-President',1),(8,'ABC SUPLIES, INC','123-456-789','+50766351579','WILLYRA2003@YAHOO.COM','SAN FRANCISCO MARINA PLAZA','COMERCIAL','PRESIDENTE',7),(9,'ABC SUPLIES','123-456-789','+50766351579','WILLYRA2003@YAHOO.COM','SAN FRANCISCO MARINA PLAZA CON VIA ISRRAEL PH MARINA PLAZA PANAMA','COMERCIAL','TESORERO',7),(10,'ABC SUPLIES','123-456-789','+50766351579','WILLYRA2003@YAHOO.COM','SAN FRANCISCO, MARINA PLAZA','COMERCIAL','PRESIDENTE',7),(11,'ABC SUPLIEWS','123-456-789','+50766351579','WILLYRA2003@YAHOO.COM','SAN FRANCISCO MARINA PLAZA','COMERCIAL','TESORERO',7),(12,'ABC SUPLIES','369-852-147','+50766351589','WILLYRA2003@YAHOO.COM','SAN FRANCISCO MARINA PLAZA','COMERCIAL','SECRETARIA JUNTA DIRECTIVA',7),(13,'REFRIGERACION EL PALMAR','3258-96584 DV 54','+5072658478','WILLY09101956@GMAIL.COM','PUNTA PACIFICA PANAMA','SERVICIO DE REFRIGERACION','GERENTE DE OPERACIONES',9);
/*!40000 ALTER TABLE `datos_laborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directivos`
--

DROP TABLE IF EXISTS `directivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directivos` (
  `pj_id` int(10) unsigned NOT NULL,
  `pn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firma` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`pn_id`),
  CONSTRAINT `directivos_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directivos`
--

LOCK TABLES `directivos` WRITE;
/*!40000 ALTER TABLE `directivos` DISABLE KEYS */;
INSERT INTO `directivos` VALUES (1,'C-21501409','Levi','Maurine','Steuber','Schroeder','M','Morocco','presidente','C'),(1,'C-27892811','Emily','Rahsaan','Skiles','Hessel','M','British Virgin Islands','tesorero','U'),(2,'C-1236-4587-4','guillermo','arturo','ramirez','castillo','M','panameno','tesorero','C'),(2,'p-054896299','willian','dionicio','ramirez','montes','M','venezolano','presidente','U'),(2,'P-064896299','nereida','','castillo','','F','venezolana','secretaria','C');
/*!40000 ALTER TABLE `directivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_financiero`
--

DROP TABLE IF EXISTS `estado_financiero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_financiero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ingreso_anuales` double(11,2) NOT NULL,
  `activo_circulante` double(11,2) NOT NULL,
  `activo_fijo_neto` double(11,2) NOT NULL,
  `inversiones` double(11,2) NOT NULL,
  `otros_activos` double(11,2) NOT NULL,
  `pasvio_corto_plazo` double(11,2) NOT NULL,
  `pasivo_largo_plazo` double(11,2) NOT NULL,
  `otros_pasivo` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_financiero`
--

LOCK TABLES `estado_financiero` WRITE;
/*!40000 ALTER TABLE `estado_financiero` DISABLE KEYS */;
INSERT INTO `estado_financiero` VALUES (1,35000.00,4500.00,60500.00,0.00,12400.00,3525.00,12500.00,2650.00),(2,35000.00,12000.00,20000.00,0.00,5000.00,6000.00,3500.00,1250.00),(3,1200.00,120.00,120.00,120.00,120.00,0.00,120.00,12.00),(4,85000.00,5800.00,120000.00,5000.00,2500.00,6000.00,5500.00,1200.00),(5,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(6,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `estado_financiero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_financiero_per_cupo`
--

DROP TABLE IF EXISTS `estado_financiero_per_cupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_financiero_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado_financiero_id` int(10) unsigned NOT NULL,
  KEY `estado_financiero_per_cupo_cupo_id_foreign` (`cupo_id`),
  KEY `estado_financiero_per_cupo_estado_financiero_id_foreign` (`estado_financiero_id`),
  CONSTRAINT `estado_financiero_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `estado_financiero_per_cupo_estado_financiero_id_foreign` FOREIGN KEY (`estado_financiero_id`) REFERENCES `estado_financiero` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_financiero_per_cupo`
--

LOCK TABLES `estado_financiero_per_cupo` WRITE;
/*!40000 ALTER TABLE `estado_financiero_per_cupo` DISABLE KEYS */;
INSERT INTO `estado_financiero_per_cupo` VALUES ('AACP2016-003',1);
/*!40000 ALTER TABLE `estado_financiero_per_cupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_financiero_per_pagare`
--

DROP TABLE IF EXISTS `estado_financiero_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_financiero_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado_financiero_id` int(10) unsigned NOT NULL,
  KEY `estado_financiero_per_pagare_pagare_id_foreign` (`pagare_id`),
  KEY `estado_financiero_per_pagare_estado_financiero_id_foreign` (`estado_financiero_id`),
  CONSTRAINT `estado_financiero_per_pagare_estado_financiero_id_foreign` FOREIGN KEY (`estado_financiero_id`) REFERENCES `estado_financiero` (`id`) ON DELETE CASCADE,
  CONSTRAINT `estado_financiero_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_financiero_per_pagare`
--

LOCK TABLES `estado_financiero_per_pagare` WRITE;
/*!40000 ALTER TABLE `estado_financiero_per_pagare` DISABLE KEYS */;
INSERT INTO `estado_financiero_per_pagare` VALUES ('AAPG2016-005',2),('AAPG2016-006',3),('AAPG2016-011',5);
/*!40000 ALTER TABLE `estado_financiero_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_financiero_per_venta`
--

DROP TABLE IF EXISTS `estado_financiero_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_financiero_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado_financiero_id` int(10) unsigned NOT NULL,
  KEY `estado_financiero_per_venta_venta_id_foreign` (`venta_id`),
  KEY `estado_financiero_per_venta_estado_financiero_id_foreign` (`estado_financiero_id`),
  CONSTRAINT `estado_financiero_per_venta_estado_financiero_id_foreign` FOREIGN KEY (`estado_financiero_id`) REFERENCES `estado_financiero` (`id`) ON DELETE CASCADE,
  CONSTRAINT `estado_financiero_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_financiero_per_venta`
--

LOCK TABLES `estado_financiero_per_venta` WRITE;
/*!40000 ALTER TABLE `estado_financiero_per_venta` DISABLE KEYS */;
INSERT INTO `estado_financiero_per_venta` VALUES ('AAVF2016-004',4),('AAVF2016-005',6);
/*!40000 ALTER TABLE `estado_financiero_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_per_venta`
--

DROP TABLE IF EXISTS `factura_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factura_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`factura_id`),
  KEY `factura_per_venta_factura_id_foreign` (`factura_id`),
  CONSTRAINT `factura_per_venta_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `factura_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_per_venta`
--

LOCK TABLES `factura_per_venta` WRITE;
/*!40000 ALTER TABLE `factura_per_venta` DISABLE KEYS */;
INSERT INTO `factura_per_venta` VALUES ('AAVF2016-001',1),('AAVF2016-001',2),('AAVF2016-001',3),('AAVF2016-002',4),('AAVF2016-002',5),('AAVF2016-002',6),('AAVF2016-003',7),('AAVF2016-003',8),('AAVF2016-003',9),('AAVF2016-003',10),('AAVF2016-003',11),('AAVF2016-004',12),('AAVF2016-004',13),('AAVF2016-004',14),('AAVF2016-005',15),('AAVF2016-006',16),('AAVF2016-006',17),('AAVF2016-006',18),('AAVF2017-001',20),('AAVF2017-001',21),('AAVF2017-001',22),('AAVF2017-001',23),('AAVF2017-002',27),('AAVF2017-002',28),('AAVF2017-002',29),('AAVF2017-002',30),('AAVF2017-003',31),('AAVF2017-003',32);
/*!40000 ALTER TABLE `factura_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `factura_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double(11,2) NOT NULL,
  `deudor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deudor_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha_cancelado` datetime DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'125478',4525.25,'el rey','12345678','2016-06-14','2016-07-11','2016-08-29 14:57:42',0,1),(2,'987456',3250.00,'riba smith','98745632','2016-06-07','2016-07-14','2016-08-29 14:57:42',0,1),(3,'25874',2450.50,'la marca','336985214','2016-06-15','2016-07-12','2016-08-29 14:57:42',0,1),(4,'23578',25358.00,'DEPOT ','365789','2016-08-01','2016-09-14','2016-08-31 17:55:30',0,1),(5,'258748',3910.05,'EL REY','365788','2016-08-03','2016-09-16','2016-08-31 17:55:30',0,1),(6,'8795784',6286.52,'PRIME ','365878','2016-08-09','2016-09-12','2016-12-14 11:04:24',0,1),(7,'254784',5000.00,'LA TILA','125487','2016-08-10','2016-08-12','2016-09-15 14:45:00',0,1),(8,'24587',9095.00,'DO IT CENTER','12547','2016-08-16','2016-09-14','2016-09-15 14:45:00',0,1),(9,'214587',5850.55,'LA ESTRELLA','235478954','2016-07-11','2016-09-12','2016-12-30 07:30:52',0,1),(10,'215478',3550.00,'LA ESTRELLA','235478954','2016-08-15','2016-09-15','2017-01-03 08:25:30',0,1),(11,'215478',0.00,'EL REY','23214587','2016-08-02','2016-09-14',NULL,0,0),(12,'254784',2500.00,'LA FONDA','25478','2016-08-08','2016-09-14','2017-01-04 07:44:48',0,1),(13,'254874',3500.00,'ALMACENES ABC','23658748','2016-08-09','2016-09-06','2016-09-15 14:39:14',0,1),(14,'256478',2000.00,'EL REY','2547874','2016-08-02','2016-09-12','2016-09-15 14:39:14',0,1),(15,'',1000.00,'','','2016-09-01','2016-10-30',NULL,0,0),(16,'125478',8500.00,'HOTEL HILTON','12586954','2016-11-16','2016-12-16',NULL,0,0),(17,'235478',3650.25,'ALMACENES EL SOL','235658745','2016-11-01','2016-12-22',NULL,0,0),(18,'2698574',2568.00,'FRANCO MEZUTI','25478','2016-11-06','2016-12-29',NULL,0,0),(20,'125874',3560.00,'IMPORTADORA LA FRANCIA','125478','2016-12-07','2017-01-17',NULL,1,0),(21,'2358745',2542.00,'ALMACENES SIGLO XXI','3256879','2016-12-22','2017-02-21',NULL,1,0),(22,'2587458',3450.00,'EL REY','2365874','2016-11-22','2017-01-22',NULL,1,0),(23,'25478954',3250.00,'LA TILA ','36578-58475','2016-11-10','2017-01-27',NULL,1,0),(27,'2541548',2550.00,'INVERSIONES 2125','12365478','2016-12-13','2017-02-07',NULL,1,0),(28,'3258745',5650.00,'ATELIER JORGE','258741','2016-12-01','2017-02-14',NULL,1,0),(29,'2547845',9725.00,'EL REY','259874512','2016-12-01','2017-02-01',NULL,1,0),(30,'2547845',8940.00,'EL REY','259874512','2016-12-02','2017-02-07',NULL,1,0),(31,'12',100.00,'123','122','2017-01-03','2017-01-16','2017-01-04 13:06:55',0,1),(32,'221',50.00,'SDD','21','2016-12-06','2017-01-11',NULL,0,0);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_10_26_101053_create_roles_table',1),('2015_10_26_101228_create_users_table',1),('2015_10_26_101344_create_persona_natural_table',1),('2015_10_26_101448_create_pn_users_table',1),('2015_10_26_101753_create_nacionalidades_table',1),('2015_10_26_101954_create_perfil_de_cliente_table',1),('2015_10_26_102109_create_datos_laborales_table',1),('2015_10_26_102302_create_datos_bancarios_pn_table',1),('2015_11_04_082529_create_persona_juridica_table',1),('2015_11_04_082913_create_pj_users_table',1),('2015_11_05_105444_create_principale_cliente_table',1),('2015_11_08_013716_create_representant_leageles_table',1),('2015_11_08_015048_create_directivos_tables',1),('2015_11_08_015707_create_pn_accionista_table',1),('2015_11_09_095845_create_pj_accionista_table',1),('2015_11_09_095954_create_datos_bancario_pj',1),('2015_11_09_123135_create_pj_panama_table',1),('2015_11_09_123211_create_pj_venezuela_table',1),('2015_11_27_222447_create_reclacificacion_table',1),('2015_12_08_163558_create_recla_per_user_table',1),('2015_12_08_163908_create_factura_table',1),('2015_12_09_164253_create_reports_table',1),('2015_12_10_141420_create_cupo_table',1),('2015_12_10_141508_create_pagares_table',1),('2015_12_10_143356_create_cupo_per_user_table',1),('2015_12_10_143427_create_pagare_per_user_table',1),('2015_12_10_143855_create_venta_de_facturas_table',1),('2015_12_14_205312_create_vente_per_users_table',1),('2015_12_14_214804_create_factura_per_venta_table',1),('2016_03_24_231628_create_deudores_table',1),('2016_03_25_223132_create_sessions_table',1),('2016_03_26_012855_create_codeudores_per_cupo_table',1),('2016_03_30_010440_codeudor_per_pagare',1),('2016_03_31_003426_create_pago_table',1),('2016_03_31_003553_create_pago_per_factura_table',1),('2016_04_01_154432_create_codedudor_per_venta',1),('2016_04_03_054521_create_company_table',1),('2016_04_03_061028_create_company_directivo_table',1),('2016_05_07_203536_create_representante_legales_per_cupo',1),('2016_05_07_204516_create_representante_legales_per_pagare',1),('2016_05_07_204836_create_representante_legales_per_venta',1),('2016_05_09_180631_create_representante_codeudores_per_pagare_table',1),('2016_05_09_224947_create_accionista_codeudores_per_pagare_table',1),('2016_05_13_170504_create_company_representante_per_cupo_table',1),('2016_05_13_170525_create_company_representante_per_venta_table',1),('2016_06_03_123552_create_pagos_per_venta_table',1),('2016_06_07_160210_create_pagos_per_pagare_table',1),('2016_06_22_175642_create_jobs_table',2),('2016_06_24_173527_change_year_in_recla_per_user_table',2),('2016_07_03_201622_create_failed_jobs_table',3),('2016_07_19_093149_create_estado_financiero_table',4),('2016_07_19_093711_create_estado_financiero_per_cupo_table',4),('2016_07_19_094103_create_estado_financiero_per_pagare_table',4),('2016_07_19_094536_create_estado_financiero_per_venta_table',4),('2016_07_22_121011_create_table_codeudores_for_pn_table',4),('2016_09_09_120936_drop_primary_key_and_add_new_primary_key_in_company_reprsentante_per_venta',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nacionalidades` (
  `pn_id` int(10) unsigned NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pn_id`,`pais`),
  CONSTRAINT `nacionalidades_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` VALUES (1,'Panameña'),(2,'Panameña'),(3,'Panameña'),(4,'Panameña'),(5,'Panameña'),(6,'Panameña'),(7,'Panameña'),(8,'VENEZOLANO'),(9,'PANAMENO'),(10,'VENEZOLANO'),(11,'PANAMENO'),(12,'VENEZOLANA'),(13,'PANAMENO');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagare_per_users`
--

DROP TABLE IF EXISTS `pagare_per_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagare_per_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`pagare_id`),
  KEY `pagare_per_users_pagare_id_foreign` (`pagare_id`),
  CONSTRAINT `pagare_per_users_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pagare_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagare_per_users`
--

LOCK TABLES `pagare_per_users` WRITE;
/*!40000 ALTER TABLE `pagare_per_users` DISABLE KEYS */;
INSERT INTO `pagare_per_users` VALUES (3,'AAPG2016-002'),(3,'AAPG2016-003'),(3,'AAPG2016-008'),(3,'AAPG2016-009'),(3,'AAPG2016-012'),(3,'AAPG2016-013'),(3,'AAPG2017-006'),(4,'AAPG2016-005'),(4,'AAPG2016-006'),(4,'AAPG2016-011'),(4,'AAPG2017-003');
/*!40000 ALTER TABLE `pagare_per_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagares`
--

DROP TABLE IF EXISTS `pagares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagares` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `monto_initial` double(11,2) NOT NULL,
  `monto_final` double(11,2) DEFAULT NULL,
  `plazo_initial` int(10) unsigned NOT NULL,
  `plazo_final` int(10) unsigned DEFAULT NULL,
  `redimiento` double(5,4) DEFAULT NULL,
  `fecha_cancelada` datetime DEFAULT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprobado` datetime DEFAULT NULL,
  `fecha_liquidacion` date DEFAULT NULL,
  `destino` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('S','R','IP','D','AWOC','AWC','A','E','POT','PL','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pagares_report_id_foreign` (`report_id`),
  CONSTRAINT `pagares_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagares`
--

LOCK TABLES `pagares` WRITE;
/*!40000 ALTER TABLE `pagares` DISABLE KEYS */;
INSERT INTO `pagares` VALUES ('AAPG2016-001',NULL,12270.90,12270.90,15,15,0.2000,NULL,NULL,'2016-06-29 19:17:53','2016-06-29','','A','2016-06-29 19:17:53'),('AAPG2016-002',3,55000.00,45000.00,60,60,0.5217,'2016-09-15 14:41:30','2016-07-04 09:39:44','2016-07-04 09:48:27','2016-07-04','capital de trabajo','POT','2016-07-02 14:10:03'),('AAPG2016-003',4,50000.00,25000.00,25,25,0.5500,'2016-08-29 14:46:45','2016-08-24 10:49:17','2016-08-24 10:52:16','2016-08-24','capital de trabajo','POT','2016-08-24 10:44:33'),('AAPG2016-004',NULL,42665.48,42665.48,18,18,0.2000,NULL,NULL,'2016-08-29 12:04:10','2016-08-29','','A','2016-08-29 12:04:10'),('AAPG2016-005',7,15000.00,15000.00,30,30,0.5217,'2016-12-02 07:20:33','2016-08-29 15:08:47','2016-08-29 15:13:01','2016-08-29','capital de trabajo','POT','2016-08-29 15:06:39'),('AAPG2016-006',8,2500.00,2500.00,60,60,0.5217,'2016-12-02 07:24:30','2016-08-29 15:24:58','2016-08-29 15:26:18','2016-08-29','pagare','POT','2016-08-29 15:24:30'),('AAPG2016-007',NULL,29369.44,29369.44,15,15,0.2500,NULL,NULL,'2016-08-31 17:38:54','2016-08-31','','A','2016-08-31 17:38:54'),('AAPG2016-008',10,20000.00,20000.00,30,30,0.5217,'2017-01-03 08:20:10','2016-08-31 17:58:15','2016-08-31 17:59:29','2016-08-31','capital de trabajo','POT','2016-08-31 17:56:07'),('AAPG2016-009',11,100000.00,100000.00,60,60,0.6200,NULL,'2016-08-31 18:08:10','2017-01-03 09:06:19','2017-01-03','capital de trabajo','AWOC','2016-08-31 18:04:42'),('AAPG2016-010',NULL,12000.00,12000.00,12,12,0.5000,NULL,NULL,'2016-09-01 11:19:43','2016-09-01','','A','2016-09-01 11:19:43'),('AAPG2016-011',13,1000.00,1000.00,60,60,0.5217,'2017-01-04 07:39:47','2016-09-01 19:35:47','2016-09-01 19:36:48','2016-09-01','Capital de trabajo','POT','2016-09-01 19:34:42'),('AAPG2016-012',16,52000.00,52000.00,60,30,0.6200,NULL,'2016-12-15 07:23:06','2017-01-03 09:21:36','2017-01-03','capital de trabajo','AWOC','2016-12-02 07:58:25'),('AAPG2016-013',22,500.00,500.00,30,30,0.6000,NULL,'2017-01-04 12:50:31','2017-01-04 12:51:20','2017-01-04','Personal','AWOC','2016-12-14 11:10:14'),('AAPG2017-002',NULL,19203.00,19203.00,47,49,0.5000,NULL,NULL,'2017-01-03 10:33:32','2017-01-03','create for venta','A','2017-01-03 10:33:32'),('AAPG2017-003',NULL,12500.00,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,'capital de trabajo','S','2017-01-04 07:46:43'),('AAPG2017-004',NULL,40297.50,40297.50,40,41,0.5000,NULL,NULL,'2017-01-04 08:16:35','2017-01-04','create for venta','A','2017-01-04 08:16:35'),('AAPG2017-005',NULL,150.00,150.00,12,12,0.5000,NULL,NULL,'2017-01-04 13:03:23','2017-01-04','create for venta','A','2017-01-04 13:03:23'),('AAPG2017-006',25,150000.00,150000.00,60,60,0.6200,NULL,'2017-02-07 10:59:10','2017-02-07 11:00:27','2017-02-07','capital de trabajo','AWC','2017-02-07 10:56:51');
/*!40000 ALTER TABLE `pagares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_per_factura`
--

DROP TABLE IF EXISTS `pago_per_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_per_factura` (
  `pago_id` int(10) unsigned NOT NULL,
  `factura_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pago_id`,`factura_id`),
  KEY `pago_per_factura_factura_id_foreign` (`factura_id`),
  CONSTRAINT `pago_per_factura_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`),
  CONSTRAINT `pago_per_factura_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_per_factura`
--

LOCK TABLES `pago_per_factura` WRITE;
/*!40000 ALTER TABLE `pago_per_factura` DISABLE KEYS */;
INSERT INTO `pago_per_factura` VALUES (6,1),(6,2),(6,3),(7,4),(7,5),(9,13),(9,14),(11,7),(11,8),(14,6),(15,9),(17,10),(19,12),(20,31);
/*!40000 ALTER TABLE `pago_per_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path_to_pago` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acc_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `fecha_depositada` date NOT NULL,
  `monto` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (4,'app/public/pagos/3/AAPG2016-003/57c49125e7b31.png','Corbank','T',1,'2016-08-29',25197.26),(6,'app/public/pagos/3/AAVF2016-001/57c493b69cc47.png','Baneso','CH',1,'2016-08-29',10864.15),(7,'app/public/pagos/3/AAVF2016-002/57c760625120a.png','Baneso','T',1,'2016-08-31',28677.98),(9,'app/public/pagos/4/AAVF2016-004/57daf8e278f93.png','Banco General','CH',1,'2016-09-15',5552.85),(10,'app/public/pagos/3/AAPG2016-002/57daf96a612e3.jpg','Banesco','CH',1,'2016-09-15',49680.98),(11,'app/public/pagos/3/AAVF2016-003/57dafa3cda87b.png','Banesco','T',1,'2016-09-15',14080.23),(12,'app/public/pagos/4/AAPG2016-005/584167112a5bb.png','Banesco','T',1,'2016-12-02',16893.98),(13,'app/public/pagos/4/AAPG2016-006/584167fe52478.jpg','Banco General','CH',1,'2016-12-02',2828.80),(14,'app/public/pagos/3/AAVF2016-002/58516d886b4b2.jpg','Banesco','CH',1,'2016-12-14',7005.07),(15,'app/public/pagos/3/AAVF2016-003/5866537c6284a.JPG','Banesco','CH',1,'2016-12-30',6623.41),(16,'app/public/pagos/3/AAPG2016-008/586ba50abee97.png','Banesco','T',1,'2017-01-03',23201.50),(17,'app/public/pagos/3/AAVF2016-003/586ba64a55e0e.png','Banco General','T',1,'2017-01-03',4018.96),(18,'app/public/pagos/4/AAPG2016-011/586ced13a4dc3.png','Banco General','T',1,'2017-01-04',1166.74),(19,'app/public/pagos/4/AAVF2016-004/586cee405318d.jpg','Banesco','CH',1,'2017-01-04',2838.00),(20,'app/public/pagos/3/AAVF2017-003/586d39bfb02c2.jpeg','Banesco','T',1,'2017-01-04',98.04);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_per_pagare`
--

DROP TABLE IF EXISTS `pagos_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos_per_pagare` (
  `pago_id` int(10) unsigned NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `pagos_per_pagare_pago_id_foreign` (`pago_id`),
  KEY `pagos_per_pagare_pagare_id_foreign` (`pagare_id`),
  CONSTRAINT `pagos_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`),
  CONSTRAINT `pagos_per_pagare_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_per_pagare`
--

LOCK TABLES `pagos_per_pagare` WRITE;
/*!40000 ALTER TABLE `pagos_per_pagare` DISABLE KEYS */;
INSERT INTO `pagos_per_pagare` VALUES (4,'AAPG2016-003'),(10,'AAPG2016-002'),(12,'AAPG2016-005'),(13,'AAPG2016-006'),(16,'AAPG2016-008'),(18,'AAPG2016-011');
/*!40000 ALTER TABLE `pagos_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_per_venta`
--

DROP TABLE IF EXISTS `pagos_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos_per_venta` (
  `pago_id` int(10) unsigned NOT NULL,
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pago_id`,`venta_id`),
  KEY `pagos_per_venta_venta_id_foreign` (`venta_id`),
  CONSTRAINT `pagos_per_venta_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pagos_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_per_venta`
--

LOCK TABLES `pagos_per_venta` WRITE;
/*!40000 ALTER TABLE `pagos_per_venta` DISABLE KEYS */;
INSERT INTO `pagos_per_venta` VALUES (6,'AAVF2016-001'),(7,'AAVF2016-002'),(9,'AAVF2016-004'),(11,'AAVF2016-003'),(14,'AAVF2016-002'),(15,'AAVF2016-003'),(17,'AAVF2016-003'),(19,'AAVF2016-004'),(20,'AAVF2017-003');
/*!40000 ALTER TABLE `pagos_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_clientes`
--

DROP TABLE IF EXISTS `perfil_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_clientes` (
  `pn_id` int(10) unsigned NOT NULL,
  `conocimiento` enum('N','L','B','E') COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_academico` enum('EP','ES','EU') COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_activo` double(11,2) DEFAULT NULL,
  `total_pasivo` double(11,2) DEFAULT NULL,
  `ingreso_anual` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`pn_id`),
  CONSTRAINT `perfil_clientes_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_clientes`
--

LOCK TABLES `perfil_clientes` WRITE;
/*!40000 ALTER TABLE `perfil_clientes` DISABLE KEYS */;
INSERT INTO `perfil_clientes` VALUES (1,'L','EP',503901.52,170731.23,73078.10),(2,'L','EP',185643.84,23102.56,27109.37),(3,'L','ES',277354.31,30030.42,21363.25),(4,'L','EP',16674.20,16501.44,17223.10),(5,'N','EP',745799.25,514272.19,35390.34),(6,'E','ES',7590.54,1952.23,82011.70),(7,'B','EU',404632.97,267402.84,26154.04),(8,'B','EU',750000.00,50000.00,180000.00),(9,'B','EU',350000.00,50000.00,80000.00),(10,'B','EU',750000.00,25000.00,180000.00),(11,'B','EU',325000.00,25000.00,80000.00),(12,'B','EU',350000.00,30000.00,75000.00),(13,'B','EU',124800.00,0.00,35000.00);
/*!40000 ALTER TABLE `perfil_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_juridica`
--

DROP TABLE IF EXISTS `persona_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_juridica` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pj_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_empleados` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_juridica`
--

LOCK TABLES `persona_juridica` WRITE;
/*!40000 ALTER TABLE `persona_juridica` DISABLE KEYS */;
INSERT INTO `persona_juridica` VALUES (1,'163-366','8316 Terry Falls Suite 516\nMalvinaberg, NC 11456','+10885612286','PA','Helga14@yahoo.com',9123),(2,'123-1-456 dv51','san francisco, marina plaza','+50766351579','PA','willyra2003@yahoo.com',12);
/*!40000 ALTER TABLE `persona_juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_naturals`
--

DROP TABLE IF EXISTS `persona_naturals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_naturals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pn_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` enum('P','C','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` enum('M','F','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_civil` enum('S','C','D','V','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_naturals`
--

LOCK TABLES `persona_naturals` WRITE;
/*!40000 ALTER TABLE `persona_naturals` DISABLE KEYS */;
INSERT INTO `persona_naturals` VALUES (1,'p-23828756','C','F','1982-01-24','+64711043678','0752 Koss Port\nElbertburgh, CT 58487-5867','Venezuela','S','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'p-6175763','C','F','1967-12-30','+42815975654','27443 Gladys Street Apt. 185\nNorth Madeline, OK 04693','Antigua and Barbuda','C','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'p-27136801','P','F','1969-09-08','+7311222578','531 Tillman Circle\nNorth Emieberg, RI 86796','Slovakia (Slovak Republic)','S','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'p-12284676','C','F','1978-06-13','+70070051253','7693 Casper Skyway\nDaishahaven, MO 55773','Malawi','D','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'p-29578337','P','F','1958-09-12','+63055463153','1486 Murray Lakes\nLorenzaville, DC 70054-6136','French Guiana','S','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'p-13314316','P','F','1973-08-10','+1506609861','841 Adelle Hill Suite 026\nBergstromstad, PA 06931','Bulgaria','D','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'p-12547830','P','M','1968-11-17','+3054722530','67166 Mohr Parks\nWunschview, KY 83438-8663','Bouvet Island (Bouvetoya)','D','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'P-054896299',NULL,'M','1956-10-09','+50766351579','MARINA PLAZA','CARACAS','C','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'C-1236-4587-4',NULL,'M','1988-01-21','+50766351589','SAN FRANCISCO, VIA ISRRAEL, MARINA PLAZA, CIUDAD DE PANAMA, PANMA, CALLE 69 CON VIA ISRRAEL, PH MARINA PLAZA, CORREGIMIENTO SAN FRANCISCO','CARACAS','S','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'P-054896299',NULL,'M','1956-10-09','+50766351579','MARINA PLAZA','CARACAS','C','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'C-1236-4587-4',NULL,'M','1988-01-21','+50766351579','MARINA PLAZA','CARACAS','S','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'P-064896299',NULL,'F','1960-03-20','+507454545','MARINA PLAZA','TACHIRA','C','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'C-23-698-5986',NULL,'M','1980-01-21','+50733569874','SANFRANCISCO','PANAMA','S','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `persona_naturals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pj_accionista`
--

DROP TABLE IF EXISTS `pj_accionista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_accionista` (
  `pj_id` int(10) unsigned NOT NULL,
  `accionista_id` int(10) unsigned NOT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capital_sucrito` double(10,2) NOT NULL,
  `capital_pagado` double(10,2) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`accionista_id`),
  KEY `pj_accionista_accionista_id_foreign` (`accionista_id`),
  CONSTRAINT `pj_accionista_accionista_id_foreign` FOREIGN KEY (`accionista_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pj_accionista_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pj_accionista`
--

LOCK TABLES `pj_accionista` WRITE;
/*!40000 ALTER TABLE `pj_accionista` DISABLE KEYS */;
/*!40000 ALTER TABLE `pj_accionista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pj_panama`
--

DROP TABLE IF EXISTS `pj_panama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_panama` (
  `pj_id` int(10) unsigned NOT NULL,
  `nro_ficha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  KEY `pj_panama_pj_id_foreign` (`pj_id`),
  CONSTRAINT `pj_panama_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pj_panama`
--

LOCK TABLES `pj_panama` WRITE;
/*!40000 ALTER TABLE `pj_panama` DISABLE KEYS */;
INSERT INTO `pj_panama` VALUES (1,'90284','7182','1998-04-07'),(2,'12345','67891','2009-12-10');
/*!40000 ALTER TABLE `pj_panama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pj_users`
--

DROP TABLE IF EXISTS `pj_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pj_id` int(10) unsigned DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `pj_users_pj_id_foreign` (`pj_id`),
  CONSTRAINT `pj_users_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pj_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pj_users`
--

LOCK TABLES `pj_users` WRITE;
/*!40000 ALTER TABLE `pj_users` DISABLE KEYS */;
INSERT INTO `pj_users` VALUES (2,1,'Greenfelder, Pfeffer and Prohaska','PA'),(3,2,'ABC SUPLIES, INC','PA');
/*!40000 ALTER TABLE `pj_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pj_venezuela`
--

DROP TABLE IF EXISTS `pj_venezuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_venezuela` (
  `pj_id` int(10) unsigned NOT NULL,
  `oficina_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  KEY `pj_venezuela_pj_id_foreign` (`pj_id`),
  CONSTRAINT `pj_venezuela_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pj_venezuela`
--

LOCK TABLES `pj_venezuela` WRITE;
/*!40000 ALTER TABLE `pj_venezuela` DISABLE KEYS */;
/*!40000 ALTER TABLE `pj_venezuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pn_accionista`
--

DROP TABLE IF EXISTS `pn_accionista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pn_accionista` (
  `pj_id` int(10) unsigned NOT NULL,
  `accionista_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capital_sucrito` double(11,2) NOT NULL,
  `capital_pagado` double(11,2) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`accionista_id`),
  KEY `pn_accionista_accionista_id_foreign` (`accionista_id`),
  CONSTRAINT `pn_accionista_accionista_id_foreign` FOREIGN KEY (`accionista_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pn_accionista_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pn_accionista`
--

LOCK TABLES `pn_accionista` WRITE;
/*!40000 ALTER TABLE `pn_accionista` DISABLE KEYS */;
INSERT INTO `pn_accionista` VALUES (1,3,'Sylvester','Madelynn','Swaniawski','oSpinka@yahoo.com','Abbott',1397145.42,5970649.77,1),(1,4,'Arnulfo','Edyth','Harris','Karen23@yahoo.com','Kling',1896158.23,18033851.39,1),(1,5,'Lazaro','Gregory','Kovacek','Lilliana.Breitenberg@yahoo.com','Von',13191967.06,8866821.78,1),(1,6,'Kristoffer','Reginald','Veum','Altenwerth.Nikko@gmail.com','Abernathy',18928908.85,17431327.34,1),(1,7,'Marlene','Toni','Kautzer','jGlover@gmail.com','Bailey',11799801.05,10414185.85,1),(2,10,'WILLIAN','DIONICIO','RAMIREZ','willyra2003@yahoo.com','MONTES',250000.00,250000.00,1),(2,11,'GUILLERMO','ARTURO','RAMIREZ','guille@gmail.com','CASTILLO',125000.00,75000.00,1),(2,12,'NEREIDA','','CASTILLO','nere@hotmail.com','',125000.00,75000.00,1);
/*!40000 ALTER TABLE `pn_accionista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pn_users`
--

DROP TABLE IF EXISTS `pn_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pn_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pn_id` int(10) unsigned DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `pn_users_pn_id_foreign` (`pn_id`),
  CONSTRAINT `pn_users_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pn_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pn_users`
--

LOCK TABLES `pn_users` WRITE;
/*!40000 ALTER TABLE `pn_users` DISABLE KEYS */;
INSERT INTO `pn_users` VALUES (4,13,'JOSE ','GREGORIO','ALTUVE','FERNANDEZ');
/*!40000 ALTER TABLE `pn_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principale_clientes`
--

DROP TABLE IF EXISTS `principale_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principale_clientes` (
  `pj_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`id`),
  CONSTRAINT `principale_clientes_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principale_clientes`
--

LOCK TABLES `principale_clientes` WRITE;
/*!40000 ALTER TABLE `principale_clientes` DISABLE KEYS */;
INSERT INTO `principale_clientes` VALUES (1,'Parker-Roberts','Belle Cummings','38-559','+83046294482','Brianne.Williamson@OConnell.com'),(1,'Reinger, Braun and Langworth','Shane Abbott','477-530','+6695872633','eLegros@Reichert.com'),(1,'Rowe and Sons','Prof. Shaniya Kuhlman IV','866-140','+24212219797','fStroman@Senger.com'),(2,'el rey','alex garcia','ruc-123-1-456','+507362514','rey@yahoo.com'),(2,'turbo jet, c.a.','francisco hernandez','ruc-357-1159','+5079632584','jet@hotmail.com'),(2,'pegasus','henry velasquez','ruc-369-4-528','+507369741','pegasus@gmail.com');
/*!40000 ALTER TABLE `principale_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recla_per_user`
--

DROP TABLE IF EXISTS `recla_per_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recla_per_user` (
  `user_id` int(10) unsigned NOT NULL,
  `recla_id` int(10) unsigned NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`recla_id`,`year`),
  KEY `recla_per_user_recla_id_foreign` (`recla_id`),
  CONSTRAINT `recla_per_user_recla_id_foreign` FOREIGN KEY (`recla_id`) REFERENCES `reclacificacions` (`id`),
  CONSTRAINT `recla_per_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recla_per_user`
--

LOCK TABLES `recla_per_user` WRITE;
/*!40000 ALTER TABLE `recla_per_user` DISABLE KEYS */;
INSERT INTO `recla_per_user` VALUES (3,1,'31/12/2013'),(3,2,'31/12/2014'),(3,3,'31/12/2015');
/*!40000 ALTER TABLE `recla_per_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclacificacions`
--

DROP TABLE IF EXISTS `reclacificacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reclacificacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caja_banco` double(11,2) NOT NULL,
  `cuenta_por_cobrar` double(11,2) NOT NULL,
  `provision_cuentas_incobrables` double(11,2) NOT NULL,
  `inventario` double(11,2) NOT NULL,
  `provision_obsolescencia` double(11,2) NOT NULL,
  `terrenos` double(11,2) NOT NULL,
  `inmuebles` double(11,2) NOT NULL,
  `maquinarias_equipos` double(11,2) NOT NULL,
  `instalaciones` double(11,2) NOT NULL,
  `mobiliario_equipo` double(11,2) NOT NULL,
  `vehiculos_equipo_transporte` double(11,2) NOT NULL,
  `depreciacion_acumulada` double(11,2) NOT NULL,
  `depositos_garantia` double(11,2) NOT NULL,
  `cargo_diferidos` double(11,2) NOT NULL,
  `credito_fiscal_gasto_prepagados` double(11,2) NOT NULL,
  `cuentas_cobrar_accionista` double(11,2) NOT NULL,
  `intangibles` double(11,2) NOT NULL,
  `otros_activos` double(11,2) NOT NULL,
  `cuentas_por_pagar` double(11,2) NOT NULL,
  `obligaciones_bancarias` double(11,2) NOT NULL,
  `gastos_acumulados` double(11,2) NOT NULL,
  `ISLR_pagar` double(11,2) NOT NULL,
  `sueldos` double(11,2) NOT NULL,
  `otros_pasivos_corrientes` double(11,2) NOT NULL,
  `cuentas_por_pagar_RA` double(11,2) NOT NULL,
  `cuentas_por_pagar_LP` double(11,2) NOT NULL,
  `otros_pasivos` double(11,2) NOT NULL,
  `capital_social` double(11,2) NOT NULL,
  `cuota_capital_no_pagado` double(11,2) NOT NULL,
  `reserva_legal` double(11,2) NOT NULL,
  `otras_reservas` double(8,2) NOT NULL,
  `superavit_acumulado` double(11,2) NOT NULL,
  `resultado_del_ejercicio` double(11,2) NOT NULL,
  `ventas_netas` double(11,2) NOT NULL,
  `costo_ventas_y_servicios` double(11,2) NOT NULL,
  `gastos_administrativos` double(11,2) NOT NULL,
  `otros_ingresos` double(11,2) NOT NULL,
  `otros_egresos` double(11,2) NOT NULL,
  `gastos_financieros` double(11,2) NOT NULL,
  `impuestos_sobre_renta` double(11,2) NOT NULL,
  `dividendo_pagado_efectivo` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclacificacions`
--

LOCK TABLES `reclacificacions` WRITE;
/*!40000 ALTER TABLE `reclacificacions` DISABLE KEYS */;
INSERT INTO `reclacificacions` VALUES (1,12000.00,125000.00,-10000.00,2000.00,-1000.00,1000.00,51500.00,5000.00,2000.00,1000.00,2000.00,-2000.00,5000.00,500.00,200.00,500.00,5000.00,6000.00,50000.00,15000.00,300.00,100.00,200.00,300.00,12000.00,8000.00,2500.00,220000.00,-120000.00,10000.00,5000.00,2000.00,300.00,200000.00,50000.00,70000.00,300.00,1300.00,78300.00,400.00,0.00),(2,22000.00,135000.00,-12000.00,3000.00,-2000.00,15000.00,86000.00,7000.00,3000.00,2000.00,3000.00,-3000.00,10000.00,600.00,300.00,600.00,6000.00,8000.00,60000.00,18000.00,500.00,50.00,300.00,400.00,14000.00,10000.00,3500.00,220000.00,-100000.00,10000.00,5000.00,2300.00,40450.00,210000.00,60000.00,80000.00,950.00,30000.00,0.00,500.00,0.00),(3,32000.00,145000.00,-14000.00,4000.00,-3000.00,26500.00,184000.00,9000.00,4000.00,3000.00,4000.00,-4000.00,15000.00,700.00,400.00,700.00,7000.00,9000.00,70000.00,21000.00,700.00,100.00,400.00,500.00,16000.00,12000.00,4500.00,220000.00,-20000.00,10000.00,5000.00,42750.00,40350.00,220000.00,70000.00,90000.00,1000.00,19000.00,0.00,1650.00,0.00);
/*!40000 ALTER TABLE `reclacificacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `riesgo` text COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'No reporta riesgo directo.','empresa fundada en 2009, dedicada a la comercializacion de repuestos para refrigeracion.\r\nse considera factible hasta usd 100,000.00 revisable anualmente','2016-06-21 13:33:14'),(2,'No reporta','Factible','2016-06-29 19:16:00'),(3,'no reporta','factible','2016-07-04 09:38:27'),(4,'si reporte','factible','2016-08-24 10:48:46'),(5,'no reporta','factible','2016-08-29 12:02:14'),(6,'no reporta ','factible','2016-08-29 12:28:01'),(7,'no reporta','factible','2016-08-29 15:08:47'),(8,'pagare','pagare','2016-08-29 15:24:58'),(9,'no reporta','factible','2016-08-31 17:37:16'),(10,'no reporta','factible','2016-08-31 17:58:15'),(11,'','','2016-08-31 18:08:10'),(12,'no reporta','factible','2016-09-01 11:13:25'),(13,'','','2016-09-01 19:35:47'),(14,'','','2016-09-01 19:39:42'),(16,'no reporta','factible','2016-12-15 07:23:06'),(18,'','','2017-01-03 10:32:04'),(19,'no reporta','Factible','2017-01-03 13:27:12'),(21,'no presenta','factible','2017-01-04 08:15:48'),(22,'bb','bb','2017-01-04 12:50:31'),(23,'sas','sas','2017-01-04 13:01:56'),(24,'no reporte','factible','2017-02-07 10:41:38'),(25,'no reporta','factible','2017-02-07 10:59:10');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante_codeudores_per_pagare`
--

DROP TABLE IF EXISTS `representante_codeudores_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante_codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `representante_codeudores_per_pagare_persona_id_foreign` (`persona_id`),
  CONSTRAINT `representante_codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `representante_codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante_codeudores_per_pagare`
--

LOCK TABLES `representante_codeudores_per_pagare` WRITE;
/*!40000 ALTER TABLE `representante_codeudores_per_pagare` DISABLE KEYS */;
INSERT INTO `representante_codeudores_per_pagare` VALUES ('AAPG2016-001',9),('AAPG2016-003',8),('AAPG2016-003',9),('AAPG2016-004',8),('AAPG2016-004',9),('AAPG2016-007',8),('AAPG2016-007',9),('AAPG2016-008',8),('AAPG2016-008',9);
/*!40000 ALTER TABLE `representante_codeudores_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante_per_cupo`
--

DROP TABLE IF EXISTS `representante_per_cupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`persona_id`),
  KEY `representante_per_cupo_persona_id_foreign` (`persona_id`),
  CONSTRAINT `representante_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `representante_per_cupo_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante_per_cupo`
--

LOCK TABLES `representante_per_cupo` WRITE;
/*!40000 ALTER TABLE `representante_per_cupo` DISABLE KEYS */;
INSERT INTO `representante_per_cupo` VALUES ('AACP2016-001',8),('AACP2016-001',9),('AACP2016-002',2),('AACP2017-001',9);
/*!40000 ALTER TABLE `representante_per_cupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante_per_pagare`
--

DROP TABLE IF EXISTS `representante_per_pagare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `representante_per_pagare_persona_id_foreign` (`persona_id`),
  CONSTRAINT `representante_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `representante_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante_per_pagare`
--

LOCK TABLES `representante_per_pagare` WRITE;
/*!40000 ALTER TABLE `representante_per_pagare` DISABLE KEYS */;
INSERT INTO `representante_per_pagare` VALUES ('AAPG2016-001',9),('AAPG2016-002',8),('AAPG2016-002',9),('AAPG2016-003',8),('AAPG2016-003',9),('AAPG2016-004',8),('AAPG2016-004',9),('AAPG2016-007',8),('AAPG2016-007',9),('AAPG2016-008',8),('AAPG2016-009',9),('AAPG2016-012',9),('AAPG2016-013',9),('AAPG2017-002',8),('AAPG2017-004',8),('AAPG2017-005',8),('AAPG2017-006',9);
/*!40000 ALTER TABLE `representante_per_pagare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante_per_venta`
--

DROP TABLE IF EXISTS `representante_per_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`persona_id`),
  KEY `representante_per_venta_persona_id_foreign` (`persona_id`),
  CONSTRAINT `representante_per_venta_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `representante_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante_per_venta`
--

LOCK TABLES `representante_per_venta` WRITE;
/*!40000 ALTER TABLE `representante_per_venta` DISABLE KEYS */;
INSERT INTO `representante_per_venta` VALUES ('AAVF2016-001',9),('AAVF2016-002',8),('AAVF2016-002',9),('AAVF2016-003',8),('AAVF2016-003',9),('AAVF2017-001',8),('AAVF2017-002',8),('AAVF2017-003',8);
/*!40000 ALTER TABLE `representante_per_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `represente_legales`
--

DROP TABLE IF EXISTS `represente_legales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `represente_legales` (
  `pj_id` int(10) unsigned NOT NULL,
  `pn_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complete` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`pn_id`),
  KEY `represente_legales_pn_id_foreign` (`pn_id`),
  CONSTRAINT `represente_legales_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `represente_legales_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `represente_legales`
--

LOCK TABLES `represente_legales` WRITE;
/*!40000 ALTER TABLE `represente_legales` DISABLE KEYS */;
INSERT INTO `represente_legales` VALUES (1,1,'Yadira','Kyla','Mueller','Thiel','rGerlach@yahoo.com','Vicepresidente','1'),(1,2,'Osborne','Leon','Daniel','Purdy','vShanahan@gmail.com','Presidente','1'),(2,8,'WILLIAN','DIONICIO','RAMIREZ','MONTES','willyra2003@yahoo.com','director','1'),(2,9,'GUILLERMO','ARTURO','RAMIREZ','CASTILLO','guille@gmail.com','tesorero','1');
/*!40000 ALTER TABLE `represente_legales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` enum('sadmin','admin','PN','PJ') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','sadmin'),(2,'Admin','admin'),(3,'Persona Natural','PN'),(4,'Persona Juridica','PJ');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `recla_done` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'darcowboy@gmail.com','$2y$10$HsJA3bhQ7MW.sWWcmihDV.EXJcLhgLU35.1RvcDZ2VfizdGrkHTLu',0,1,'T9Fk8VDs98nDoC1qbVcfNdTkBZDSZ9uLMBaPBnEtS893w92u6iPVzGyNmXeQ','2016-06-21 16:59:13','2016-06-21 16:59:13'),(2,4,'elguiche33@gmail.com','$2y$10$V1wo3L24pgfQf8DgEaSlQugoQPYYfwOBn0KeILQK.KNGp8thnd3eC',1,1,NULL,'2016-06-21 16:59:13','2016-06-21 16:59:13'),(3,4,'willyra2003@yahoo.com','$2y$10$muS61tjrMzYYol75ZSsfCO9M3PRSM4/xKrneyb0R1yoDudWxMR0gy',1,1,'wYJYW34AOTQ4EhLa4RPGMRRKr6CLt2UqJkU6FQQfXJShLmF3vVOHFtk4eUto','2016-06-21 17:00:57','2016-06-21 17:00:57'),(4,3,'willy09101956@gmail.com','$2y$10$c.2PcQYxWZQnKAlWy7nxn.1yLrGf2g2wU6/5qNMpH7QOwJ/2g7lyO',1,0,NULL,'2016-08-29 17:18:38','2016-08-29 17:18:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_de_facturas`
--

DROP TABLE IF EXISTS `venta_de_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta_de_facturas` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `status` enum('S','R','IP','D','AWOC','AWC','A','E','POT','PL','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprobado` datetime DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `rendimiento` double(5,4) DEFAULT NULL,
  `destino` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cupo_id`,`venta_id`),
  UNIQUE KEY `venta_de_facturas_venta_id_unique` (`venta_id`),
  KEY `venta_de_facturas_pagare_id_foreign` (`pagare_id`),
  KEY `venta_de_facturas_report_id_foreign` (`report_id`),
  CONSTRAINT `venta_de_facturas_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`),
  CONSTRAINT `venta_de_facturas_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`),
  CONSTRAINT `venta_de_facturas_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_de_facturas`
--

LOCK TABLES `venta_de_facturas` WRITE;
/*!40000 ALTER TABLE `venta_de_facturas` DISABLE KEYS */;
INSERT INTO `venta_de_facturas` VALUES ('AAVF2016-001','AACP2016-001','AAPG2016-001',2,'AWOC','2016-06-29 19:12:38','2016-06-29 19:16:00','2016-06-29 19:17:53','2016-06-29 19:17:53',0.5217,''),('AAVF2016-002','AACP2016-001','AAPG2016-004',5,'POT','2016-08-29 11:59:15','2016-08-29 12:02:14','2016-08-29 12:04:10','2016-08-29 12:04:10',0.5217,''),('AAVF2016-003','AACP2016-001','AAPG2016-007',9,'POT','2016-08-31 17:34:14','2016-08-31 17:37:16','2016-08-31 17:38:54','2016-08-31 17:38:54',0.5217,''),('AAVF2016-006','AACP2016-001',NULL,NULL,'N','2016-12-02 07:57:30',NULL,NULL,NULL,NULL,''),('AAVF2017-001','AACP2016-001','AAPG2017-002',18,'AWOC','2017-01-03 08:23:55','2017-01-03 10:32:04','2017-01-03 10:33:32','2017-01-03 14:09:05',0.6000,''),('AAVF2017-002','AACP2016-001','AAPG2017-004',21,'AWOC','2017-01-04 08:14:36','2017-01-04 08:15:48','2017-01-04 08:16:35','2017-01-04 12:48:00',0.6200,''),('AAVF2017-003','AACP2016-001','AAPG2017-005',23,'POT','2017-01-04 13:01:04','2017-01-04 13:01:56','2017-01-04 13:03:23','2017-01-04 13:03:23',0.6000,''),('AAVF2016-004','AACP2016-003','AAPG2016-010',12,'POT','2016-09-01 11:10:52','2016-09-01 11:13:25','2016-09-01 11:19:43','2016-09-02 11:19:43',0.5217,''),('AAVF2016-005','AACP2016-003',NULL,14,'IP','2016-09-01 19:38:37','2016-09-01 19:39:42',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `venta_de_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_per_users`
--

DROP TABLE IF EXISTS `venta_per_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta_per_users` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`user_id`),
  KEY `venta_per_users_user_id_foreign` (`user_id`),
  CONSTRAINT `venta_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `venta_per_users_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_per_users`
--

LOCK TABLES `venta_per_users` WRITE;
/*!40000 ALTER TABLE `venta_per_users` DISABLE KEYS */;
INSERT INTO `venta_per_users` VALUES ('AAVF2016-001',3),('AAVF2016-002',3),('AAVF2016-003',3),('AAVF2016-004',4),('AAVF2016-005',4),('AAVF2016-006',3),('AAVF2017-001',3),('AAVF2017-002',3),('AAVF2017-003',3);
/*!40000 ALTER TABLE `venta_per_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-02  6:49:50
