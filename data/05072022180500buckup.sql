-- MySQL dump 10.13  Distrib 5.5.39, for Win64 (x86)
--
-- Host: localhost    Database: sisgandb
-- ------------------------------------------------------
-- Server version	5.5.39

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad` (
  `idact` int(11) NOT NULL,
  `nomact` varchar(150) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Descornar'),(2,'Castración'),(3,'Destete'),(4,'Sanitación '),(5,'Merma'),(6,'Pesaje'),(7,'Sangrado'),(8,'Palpación'),(9,'Mortandad'),(10,'Ecografia'),(11,'Servicio'),(12,'Secado'),(13,'Reubicación'),(14,'Reagrupación');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividades` (
  `idactv` int(11) NOT NULL,
  `codactv` int(11) NOT NULL,
  `fecactv` date NOT NULL,
  `pesactv` decimal(18,2) NOT NULL,
  `obsactv` varchar(250) NOT NULL,
  `canmedi` decimal(18,2) NOT NULL,
  `premedi` decimal(18,2) NOT NULL,
  `idani` int(11) NOT NULL,
  `idtia` int(11) NOT NULL,
  `idtimed` int(11) NOT NULL,
  PRIMARY KEY (`idactv`),
  KEY `idani` (`idani`),
  KEY `idtia` (`idtia`),
  KEY `idtimed` (`idtimed`),
  CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`idani`) REFERENCES `animales` (`idani`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `actividades_ibfk_2` FOREIGN KEY (`idtia`) REFERENCES `tipoactividad` (`idtia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `actividades_ibfk_3` FOREIGN KEY (`idtimed`) REFERENCES `tipomedicacion` (`idtimed`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,1,'2021-12-07',250.00,'',0.00,100000.00,1,15,0),(2,2,'2021-12-09',300.00,'',0.00,150000.00,1,17,0),(3,3,'2021-12-15',250.00,'Limpieza',1.00,250000.00,4,15,2),(4,4,'2022-03-11',250.00,'Baño',1.00,5000.00,1,17,2);
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animales`
--

DROP TABLE IF EXISTS `animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animales` (
  `idani` int(11) NOT NULL,
  `carani` varchar(50) NOT NULL,
  `hbpani` varchar(50) NOT NULL,
  `nomani` varchar(100) NOT NULL,
  `fecnac` date NOT NULL,
  `cirani` varchar(20) NOT NULL,
  `precom` varchar(18) NOT NULL,
  `preven` varchar(18) NOT NULL,
  `obsani` varchar(18) NOT NULL,
  `sexani` varchar(1) NOT NULL,
  `idcat` int(11) NOT NULL,
  `idraz` int(11) NOT NULL,
  `idlot` int(11) NOT NULL,
  `idubi` int(11) NOT NULL,
  `idtip` int(11) NOT NULL,
  `idcol` int(11) NOT NULL,
  `idest` int(11) NOT NULL,
  PRIMARY KEY (`idani`),
  KEY `idcat` (`idcat`),
  KEY `idraz` (`idraz`),
  KEY `idlot` (`idlot`),
  KEY `idubi` (`idubi`),
  KEY `idtip` (`idtip`),
  KEY `idcol` (`idcol`),
  KEY `idest` (`idest`),
  CONSTRAINT `animales_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `categorias` (`idcat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_2` FOREIGN KEY (`idraz`) REFERENCES `razas` (`idraz`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_3` FOREIGN KEY (`idlot`) REFERENCES `lotes` (`idlot`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_4` FOREIGN KEY (`idubi`) REFERENCES `ubicacion` (`idubi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_5` FOREIGN KEY (`idtip`) REFERENCES `tipocaravana` (`idtip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_6` FOREIGN KEY (`idcol`) REFERENCES `colores` (`idcol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `animales_ibfk_7` FOREIGN KEY (`idest`) REFERENCES `estancia` (`idest`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (1,'20.2112.04','0','','2021-12-03','','','5000000','','M',1,1,1,1,1,1,2),(2,'2021.12.9','','','2021-12-09','','','3500000','','M',1,1,1,1,1,1,2),(3,'1744','','','2021-12-15','','','','','M',1,1,1,1,1,1,2),(4,'2101','','','2021-12-15','','','','','H',2,1,2,1,1,1,2);
/*!40000 ALTER TABLE `animales` ENABLE KEYS */;
UNLOCK TABLES;

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
  `estapc` int(11) NOT NULL DEFAULT '0',
  `idcaj` int(11) NOT NULL DEFAULT '1',
  `idusu` int(11) NOT NULL,
  `horapc` datetime NOT NULL,
  PRIMARY KEY (`idapc`),
  KEY `idusu` (`idusu`),
  CONSTRAINT `apertura_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuario` (`idusu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apertura`
--

LOCK TABLES `apertura` WRITE;
/*!40000 ALTER TABLE `apertura` DISABLE KEYS */;
INSERT INTO `apertura` VALUES (5,0,600000,0,280000,0,1,1,'2021-12-08 19:50:21'),(6,100000,150000,0,100000,0,1,1,'2021-12-09 20:55:01'),(7,50000,50000,0,0,0,1,1,'2021-12-14 18:15:53'),(8,0,0,0,0,1,1,1,'2021-12-15 17:45:38');
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
  `nomtab` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `opetab` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `datvie` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `datact` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idaud`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (110,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2021-12-09 08:42:25\"}]',''),(111,'animales','Actualizar','[{\"Codigo\": \"1\", \"Caravana\": \"20.2112.04\", \"Fec. Nac\": \"2021-12-03\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','[{\"Codigo\": \"1\", \"Caravana\": \"20.2112.04\", \"Fec. Nac\": \"2021-12-03\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','Victor David Rodriguez Salinas'),(112,'apertura','Apertura de caja','','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-09 20:55:01\", \"Inicial\": \"100000\", \"Apertura\": \"150000\"}]','Victor David Rodriguez Salinas'),(113,'retirocaja','Retiro de caja','','[{\"Codigo\": \"5\", \"Fec. Hora\": \"2021-12-09 20:55:14\", \"Monto\": \"50000\"}]','Victor David Rodriguez Salinas'),(114,'animales','Actualizar','[{\"Codigo\": \"2\", \"Caravana\": \"2021.12.9\", \"Fec. Nac\": \"2021-12-09\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','[{\"Codigo\": \"2\", \"Caravana\": \"2021.12.9\", \"Fec. Nac\": \"2021-12-09\", \"Precio Compra\": \"\", \"Precio Venta\": \"3500000\",\"Sexo\": \"M\"}]','Victor David Rodriguez Salinas'),(115,'retirocaja','Retiro de caja','','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:14:49\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','Victor David Rodriguez Salinas'),(116,'retirocaja','Editar','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:14:49\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:18:00\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','Victor David Rodriguez Salinas'),(117,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"1\", \"Fecha\": \"2021-12-10\", \"Monto\": \"50000\"}]','Usuario'),(118,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"2\", \"Fecha\": \"2021-12-10\", \"Monto\": \"30000\"}]','Victor David Rodriguez Salinas'),(119,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"3\", \"Fecha\": \"2021-12-10\", \"Monto\": \"8500000\"}]','Victor David Rodriguez Salinas'),(120,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"4\", \"Fecha\": \"2021-12-11\", \"Monto\": \"3000000\"}]','Victor David Rodriguez Salinas'),(121,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"5\", \"Fecha\": \"2021-12-11\", \"Monto\": \"5000000\"}]','Victor David Rodriguez Salinas'),(122,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"6\", \"Fecha\": \"2021-12-11\", \"Monto\": \"1500000\"}]','Victor David Rodriguez Salinas'),(123,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"7\", \"Fecha\": \"2021-12-11\", \"Monto\": \"470000\"}]','Victor David Rodriguez Salinas'),(124,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"8\", \"Fecha\": \"2021-12-11\", \"Monto\": \"3000000\"}]','Victor David Rodriguez Salinas'),(125,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"9\", \"Fecha\": \"2021-12-11\", \"Monto\": \"5000000\"}]','Victor David Rodriguez Salinas'),(126,'apertura','Apertura de caja','','[{\"Codigo\": \"7\", \"Fec. Hora\": \"2021-12-14 18:15:53\", \"Inicial\": \"50000\", \"Apertura\": \"50000\"}]','Victor David Rodriguez Salinas'),(127,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"2\", \"Fec. Hora\": \"2021-12-15 17:45:26\"}]',''),(128,'apertura','Apertura de caja','','[{\"Codigo\": \"8\", \"Fec. Hora\": \"2021-12-15 17:45:38\", \"Inicial\": \"0\", \"Apertura\": \"0\"}]','Victor David Rodriguez Salinas'),(129,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"10\", \"Fecha\": \"2021-12-15\", \"Monto\": \"500000\"}]','Victor David Rodriguez Salinas'),(130,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"11\", \"Fecha\": \"2021-12-15\", \"Monto\": \"2000000\"}]','Victor David Rodriguez Salinas'),(131,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"12\", \"Fecha\": \"2021-12-15\", \"Monto\": \"500000\"}]','Victor David Rodriguez Salinas'),(132,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"13\", \"Fecha\": \"2021-12-15\", \"Monto\": \"1000000\"}]','Victor David Rodriguez Salinas'),(133,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"14\", \"Fecha\": \"2021-12-15\", \"Monto\": \"500000\"}]','Victor David Rodriguez Salinas'),(134,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"15\", \"Fecha\": \"2022-03-11\", \"Monto\": \"5000000\"}]','Victor David Rodriguez Salinas'),(135,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"16\", \"Fecha\": \"2022-03-11\", \"Monto\": \"3500000\"}]','Victor David Rodriguez Salinas');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buckup`
--

DROP TABLE IF EXISTS `buckup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buckup` (
  `idbuc` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `archivo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idbuc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buckup`
--

LOCK TABLES `buckup` WRITE;
/*!40000 ALTER TABLE `buckup` DISABLE KEYS */;
INSERT INTO `buckup` VALUES (1,'2021-12-15 22:34:23','12162021213402buckup.sql');
/*!40000 ALTER TABLE `buckup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `idcat` int(11) NOT NULL,
  `nomcat` varchar(100) NOT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ternero'),(2,'Ternera'),(3,'Desmamante Macho'),(4,'Desmamante Hembra'),(5,'Novillo'),(6,'Vaquilla'),(7,'Vaca'),(8,'Toro'),(9,'Buey'),(10,'Bubalino'),(11,'Nuevo Edit');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cierrecaja`
--

LOCK TABLES `cierrecaja` WRITE;
/*!40000 ALTER TABLE `cierrecaja` DISABLE KEYS */;
INSERT INTO `cierrecaja` VALUES (1,'2021-12-15 12:48:33',0,0,0,0,0,0,0,7),(2,'2021-12-15 17:45:26',50000,0,50000,0,0,0,50000,7);
/*!40000 ALTER TABLE `cierrecaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `ruccli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `nomcli` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `apecli` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telcli` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'3594942-2','SD','Informática','0991310865'),(2,'4609213-9','Leticia','Ayala','0994551848');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colores`
--

DROP TABLE IF EXISTS `colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colores` (
  `idcol` int(11) NOT NULL,
  `nomcol` varchar(100) NOT NULL,
  PRIMARY KEY (`idcol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colores`
--

LOCK TABLES `colores` WRITE;
/*!40000 ALTER TABLE `colores` DISABLE KEYS */;
INSERT INTO `colores` VALUES (1,'Rojo'),(2,'Amarillo');
/*!40000 ALTER TABLE `colores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estancia`
--

DROP TABLE IF EXISTS `estancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estancia` (
  `idest` int(11) NOT NULL,
  `nomest` varchar(150) NOT NULL,
  `rucest` varchar(20) NOT NULL,
  `direst` varchar(150) NOT NULL,
  `celest` varchar(50) NOT NULL,
  `mailest` varchar(100) NOT NULL,
  PRIMARY KEY (`idest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estancia`
--

LOCK TABLES `estancia` WRITE;
/*!40000 ALTER TABLE `estancia` DISABLE KEYS */;
INSERT INTO `estancia` VALUES (1,'Estancia Rodriguez edit','80026','direccion','0994','correo@gamil.com'),(2,'Testing add','800261','direcc','0985','correo@gamil.com');
/*!40000 ALTER TABLE `estancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `imagenes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` VALUES (13,'test1','[{\"foto\":\"vistas/img/test1/323.jpg\"},{\"foto\":\"vistas/img/test1/314.jpg\"},{\"foto\":\"vistas/img/test1/713.jpg\"}]'),(14,'prueba','[{\"foto\":\"vistas/img/prueba/438.jpg\"},{\"foto\":\"vistas/img/prueba/923.jpg\"},{\"foto\":\"vistas/img/prueba/813.jpg\"}]');
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresoventas`
--

DROP TABLE IF EXISTS `ingresoventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresoventas` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `fecpag` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idven` int(11) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresoventas`
--

LOCK TABLES `ingresoventas` WRITE;
/*!40000 ALTER TABLE `ingresoventas` DISABLE KEYS */;
INSERT INTO `ingresoventas` VALUES (1,'2021-12-10',50000,1,6),(2,'2021-12-10',30000,1,6),(3,'2021-12-10',8500000,14,6),(4,'2021-12-11',3000000,15,6),(5,'2021-12-11',5000000,17,6),(6,'2021-12-11',1500000,13,6),(7,'2021-12-11',470000,1,6),(8,'2021-12-11',3000000,18,6),(9,'2021-12-11',5000000,19,6),(10,'2021-12-15',500000,1,8),(11,'2021-12-15',2000000,23,8),(12,'2021-12-15',500000,1,8),(13,'2021-12-15',1000000,1,8),(14,'2021-12-15',500000,1,8),(15,'2022-03-11',5000000,24,8),(16,'2022-03-11',3500000,8,8);
/*!40000 ALTER TABLE `ingresoventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotes`
--

DROP TABLE IF EXISTS `lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotes` (
  `idlot` int(11) NOT NULL,
  `nomlot` varchar(100) NOT NULL,
  PRIMARY KEY (`idlot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes`
--

LOCK TABLES `lotes` WRITE;
/*!40000 ALTER TABLE `lotes` DISABLE KEYS */;
INSERT INTO `lotes` VALUES (1,'Lote 1'),(2,'Lote 2'),(3,'Lote 3'),(4,'Lote 4'),(5,'Lote 5 '),(6,'Lote 6');
/*!40000 ALTER TABLE `lotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagocompras`
--

DROP TABLE IF EXISTS `pagocompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagocompras` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `monefe` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagocompras`
--

LOCK TABLES `pagocompras` WRITE;
/*!40000 ALTER TABLE `pagocompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagocompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razas`
--

DROP TABLE IF EXISTS `razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `razas` (
  `idraz` int(11) NOT NULL,
  `nomraz` varchar(100) NOT NULL,
  PRIMARY KEY (`idraz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razas`
--

LOCK TABLES `razas` WRITE;
/*!40000 ALTER TABLE `razas` DISABLE KEYS */;
INSERT INTO `razas` VALUES (1,'Brahman'),(2,'Angus'),(3,'Nueva raza');
/*!40000 ALTER TABLE `razas` ENABLE KEYS */;
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
  `motret` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retirocaja`
--

LOCK TABLES `retirocaja` WRITE;
/*!40000 ALTER TABLE `retirocaja` DISABLE KEYS */;
INSERT INTO `retirocaja` VALUES (1,'2021-12-08 20:55:43',50000,5,''),(2,'2021-12-08 20:56:43',30000,5,''),(3,'2021-12-08 21:13:01',100000,5,''),(4,'2021-12-08 22:00:59',100000,5,''),(5,'2021-12-09 20:55:14',50000,6,''),(6,'2021-12-10 15:18:00',50000,6,'Retiro Juan Perez para viatico');
/*!40000 ALTER TABLE `retirocaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoactividad`
--

DROP TABLE IF EXISTS `tipoactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoactividad` (
  `idtia` int(11) NOT NULL,
  `nomtia` varchar(150) NOT NULL,
  `idact` int(11) NOT NULL,
  PRIMARY KEY (`idtia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoactividad`
--

LOCK TABLES `tipoactividad` WRITE;
/*!40000 ALTER TABLE `tipoactividad` DISABLE KEYS */;
INSERT INTO `tipoactividad` VALUES (1,'Generico',1),(2,'Generico',2),(3,'Acondicionamiento',3),(4,'Natural',3),(5,'Empleo de corral',3),(6,'Cerca',3),(7,'Corral tradicional',3),(8,'Onda nasal',3),(9,'Humano',3),(10,'Preventivo obligatario',4),(11,'Preventivo no obligatario',4),(12,'Clinico',4),(13,'Aborto',5),(14,'Parto distosico',5),(15,'Digital',6),(16,'Convencional',6),(17,'Estimativo',6),(18,'Generico',7),(19,'Generico',8),(20,'Accidente',9),(21,'Enfermedad',9),(22,'Vibora',9),(23,'Felinos',9),(24,'Generico',10),(25,'Generico',11),(26,'Generico',13),(27,'Generico',12),(28,'Generico',14);
/*!40000 ALTER TABLE `tipoactividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocaravana`
--

DROP TABLE IF EXISTS `tipocaravana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocaravana` (
  `idtip` int(11) NOT NULL,
  `nomtip` varchar(100) NOT NULL,
  PRIMARY KEY (`idtip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocaravana`
--

LOCK TABLES `tipocaravana` WRITE;
/*!40000 ALTER TABLE `tipocaravana` DISABLE KEYS */;
INSERT INTO `tipocaravana` VALUES (1,'Boton'),(2,'Tarjeta ');
/*!40000 ALTER TABLE `tipocaravana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomedicacion`
--

DROP TABLE IF EXISTS `tipomedicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomedicacion` (
  `idtimed` int(11) NOT NULL,
  `nomtimed` varchar(150) NOT NULL,
  PRIMARY KEY (`idtimed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomedicacion`
--

LOCK TABLES `tipomedicacion` WRITE;
/*!40000 ALTER TABLE `tipomedicacion` DISABLE KEYS */;
INSERT INTO `tipomedicacion` VALUES (0,'Ninguno'),(1,'Fiebre Aftosa'),(2,'Tratamiento Sanitario');
/*!40000 ALTER TABLE `tipomedicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacion` (
  `idubi` int(11) NOT NULL,
  `nomubi` varchar(100) NOT NULL,
  PRIMARY KEY (`idubi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'Corral A'),(2,'Campo L');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
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
  `idest` int(11) NOT NULL,
  PRIMARY KEY (`idusu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'3594942','Victor David Rodriguez Salinas','admin','21232f297a57a5a743894a0e4a801fc3',1,1),(2,'3594943','Teresita Rodriguez editado','tere','ebfc93c26b0a9fe77a1878ee454bea01',2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `idven` int(11) NOT NULL,
  `fecven` date NOT NULL,
  `numven` double NOT NULL,
  `ivauno` decimal(18,0) NOT NULL,
  `totven` decimal(18,0) NOT NULL,
  `pagven` decimal(18,0) NOT NULL,
  `estven` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `idcli` int(11) NOT NULL,
  PRIMARY KEY (`idven`),
  KEY `idcli` (`idcli`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `clientes` (`idcli`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2021-12-09',3,357142,7500000,3000000,'SAL',1),(2,'2021-12-09',4,309523,6500000,0,'ELI',1),(3,'2021-12-10',5,214285,4500000,0,'ELI',1),(4,'2021-12-10',6,166666,3500000,0,'ELI',1),(5,'2021-12-10',7,166666,3500000,0,'ELI',1),(6,'2021-12-10',8,166666,3500000,0,'ELI',1),(7,'2021-12-10',9,238095,5000000,0,'PEN',1),(8,'2021-12-10',10,166666,3500000,3500000,'CAN',1),(9,'2021-12-10',11,238095,5000000,0,'PEN',1),(10,'2021-12-10',11,238095,5000000,0,'PEN',1),(11,'2021-12-10',12,238095,5000000,0,'PEN',1),(12,'2021-12-10',13,714285,15000000,0,'ELI',1),(13,'2021-12-10',14,166666,3500000,1500000,'SAL',1),(14,'2021-12-10',15,404761,8500000,8500000,'CAN',1),(15,'2021-12-11',16,166666,3500000,3000000,'SAL',1),(16,'2021-12-11',17,238095,5000000,0,'PEN',1),(17,'2021-12-11',18,238095,5000000,5000000,'CAN',1),(18,'2021-12-11',19,238095,5000000,3000000,'SAL',1),(19,'2021-12-11',20,404761,8500000,5000000,'SAL',1),(20,'2021-12-14',21,166666,3500000,0,'PEN',2),(21,'2021-12-15',22,166666,3500000,0,'PEN',2),(22,'2021-12-15',23,238095,5000000,0,'PEN',1),(23,'2021-12-15',24,95238,2000000,2000000,'CAN',2),(24,'2022-03-11',25,238095,5000000,5000000,'CAN',2);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventasdetalle`
--

DROP TABLE IF EXISTS `ventasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventasdetalle` (
  `iddet` int(11) NOT NULL,
  `canven` double NOT NULL,
  `preven` double NOT NULL,
  `idani` int(11) NOT NULL,
  `idven` int(11) NOT NULL,
  PRIMARY KEY (`iddet`),
  KEY `idani` (`idani`),
  KEY `idven` (`idven`),
  CONSTRAINT `ventasdetalle_ibfk_1` FOREIGN KEY (`idani`) REFERENCES `animales` (`idani`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ventasdetalle_ibfk_2` FOREIGN KEY (`idven`) REFERENCES `ventas` (`idven`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventasdetalle`
--

LOCK TABLES `ventasdetalle` WRITE;
/*!40000 ALTER TABLE `ventasdetalle` DISABLE KEYS */;
INSERT INTO `ventasdetalle` VALUES (1,1,5000000,1,1),(2,1,2500000,2,1),(3,1,5000000,1,2),(4,1,1500000,2,2),(5,1,4500000,1,3),(6,1,3500000,2,4),(7,1,3500000,2,5),(8,1,3500000,2,6),(9,1,5000000,1,7),(10,1,3500000,2,8),(11,1,5000000,1,9),(12,1,5000000,1,10),(13,1,5000000,1,11),(14,1,15000000,1,12),(15,1,3500000,2,13),(16,1,5000000,1,14),(17,1,3500000,2,14),(18,1,3500000,2,15),(19,1,5000000,1,16),(20,1,5000000,1,17),(21,1,5000000,1,18),(22,1,5000000,1,19),(23,1,3500000,2,19),(24,1,3500000,2,20),(25,1,3500000,2,21),(26,1,5000000,1,22),(27,1,2000000,4,23),(28,1,5000000,3,24);
/*!40000 ALTER TABLE `ventasdetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 18:05:21
