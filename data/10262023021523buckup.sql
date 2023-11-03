-- MySQL dump 10.13  Distrib 5.5.39, for Win64 (x86)
--
-- Host: localhost    Database: sdinfco_sdcredit
-- ------------------------------------------------------
-- Server version	5.5.5-10.9.3-MariaDB

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
-- Table structure for table `apertura`
--

DROP TABLE IF EXISTS `apertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apertura` (
  `idapc` int(11) NOT NULL AUTO_INCREMENT,
  `monini` decimal(18,0) NOT NULL,
  `monapc` decimal(18,0) NOT NULL,
  `monaum` decimal(18,0) NOT NULL,
  `monret` decimal(18,0) NOT NULL,
  `estapc` int(11) NOT NULL DEFAULT 0,
  `idcaj` int(11) NOT NULL DEFAULT 1,
  `idusu` int(11) NOT NULL,
  `horapc` datetime NOT NULL,
  PRIMARY KEY (`idapc`),
  KEY `idusu` (`idusu`),
  CONSTRAINT `apertura_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuario` (`idusu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apertura`
--

LOCK TABLES `apertura` WRITE;
/*!40000 ALTER TABLE `apertura` DISABLE KEYS */;
INSERT INTO `apertura` VALUES (1,0,100000,0,7000,0,1,1,'2023-10-10 00:52:10'),(2,10000,10000,0,1,1,1,2,'2023-10-10 18:06:55'),(3,0,0,0,0,1,1,1,'2023-10-24 23:48:49');
/*!40000 ALTER TABLE `apertura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `idaud` int(11) NOT NULL AUTO_INCREMENT,
  `nomtab` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `opetab` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `datvie` varchar(250) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `datact` varchar(250) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`idaud`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (147,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 17:16:39\"}]',''),(148,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 17:57:10\"}]',''),(149,'apertura','Editar','[{\"Codigo\": \"2\", \"Fec. Hora\": \"2023-10-10 00:58:29\", \"Inicial\": \"10000\", \"Apertura\": \"10000\"}]','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 18:06:55\", \"Inicial\": \"10000\", \"Apertura\": \"10000\"}]','Leticia Ayala'),(150,'retirocaja','Editar','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 01:04:33\", \"Monto\": \"1\", \"Motivo\": \"Testdav\"}]','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 18:21:17\", \"Monto\": \"5000\", \"Motivo\": \"Testdavid\"}]','VictOr Rodriguez'),(151,'retirocaja','Editar','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 00:56:57\", \"Monto\": \"2\", \"Motivo\": \"Testdav\"}]','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 18:21:27\", \"Monto\": \"2000\", \"Motivo\": \"Testdav\"}]','VictOr Rodriguez'),(152,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"1\", \"Fecha\": \"2023-10-24\", \"Monto\": \"226000\"}]','VictOr Rodriguez'),(153,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"2\", \"Fecha\": \"2023-10-24\", \"Monto\": \"182000\"}]','VictOr Rodriguez'),(154,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"3\", \"Fecha\": \"2023-10-24\", \"Monto\": \"172000\"}]','Jorge Rodriguez'),(155,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"4\", \"Fecha\": \"2023-10-24\", \"Monto\": \"162000\"}]','Jorge Rodriguez'),(156,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"5\", \"Fecha\": \"2023-10-24\", \"Monto\": \"108000\"}]','Jorge Rodriguez'),(157,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"2\", \"Fec. Hora\": \"2023-10-24 23:48:37\"}]',''),(158,'apertura','Apertura de caja','','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-24 23:48:49\", \"Inicial\": \"0\", \"Apertura\": \"0\"}]','Jorge Rodriguez'),(159,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"6\", \"Fecha\": \"2023-10-24\", \"Monto\": \"152000\"}]','Jorge Rodriguez'),(160,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"7\", \"Fecha\": \"2023-10-24\", \"Monto\": \"140000\"}]','Jorge Rodriguez'),(161,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"8\", \"Fecha\": \"2023-10-07\", \"Monto\": \"95000\"}]','Jorge Rodriguez'),(162,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"9\", \"Fecha\": \"2023-10-25\", \"Monto\": \"111000\"}]','Jorge Rodriguez'),(163,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"10\", \"Fecha\": \"2023-10-25\", \"Monto\": \"115000\"}]','Jorge Rodriguez'),(164,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"11\", \"Fecha\": \"2023-10-26\", \"Monto\": \"116000\"}]','Jorge Rodriguez'),(165,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"12\", \"Fecha\": \"2023-10-26\", \"Monto\": \"106000\"}]','Jorge Rodriguez'),(166,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"13\", \"Fecha\": \"2023-10-26\", \"Monto\": \"96000\"}]','Jorge Rodriguez'),(167,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"14\", \"Fecha\": \"2023-10-26\", \"Monto\": \"116000\"}]','Jorge Rodriguez'),(168,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"15\", \"Fecha\": \"2023-10-26\", \"Monto\": \"122000\"}]','Jorge Rodriguez'),(169,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"16\", \"Fecha\": \"2023-10-26\", \"Monto\": \"109000\"}]','Jorge Rodriguez'),(170,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"17\", \"Fecha\": \"2023-10-26\", \"Monto\": \"99000\"}]','Jorge Rodriguez'),(171,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"18\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez'),(172,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"19\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez'),(173,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"20\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez'),(174,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"21\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez'),(175,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"22\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez'),(176,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"23\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez'),(177,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"24\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez'),(178,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"20\", \"Fecha\": \"2023-10-26\", \"Monto\": \"174400\"}]','Jorge Rodriguez');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cierrecaja`
--

DROP TABLE IF EXISTS `cierrecaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cierrecaja` (
  `idcie` int(11) NOT NULL,
  `horcie` datetime NOT NULL,
  `monapc` decimal(18,0) NOT NULL,
  `totven` decimal(18,0) NOT NULL,
  `toting` decimal(18,0) NOT NULL,
  `monret` decimal(18,0) NOT NULL,
  `totcom` decimal(18,0) NOT NULL,
  `totegr` decimal(18,0) NOT NULL,
  `moncie` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idcie`),
  KEY `idapc` (`idapc`),
  CONSTRAINT `cierrecaja_ibfk_1` FOREIGN KEY (`idapc`) REFERENCES `apertura` (`idapc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cierrecaja`
--

LOCK TABLES `cierrecaja` WRITE;
/*!40000 ALTER TABLE `cierrecaja` DISABLE KEYS */;
INSERT INTO `cierrecaja` VALUES (1,'2023-10-10 17:57:10',100000,0,100000,3,0,3,99997,1),(2,'2023-10-24 23:48:37',100000,850000,950000,7000,0,7000,943000,1);
/*!40000 ALTER TABLE `cierrecaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `gender` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Victor David Rodríguez Salinas',37,'M'),(2,'Leticia Adaluz Ayala Gomez',30,'F');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `ruccli` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `nomcli` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `apecli` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `telcli` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `idusu` int(11) NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'7.170.190','Ruth Jenifer','Benítez Rolon','0975.735.321',1),(2,'5.958.416','Pablo David','Centurión Ortega','0975.757.808',1),(3,'4.855.214','Rodrigo Joel','Montiel Alonso','0993.401.548',2),(4,'4.096.273','Virginia','Martinez Martínez ','0986.602.488',1),(5,'4.394.795','Juan Ramon','Ortíz Maidana','0985.400.460',1),(6,'5.704.068','Ana Esther','Acosta Romero','0986.830.003',1),(7,'4.952.845','Robelina','Coronel','0984.551.412',1),(8,'6.831.050','José Alberto','Martínez Aguiar','0982.643.137',1),(9,'3.378.633','María Celeste','Galeano','0982.464.019',1),(10,'6.121.187','Luis Carlos','Vera Roman','0976.537.897',1),(11,'7.193.705','José Javier','Ortellado Benitez','0983.927.389',2),(12,'6.135.022','Emanuel De Jesus','Oviedo Villalba','0975.722.149',2),(13,'5.805.841','Marcial ','Espinoza Romero','0975.891.517',2),(14,'3594942','Victor David','Rodriguez Salinas','0000',2),(15,'4.232.163','Ricardo Celestino','Gimenez Pedrozo','0975576145',1),(16,'4.957.685','Eduardo Ramon','Insaurralde Prieto','0972690429',1),(17,'2.840.898','Bruno Gabriel','Gimenez Cardozo','0985778488',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuotas`
--

DROP TABLE IF EXISTS `cuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuotas` (
  `idcuo` int(11) NOT NULL,
  `numpgr` int(11) NOT NULL,
  `numcuo` int(11) NOT NULL,
  `feccuo` date NOT NULL,
  `fecven` date NOT NULL,
  `tipven` varchar(3) NOT NULL,
  `moncuo` decimal(18,2) NOT NULL,
  `tipint` varchar(3) NOT NULL,
  `monint` decimal(18,2) NOT NULL,
  `porint` decimal(18,2) NOT NULL,
  `estcuo` varchar(3) NOT NULL,
  `estpgr` varchar(3) NOT NULL,
  `pagcuo` decimal(18,2) NOT NULL,
  `idcli` int(11) NOT NULL,
  `idusu` int(11) NOT NULL,
  `moncre` decimal(18,0) NOT NULL,
  `cancuo` int(11) NOT NULL,
  PRIMARY KEY (`idcuo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuotas`
--

LOCK TABLES `cuotas` WRITE;
/*!40000 ALTER TABLE `cuotas` DISABLE KEYS */;
INSERT INTO `cuotas` VALUES (57,2,1,'2023-10-04','2023-10-11','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',116000.00,17,1,500000,7),(58,2,2,'2023-10-04','2023-10-18','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',106000.00,17,1,500000,7),(59,2,3,'2023-10-04','2023-10-25','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',96000.00,17,1,500000,7),(60,2,4,'2023-10-04','2023-11-01','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7),(61,2,5,'2023-10-04','2023-11-08','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7),(62,2,6,'2023-10-04','2023-11-15','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7),(63,2,7,'2023-10-04','2023-11-22','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7),(64,1,1,'2023-10-04','2023-10-11','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',116000.00,15,1,500000,7),(65,1,2,'2023-10-04','2023-10-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(66,1,3,'2023-10-04','2023-10-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(67,1,4,'2023-10-04','2023-11-01','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(68,1,5,'2023-10-04','2023-11-08','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(69,1,6,'2023-10-04','2023-11-15','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(70,1,7,'2023-10-04','2023-11-22','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7),(71,1,1,'2023-09-30','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',122000.00,16,1,500000,7),(72,1,2,'2023-09-30','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(73,1,3,'2023-09-30','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(74,1,4,'2023-09-30','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(75,1,5,'2023-09-30','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(76,1,6,'2023-09-30','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(77,1,7,'2023-09-30','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7),(78,1,1,'2023-10-09','2023-10-16','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',109000.00,1,1,500000,7),(79,1,2,'2023-10-09','2023-10-23','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',99000.00,1,1,500000,7),(80,1,3,'2023-10-09','2023-10-30','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7),(81,1,4,'2023-10-09','2023-11-06','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7),(82,1,5,'2023-10-09','2023-11-13','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7),(83,1,6,'2023-10-09','2023-11-20','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7),(84,1,7,'2023-10-09','2023-11-27','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7),(85,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,3,1,500000,7),(86,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,3,1,500000,7),(87,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7),(88,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7),(89,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7),(90,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7),(91,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7),(92,1,1,'2023-09-23','2023-09-30','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',174400.00,5,1,700000,7),(93,1,2,'2023-09-23','2023-10-07','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(94,1,3,'2023-09-23','2023-10-14','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(95,1,4,'2023-09-23','2023-10-21','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(96,1,5,'2023-09-23','2023-10-28','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(97,1,6,'2023-09-23','2023-11-04','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(98,1,7,'2023-09-23','2023-11-11','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7),(99,2,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(100,2,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(101,2,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(102,2,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(103,2,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(104,2,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7),(105,2,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
/*!40000 ALTER TABLE `cuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagocuotas`
--

DROP TABLE IF EXISTS `pagocuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagocuotas` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `fecpag` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idcuo` int(11) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagocuotas`
--

LOCK TABLES `pagocuotas` WRITE;
/*!40000 ALTER TABLE `pagocuotas` DISABLE KEYS */;
INSERT INTO `pagocuotas` VALUES (1,'2023-10-24',226000,8,1),(2,'2023-10-24',182000,1,1),(3,'2023-10-24',172000,2,1),(4,'2023-10-24',162000,3,1),(5,'2023-10-24',108000,15,1),(6,'2023-10-24',152000,4,3),(7,'2023-10-24',140000,5,3),(8,'2023-10-07',95000,8,3),(9,'2023-10-25',111000,43,3),(10,'2023-10-25',115000,15,3),(11,'2023-10-26',116000,57,3),(12,'2023-10-26',106000,58,3),(13,'2023-10-26',96000,59,3),(14,'2023-10-26',116000,64,3),(15,'2023-10-26',122000,71,3),(16,'2023-10-26',109000,78,3),(17,'2023-10-26',99000,79,3),(18,'2023-10-26',112000,85,3),(19,'2023-10-26',102000,86,3),(20,'2023-10-26',174400,92,3);
/*!40000 ALTER TABLE `pagocuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagogastos`
--

DROP TABLE IF EXISTS `pagogastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagogastos` (
  `idgas` int(11) NOT NULL AUTO_INCREMENT,
  `desgas` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecgas` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idgas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagogastos`
--

LOCK TABLES `pagogastos` WRITE;
/*!40000 ALTER TABLE `pagogastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagogastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retirocaja`
--

DROP TABLE IF EXISTS `retirocaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retirocaja` (
  `idret` int(11) NOT NULL,
  `fecret` datetime NOT NULL,
  `monret` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  `motret` varchar(250) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`idret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retirocaja`
--

LOCK TABLES `retirocaja` WRITE;
/*!40000 ALTER TABLE `retirocaja` DISABLE KEYS */;
INSERT INTO `retirocaja` VALUES (1,'2023-10-10 18:21:27',2000,1,'Testdav'),(2,'2023-10-10 01:04:07',1,2,'Testleth'),(3,'2023-10-10 18:21:17',5000,1,'Testdavid');
/*!40000 ALTER TABLE `retirocaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `idsuc` int(11) NOT NULL,
  `rucsuc` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `nomsuc` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telsuc` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rucdue` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `nomdue` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idsuc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'0','Joyita Créditos','0','','');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusu` int(11) NOT NULL,
  `docusu` varchar(15) NOT NULL,
  `nomusu` varchar(100) NOT NULL,
  `logusu` varchar(100) NOT NULL,
  `clausu` varchar(100) NOT NULL,
  `nivusu` int(11) NOT NULL,
  `idsuc` int(11) NOT NULL,
  PRIMARY KEY (`idusu`),
  KEY `idsuc` (`idsuc`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idsuc`) REFERENCES `sucursal` (`idsuc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'359494222','Jorge Rodriguez','jorge','21232f297a57a5a743894a0e4a801fc3',1,1),(2,'0','Cobrador','cobrador','21232f297a57a5a743894a0e4a801fc3',2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 18:15:02
