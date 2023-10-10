/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.39 : Database - sisgandb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sisgandb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `sisgandb`;

/*Table structure for table `actividad` */

CREATE TABLE `actividad` (
  `idact` int(11) NOT NULL,
  `nomact` varchar(150) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `actividad` */

insert  into `actividad`(`idact`,`nomact`) values (1,'Descornar');
insert  into `actividad`(`idact`,`nomact`) values (2,'Castración');
insert  into `actividad`(`idact`,`nomact`) values (3,'Destete');
insert  into `actividad`(`idact`,`nomact`) values (4,'Sanitación ');
insert  into `actividad`(`idact`,`nomact`) values (5,'Merma');
insert  into `actividad`(`idact`,`nomact`) values (6,'Pesaje');
insert  into `actividad`(`idact`,`nomact`) values (7,'Sangrado');
insert  into `actividad`(`idact`,`nomact`) values (8,'Palpación');
insert  into `actividad`(`idact`,`nomact`) values (9,'Mortandad');
insert  into `actividad`(`idact`,`nomact`) values (10,'Ecografia');
insert  into `actividad`(`idact`,`nomact`) values (11,'Servicio');
insert  into `actividad`(`idact`,`nomact`) values (12,'Secado');
insert  into `actividad`(`idact`,`nomact`) values (13,'Reubicación');
insert  into `actividad`(`idact`,`nomact`) values (14,'Reagrupación');

/*Table structure for table `actividades` */

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

/*Data for the table `actividades` */

insert  into `actividades`(`idactv`,`codactv`,`fecactv`,`pesactv`,`obsactv`,`canmedi`,`premedi`,`idani`,`idtia`,`idtimed`) values (1,1,'2021-12-07','250.00','','0.00','100000.00',1,15,0);
insert  into `actividades`(`idactv`,`codactv`,`fecactv`,`pesactv`,`obsactv`,`canmedi`,`premedi`,`idani`,`idtia`,`idtimed`) values (2,2,'2021-12-09','300.00','','0.00','150000.00',1,17,0);

/*Table structure for table `animales` */

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

/*Data for the table `animales` */

insert  into `animales`(`idani`,`carani`,`hbpani`,`nomani`,`fecnac`,`cirani`,`precom`,`preven`,`obsani`,`sexani`,`idcat`,`idraz`,`idlot`,`idubi`,`idtip`,`idcol`,`idest`) values (1,'20.2112.04','0','','2021-12-03','','','5000000','','M',1,1,1,1,1,1,1);
insert  into `animales`(`idani`,`carani`,`hbpani`,`nomani`,`fecnac`,`cirani`,`precom`,`preven`,`obsani`,`sexani`,`idcat`,`idraz`,`idlot`,`idubi`,`idtip`,`idcol`,`idest`) values (2,'2021.12.9','','','2021-12-09','','','3500000','','M',1,1,1,1,1,1,2);

/*Table structure for table `apertura` */

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `apertura` */

insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (5,'0','600000','0','280000',0,1,1,'2021-12-08 19:50:21');
insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (6,'100000','150000','0','100000',0,1,1,'2021-12-09 20:55:01');
insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (7,'50000','50000','0','0',1,1,1,'2021-12-14 18:15:53');

/*Table structure for table `auditoria` */

CREATE TABLE `auditoria` (
  `idaud` int(11) NOT NULL AUTO_INCREMENT,
  `nomtab` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `opetab` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `datvie` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `datact` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idaud`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `auditoria` */

insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (110,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2021-12-09 08:42:25\"}]','');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (111,'animales','Actualizar','[{\"Codigo\": \"1\", \"Caravana\": \"20.2112.04\", \"Fec. Nac\": \"2021-12-03\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','[{\"Codigo\": \"1\", \"Caravana\": \"20.2112.04\", \"Fec. Nac\": \"2021-12-03\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (112,'apertura','Apertura de caja','','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-09 20:55:01\", \"Inicial\": \"100000\", \"Apertura\": \"150000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (113,'retirocaja','Retiro de caja','','[{\"Codigo\": \"5\", \"Fec. Hora\": \"2021-12-09 20:55:14\", \"Monto\": \"50000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (114,'animales','Actualizar','[{\"Codigo\": \"2\", \"Caravana\": \"2021.12.9\", \"Fec. Nac\": \"2021-12-09\", \"Precio Compra\": \"\", \"Precio Venta\": \"\",\"Sexo\": \"M\"}]','[{\"Codigo\": \"2\", \"Caravana\": \"2021.12.9\", \"Fec. Nac\": \"2021-12-09\", \"Precio Compra\": \"\", \"Precio Venta\": \"3500000\",\"Sexo\": \"M\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (115,'retirocaja','Retiro de caja','','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:14:49\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (116,'retirocaja','Editar','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:14:49\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','[{\"Codigo\": \"6\", \"Fec. Hora\": \"2021-12-10 15:18:00\", \"Monto\": \"50000\", \"Motivo\": \"Retiro Juan Perez para viatico\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (117,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"1\", \"Fecha\": \"2021-12-10\", \"Monto\": \"50000\"}]','Usuario');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (118,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"2\", \"Fecha\": \"2021-12-10\", \"Monto\": \"30000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (119,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"3\", \"Fecha\": \"2021-12-10\", \"Monto\": \"8500000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (120,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"4\", \"Fecha\": \"2021-12-11\", \"Monto\": \"3000000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (121,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"5\", \"Fecha\": \"2021-12-11\", \"Monto\": \"5000000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (122,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"6\", \"Fecha\": \"2021-12-11\", \"Monto\": \"1500000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (123,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"7\", \"Fecha\": \"2021-12-11\", \"Monto\": \"470000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (124,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"8\", \"Fecha\": \"2021-12-11\", \"Monto\": \"3000000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (125,'ingresoventas','Pago Ventas','','[{\"Codigo\": \"9\", \"Fecha\": \"2021-12-11\", \"Monto\": \"5000000\"}]','Victor David Rodriguez Salinas');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (126,'apertura','Apertura de caja','','[{\"Codigo\": \"7\", \"Fec. Hora\": \"2021-12-14 18:15:53\", \"Inicial\": \"50000\", \"Apertura\": \"50000\"}]','Victor David Rodriguez Salinas');

/*Table structure for table `buckup` */

CREATE TABLE `buckup` (
  `idbuc` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `archivo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idbuc`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `buckup` */

insert  into `buckup`(`idbuc`,`fecha`,`archivo`) values (1,'2021-12-15 11:31:47','tsting');

/*Table structure for table `categorias` */

CREATE TABLE `categorias` (
  `idcat` int(11) NOT NULL,
  `nomcat` varchar(100) NOT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categorias` */

insert  into `categorias`(`idcat`,`nomcat`) values (1,'Ternero');
insert  into `categorias`(`idcat`,`nomcat`) values (2,'Ternera');
insert  into `categorias`(`idcat`,`nomcat`) values (3,'Desmamante Macho');
insert  into `categorias`(`idcat`,`nomcat`) values (4,'Desmamante Hembra');
insert  into `categorias`(`idcat`,`nomcat`) values (5,'Novillo');
insert  into `categorias`(`idcat`,`nomcat`) values (6,'Vaquilla');
insert  into `categorias`(`idcat`,`nomcat`) values (7,'Vaca');
insert  into `categorias`(`idcat`,`nomcat`) values (8,'Toro');
insert  into `categorias`(`idcat`,`nomcat`) values (9,'Buey');
insert  into `categorias`(`idcat`,`nomcat`) values (10,'Bubalino');
insert  into `categorias`(`idcat`,`nomcat`) values (11,'Nuevo Edit');

/*Table structure for table `cierrecaja` */

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

/*Data for the table `cierrecaja` */

insert  into `cierrecaja`(`idcie`,`horcie`,`monapc`,`totven`,`toting`,`monret`,`totcom`,`totegr`,`moncie`,`idapc`) values (1,'2021-12-09 08:42:25','600000','0','600000','280000','0','280000','320000',5);

/*Table structure for table `clientes` */

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `ruccli` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `nomcli` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `apecli` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telcli` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `clientes` */

insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (1,'3594942-2','SD','Informática','0991310865');
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (2,'4609213-9','Leticia','Ayala','0994551848');

/*Table structure for table `colores` */

CREATE TABLE `colores` (
  `idcol` int(11) NOT NULL,
  `nomcol` varchar(100) NOT NULL,
  PRIMARY KEY (`idcol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `colores` */

insert  into `colores`(`idcol`,`nomcol`) values (1,'Rojo');
insert  into `colores`(`idcol`,`nomcol`) values (2,'Amarillo');

/*Table structure for table `estancia` */

CREATE TABLE `estancia` (
  `idest` int(11) NOT NULL,
  `nomest` varchar(150) NOT NULL,
  `rucest` varchar(20) NOT NULL,
  `direst` varchar(150) NOT NULL,
  `celest` varchar(50) NOT NULL,
  `mailest` varchar(100) NOT NULL,
  PRIMARY KEY (`idest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `estancia` */

insert  into `estancia`(`idest`,`nomest`,`rucest`,`direst`,`celest`,`mailest`) values (1,'Estancia Rodriguez edit','80026','direccion','0994','correo@gamil.com');
insert  into `estancia`(`idest`,`nomest`,`rucest`,`direst`,`celest`,`mailest`) values (2,'Testing add','800261','direcc','0985','correo@gamil.com');

/*Table structure for table `galeria` */

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `imagenes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `galeria` */

insert  into `galeria`(`id`,`titulo`,`imagenes`) values (13,'test1','[{\"foto\":\"vistas/img/test1/323.jpg\"},{\"foto\":\"vistas/img/test1/314.jpg\"},{\"foto\":\"vistas/img/test1/713.jpg\"}]');
insert  into `galeria`(`id`,`titulo`,`imagenes`) values (14,'prueba','[{\"foto\":\"vistas/img/prueba/438.jpg\"},{\"foto\":\"vistas/img/prueba/923.jpg\"},{\"foto\":\"vistas/img/prueba/813.jpg\"}]');

/*Table structure for table `ingresoventas` */

CREATE TABLE `ingresoventas` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `fecpag` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idven` int(11) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ingresoventas` */

insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (1,'2021-12-10','50000',1,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (2,'2021-12-10','30000',1,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (3,'2021-12-10','8500000',14,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (4,'2021-12-11','3000000',15,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (5,'2021-12-11','5000000',17,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (6,'2021-12-11','1500000',13,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (7,'2021-12-11','470000',1,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (8,'2021-12-11','3000000',18,6);
insert  into `ingresoventas`(`idpag`,`fecpag`,`monefe`,`idven`,`idapc`) values (9,'2021-12-11','5000000',19,6);

/*Table structure for table `lotes` */

CREATE TABLE `lotes` (
  `idlot` int(11) NOT NULL,
  `nomlot` varchar(100) NOT NULL,
  PRIMARY KEY (`idlot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lotes` */

insert  into `lotes`(`idlot`,`nomlot`) values (1,'Lote 1');
insert  into `lotes`(`idlot`,`nomlot`) values (2,'Lote 2');
insert  into `lotes`(`idlot`,`nomlot`) values (3,'Lote 3');
insert  into `lotes`(`idlot`,`nomlot`) values (4,'Lote 4');
insert  into `lotes`(`idlot`,`nomlot`) values (5,'Lote 5 ');
insert  into `lotes`(`idlot`,`nomlot`) values (6,'Lote 6');

/*Table structure for table `pagocompras` */

CREATE TABLE `pagocompras` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `monefe` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pagocompras` */

/*Table structure for table `razas` */

CREATE TABLE `razas` (
  `idraz` int(11) NOT NULL,
  `nomraz` varchar(100) NOT NULL,
  PRIMARY KEY (`idraz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `razas` */

insert  into `razas`(`idraz`,`nomraz`) values (1,'Brahman');
insert  into `razas`(`idraz`,`nomraz`) values (2,'Angus');

/*Table structure for table `retirocaja` */

CREATE TABLE `retirocaja` (
  `idret` int(11) NOT NULL,
  `fecret` datetime NOT NULL,
  `monret` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  `motret` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `retirocaja` */

insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (1,'2021-12-08 20:55:43','50000',5,'');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (2,'2021-12-08 20:56:43','30000',5,'');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (3,'2021-12-08 21:13:01','100000',5,'');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (4,'2021-12-08 22:00:59','100000',5,'');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (5,'2021-12-09 20:55:14','50000',6,'');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (6,'2021-12-10 15:18:00','50000',6,'Retiro Juan Perez para viatico');

/*Table structure for table `tipoactividad` */

CREATE TABLE `tipoactividad` (
  `idtia` int(11) NOT NULL,
  `nomtia` varchar(150) NOT NULL,
  `idact` int(11) NOT NULL,
  PRIMARY KEY (`idtia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipoactividad` */

insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (1,'Generico',1);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (2,'Generico',2);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (3,'Acondicionamiento',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (4,'Natural',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (5,'Empleo de corral',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (6,'Cerca',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (7,'Corral tradicional',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (8,'Onda nasal',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (9,'Humano',3);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (10,'Preventivo obligatario',4);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (11,'Preventivo no obligatario',4);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (12,'Clinico',4);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (13,'Aborto',5);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (14,'Parto distosico',5);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (15,'Digital',6);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (16,'Convencional',6);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (17,'Estimativo',6);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (18,'Generico',7);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (19,'Generico',8);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (20,'Accidente',9);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (21,'Enfermedad',9);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (22,'Vibora',9);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (23,'Felinos',9);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (24,'Generico',10);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (25,'Generico',11);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (26,'Generico',13);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (27,'Generico',12);
insert  into `tipoactividad`(`idtia`,`nomtia`,`idact`) values (28,'Generico',14);

/*Table structure for table `tipocaravana` */

CREATE TABLE `tipocaravana` (
  `idtip` int(11) NOT NULL,
  `nomtip` varchar(100) NOT NULL,
  PRIMARY KEY (`idtip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipocaravana` */

insert  into `tipocaravana`(`idtip`,`nomtip`) values (1,'Boton');
insert  into `tipocaravana`(`idtip`,`nomtip`) values (2,'Tarjeta ');

/*Table structure for table `tipomedicacion` */

CREATE TABLE `tipomedicacion` (
  `idtimed` int(11) NOT NULL,
  `nomtimed` varchar(150) NOT NULL,
  PRIMARY KEY (`idtimed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipomedicacion` */

insert  into `tipomedicacion`(`idtimed`,`nomtimed`) values (0,'Ninguno');
insert  into `tipomedicacion`(`idtimed`,`nomtimed`) values (1,'Fiebre Aftosa');
insert  into `tipomedicacion`(`idtimed`,`nomtimed`) values (2,'Tratamiento Sanitario');

/*Table structure for table `ubicacion` */

CREATE TABLE `ubicacion` (
  `idubi` int(11) NOT NULL,
  `nomubi` varchar(100) NOT NULL,
  PRIMARY KEY (`idubi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ubicacion` */

insert  into `ubicacion`(`idubi`,`nomubi`) values (1,'Corral A');
insert  into `ubicacion`(`idubi`,`nomubi`) values (2,'Campo L');

/*Table structure for table `usuario` */

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

/*Data for the table `usuario` */

insert  into `usuario`(`idusu`,`docusu`,`nomusu`,`logusu`,`clausu`,`nivusu`,`idest`) values (1,'3594942','Victor David Rodriguez Salinas','admin','21232f297a57a5a743894a0e4a801fc3',1,1);
insert  into `usuario`(`idusu`,`docusu`,`nomusu`,`logusu`,`clausu`,`nivusu`,`idest`) values (2,'3594943','Teresita Rodriguez editado','tere','ebfc93c26b0a9fe77a1878ee454bea01',2,1);

/*Table structure for table `ventas` */

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

/*Data for the table `ventas` */

insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (1,'2021-12-09',3,'357142','7500000','500000','SAL',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (2,'2021-12-09',4,'309523','6500000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (3,'2021-12-10',5,'214285','4500000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (4,'2021-12-10',6,'166666','3500000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (5,'2021-12-10',7,'166666','3500000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (6,'2021-12-10',8,'166666','3500000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (7,'2021-12-10',9,'238095','5000000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (8,'2021-12-10',10,'166666','3500000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (9,'2021-12-10',11,'238095','5000000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (10,'2021-12-10',11,'238095','5000000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (11,'2021-12-10',12,'238095','5000000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (12,'2021-12-10',13,'714285','15000000','0','ELI',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (13,'2021-12-10',14,'166666','3500000','1500000','SAL',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (14,'2021-12-10',15,'404761','8500000','8500000','CAN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (15,'2021-12-11',16,'166666','3500000','3000000','SAL',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (16,'2021-12-11',17,'238095','5000000','0','PEN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (17,'2021-12-11',18,'238095','5000000','5000000','CAN',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (18,'2021-12-11',19,'238095','5000000','3000000','SAL',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (19,'2021-12-11',20,'404761','8500000','5000000','SAL',1);
insert  into `ventas`(`idven`,`fecven`,`numven`,`ivauno`,`totven`,`pagven`,`estven`,`idcli`) values (20,'2021-12-14',21,'166666','3500000','0','PEN',2);

/*Table structure for table `ventasdetalle` */

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

/*Data for the table `ventasdetalle` */

insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (1,1,5000000,1,1);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (2,1,2500000,2,1);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (3,1,5000000,1,2);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (4,1,1500000,2,2);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (5,1,4500000,1,3);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (6,1,3500000,2,4);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (7,1,3500000,2,5);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (8,1,3500000,2,6);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (9,1,5000000,1,7);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (10,1,3500000,2,8);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (11,1,5000000,1,9);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (12,1,5000000,1,10);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (13,1,5000000,1,11);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (14,1,15000000,1,12);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (15,1,3500000,2,13);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (16,1,5000000,1,14);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (17,1,3500000,2,14);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (18,1,3500000,2,15);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (19,1,5000000,1,16);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (20,1,5000000,1,17);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (21,1,5000000,1,18);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (22,1,5000000,1,19);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (23,1,3500000,2,19);
insert  into `ventasdetalle`(`iddet`,`canven`,`preven`,`idani`,`idven`) values (24,1,3500000,2,20);

/* Procedure structure for procedure `anular_venta` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `anular_venta`(idve int)
BEGIN
	
	update ventas set estven='ELI' WHERE idven=idve;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eli_actividades` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `eli_actividades`(codact int,usuario varchar(100))
BEGIN
	
DECLARE n INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
SELECT COUNT(*) FROM actividades INTO n;
SET i=0;
WHILE i<n DO 
  INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  SELECT 'actividades', 'Eliminar',CONCAT('[{"Planilla Nº": "', codactv,'", "IdAnimal": "',idani,'", "Fec. Actividad": "',fecactv,'", "Pesaje": "',pesactv,'"}]'),'',usuario FROM actividades where codactv=codact LIMIT i,1;
  SET i = i + 1;
END WHILE;
DELETE FROM actividades WHERE codactv=codact;
     
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_actividades` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_actividades`(ope VARCHAR(3))
BEGIN
	if ope='LIS' THEN
		  SELECT 
		    ac.`idactv`,
		    ac.`codactv`,
		    ac.`fecactv`,
		    a.`carani`,
		    c.nomcat,
		    act.`nomact`,
		    ta.`nomtia`,
		    ac.`pesactv`,
		    m.`nomtimed`,
		    ac.`canmedi`,
		    ac.`premedi` 
		  FROM
		    actividades ac 
		    JOIN animales a 
		      ON ac.idani = a.`idani` 
		     join categorias c
		     on a.idcat=c.idcat
		    JOIN tipoactividad ta 
		      ON ac.idtia = ta.`idtia` 
		    JOIN actividad act 
		      ON ta.`idact` = act.`idact` 
		    JOIN tipomedicacion m 
		      ON ac.`idtimed` = m.`idtimed` ORDER BY ac.codactv;
      ELSEIF ope>0 THEN
      		  SELECT 
		    ac.`idactv`,
		    ac.`codactv`,
		    ac.`fecactv`,
		    act.idact,
		    ta.idtia,
		    a.idani,
		    a.`carani`,
		    ac.`pesactv`,
		    m.`nomtimed`,
		    m.`idtimed`,
		    ac.`canmedi`,
		    ac.`premedi`,
		    act.nomact,
		    ta.nomtia
		  FROM
		    actividades ac 
		    JOIN animales a 
		      ON ac.idani = a.`idani` 
		     JOIN categorias c
		     ON a.idcat=c.idcat
		    JOIN tipoactividad ta 
		      ON ac.idtia = ta.`idtia` 
		    JOIN actividad act 
		      ON ta.`idact` = act.`idact` 
		    JOIN tipomedicacion m 
		      ON ac.`idtimed` = m.`idtimed` where ac.codactv=ope;
      
      
      END IF;
      
END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_apertura` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_apertura`(ope varchar(3))
BEGIN
    IF ope='LIS' THEN
		SELECT 
		a.`idapc`,
		a.`horapc`,
		a.`monini`,
		a.`monapc`,
		a.`monaum`,
		a.`monret`,
		u.`nomusu`,
		IF(a.`estapc`=1,'Activo','Cerrado') AS estapc
		FROM apertura a
		JOIN usuario u ON a.`idusu`=u.`idusu`;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_cliente` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_cliente`(ope VARCHAR(3))
BEGIN
    IF ope='LIS' THEN
		SELECT * FROM clientes;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_paracierre` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_paracierre`(ope varchar(3))
BEGIN
	if ope='LIS' THEN
		SELECT 
		a.`idapc`,
		DATE_FORMAT(a.`horapc`, "%d/%m/%Y %T") AS horapc,
		a.`monapc`,
		IF(v.`monefe` IS NULL,0,v.monefe) AS totven,
		a.`monapc`+IF(v.`monefe` IS NULL,0,v.monefe) AS toting,
		a.`monret`,
		IF(c.`monefe` IS NULL,0,c.monefe) AS totcom,
		a.`monret`+IF(c.`monefe` IS NULL,0,c.monefe) AS totegr,
		(a.`monapc`+IF(v.`monefe` IS NULL,0,v.monefe))-(a.`monret`+IF(c.`monefe` IS NULL,0,c.monefe)) AS moncie
		FROM apertura a
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM ingresoventas GROUP BY idapc) v
		ON a.`idapc`=v.`idapc`
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagocompras GROUP BY idapc) c
		ON a.`idapc`=c.idapc
		WHERE a.estapc=1;
	elseif ope='LCI' THEN
		SELECT
		a.`idapc`,
		DATE_FORMAT(a.`horapc`, "%d/%m/%Y %T") AS horapc,
		c.`horcie`,
		c.`monapc` AS monapc,
		c.`totven` AS totven,
		c.`monapc` AS toting,
		c.`monret` AS monret,
		c.`totcom` AS totcom,
		c.`totegr` AS totegr,
		c.`moncie` AS moncie
				
		FROM cierrecaja c
		JOIN apertura a ON a.`idapc`=c.`idapc`;
		
		
	END IF;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_retiro` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_retiro`(ope varchar(3))
BEGIN
        SELECT r.idret,r.fecret,r.monret,motret,IF(a.`estapc`=1,'Activo','Cerrado') AS estapc FROM retirocaja r JOIN apertura a ON r.`idapc`=a.`idapc`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_ventas` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_ventas`(ope varchar(3))
BEGIN
    
     SELECT 
 v.`idven`,
 v.`fecven`,
 v.`numven`,
 c.`ruccli`,
 c.`nomcli`,
 c.`apecli`,
 v.`totven`,
 v.`ivauno`,
 if(v.estven<>'ELI',v.totven-v.pagven,0) as salven,
 IF(v.`estven`='PEN','Pendiente',IF(v.`estven`='SAL','Saldo',if(v.estven='ELI','Anulado','Pagado'))) AS estven
 FROM ventas v
 JOIN clientes c
 ON v.`idcli`=c.`idcli`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_ventasdetalle` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `lis_ventasdetalle`(ope varchar(3),idve int)
BEGIN
    
    if ope='LIS' THEN
		    SELECT
			v.fecven,
			v.numven,
			a.`carani`,
			c.`nomcat`,
			d.`canven`,
			d.`preven`
			FROM 
			 ventasdetalle d
			 JOIN ventas v
			 ON d.`idven`=v.`idven`
			 JOIN animales a
			 ON d.`idani`=a.`idani`
			 JOIN categorias c
			 ON a.`idcat`=c.`idcat`
			 WHERE d.idven=idve;
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_actividades` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_actividades`(idact int,codact int,fecact date,pesact decimal(18,2),obsact varchar(250),canmed decimal(18,2),premed decimal(18,2),idan int,idti int,idtime int,usuario varchar(100),ope varchar(3))
BEGIN
	DECLARE id DOUBLE;
	
		SELECT (CASE WHEN MAX(idactv) IS NULL THEN 1 ELSE MAX(idactv)+1 END) INTO id FROM actividades;
		INSERT INTO actividades (idactv,codactv,fecactv,pesactv,obsactv,canmedi,premedi,idani,idtia,idtimed) VALUES (id,codact,fecact,pesact,obsact,canmed,premed,idan,idti,idtime);
	if ope='EDI' THEN
	 INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  SELECT 'actividades', 'Actualizar','',CONCAT('[{"Planilla Nº": "', codactv,'", "IdAnimal": "',idani,'", "Fec. Actividad": "',fecactv,'", "Pesaje": "',pesactv,'"}]'),usuario FROM actividades WHERE idactv=id;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_animal` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_animal`(idan int, caran varchar(50),hbpan varchar(50),noman varchar(100),fecna date,ciran varchar(20),preco varchar(15),
    preve varchar(18),obsan varchar(150),sexan varchar(1), idca int, idra int, idlo int, idub int, idti int, idco int,ides int,usuario varchar(100), ope varchar(3))
BEGIN
	declare id double;
	if ope='GUA' then
		SELECT (CASE WHEN MAX(idani) IS NULL THEN 1 ELSE MAX(idani)+1 END) INTO id FROM animales;
		INSERT INTO animales (idani,carani,hbpani,nomani,fecnac,cirani,precom,preven,obsani,sexani,idcat,idraz,idlot,idubi,idtip,idcol,idest) values (idan,caran,hbpan,noman,fecna,ciran,preco,preve,obsan,sexan,idca,idra,idlo,idub,idti,idco,ides);
	elseif ope='EDI' then
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario) 
		SELECT 'animales','Actualizar',
		CONCAT('[{"Codigo": "', idani,'", "Caravana": "',carani,'", "Fec. Nac": "',fecnac,'", "Precio Compra": "',precom,'", "Precio Venta": "',preven,'","Sexo": "',sexani,'"}]') AS datold,
		CONCAT('[{"Codigo": "', idan,'", "Caravana": "',caran,'", "Fec. Nac": "',fecna,'", "Precio Compra": "',preco,'", "Precio Venta": "',preve,'","Sexo": "',sexan,'"}]') AS datnew,usuario FROM animales WHERE idani=idan;
		update animales set carani=caran,hbpani=hbpan,nomani=noman,fecnac=fecna,cirani=ciran,precom=preco,preven=preve,obsani=obsan,sexani=sexan,idcat=idca,idraz=idra,idlot=idlo,idubi=idub,idtip=idti,idcol=idco,idest=ides where idani=idan;
		
	ELSEIF ope='ELI' then
		delete from animales where idani=idan;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_apertura` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_apertura`(idap int,monin decimal(18,0),monap decimal(18,0), idus int,ope varchar(3))
BEGIN
		DECLARE id DOUBLE;
		declare usuario text;
		select nomusu into usuario from usuario where idusu=idus;
		SELECT (CASE WHEN MAX(idapc) IS NULL THEN 1 ELSE MAX(idapc)+1 END) INTO id FROM apertura;
		
		if ope='GUA' THEN
			insert into apertura VALUES (id,monin,monap,0,0,1,1,idus,Now());
			INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
			values ('apertura','Apertura de caja','',CONCAT('[{"Codigo": "', id,'", "Fec. Hora": "',now(),'", "Inicial": "',monin,'", "Apertura": "',monap,'"}]'),usuario);
		ELSE
			INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
			VALUES ('apertura','Editar',(SELECT CONCAT('[{"Codigo": "', idapc,'", "Fec. Hora": "',horapc,'", "Inicial": "',monini,'", "Apertura": "',monapc,'"}]') AS datvie FROM apertura WHERE idapc=idap),CONCAT('[{"Codigo": "', id,'", "Fec. Hora": "',now(),'", "Inicial": "',monin,'", "Apertura": "',monap,'"}]'),usuario);
			
			UPDATE apertura set monini=monin,monapc=monap,idusu=idus,horapc=now() where idapc=idap;
		
		
		END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_buckup` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_buckup`(nom varchar(100))
BEGIN
    DECLARE id DOUBLE;
	SELECT IF(MAX(idbuc) IS NULL,1,MAX(idbuc)) INTO id FROM buckup;
	insert into buckup (fecha,archivo) values (now(),nom);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_categoria` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_categoria`(idca int, nomca varchar(100),ope varchar(3))
BEGIN
	DECLARE id DOUBLE;
	if ope='GUA' THEN
		SELECT (CASE WHEN MAX(idcat) IS NULL THEN 1 ELSE MAX(idcat)+1 END) INTO id FROM categorias;
		INSERT INTO categorias (idcat,nomcat) values (id,nomca);
	ELSEIF ope='EDI' THEN
		update categorias set nomcat=nomca where idcat=idca;
	ELSEIF ope='ELI' THEN
		DELETE FROM categorias where idcat=idca;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_cierre` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_cierre`(ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	DECLARE idap DOUBLE;
	SELECT idapc INTO idap FROM apertura WHERE estapc=1;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idcie) IS NULL THEN 1 ELSE MAX(idcie)+1 END) INTO id FROM cierrecaja;
		INSERT INTO cierrecaja (idcie,horcie,monapc,totven,toting,monret,totcom,totegr,moncie,idapc)
		 SELECT 
		id,
		NOW() AS horcie,
		a.`monapc`,
		IF(v.`monefe` IS NULL,0,v.monefe) AS totven,
		a.`monapc`+IF(v.`monefe` IS NULL,0,v.monefe) AS toting,
		a.`monret`,
		IF(c.`monefe` IS NULL,0,c.monefe) AS totcom,
		a.`monret`+IF(c.`monefe` IS NULL,0,c.monefe) AS totegr,
		(a.`monapc`+IF(v.`monefe` IS NULL,0,v.monefe))-(a.`monret`+IF(c.`monefe` IS NULL,0,c.monefe)) AS moncie,
		a.idapc
		FROM apertura a
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM ingresoventas GROUP BY idapc) v
		ON a.`idapc`=v.`idapc`
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagocompras GROUP BY idapc) c
		ON a.`idapc`=c.idapc
		WHERE a.idapc=idap;
		update apertura set estapc=0 where idapc=idap;
		
		
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('cierrecaja','Cerrar caja','',CONCAT('[{"Codigo": "', id,'", "Fec. Hora": "',NOW(),'"}]'),usuario);
		
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_cliente` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_cliente`(idcl int,ruccl varchar(50),nomcl varchar(200), apecl varchar(200), telcl varchar(100), ope varchar(3))
BEGIN
	DECLARE id double;
	if ope='GUA' THEN
		select if(max(idcli) is null,1,max(idcli)+1) into id from clientes;
		insert into clientes values (id,ruccl,nomcl,apecl,telcl);
		
	ELSEif ope='EDI' THEN
		update clientes set ruccli=ruccl,nomcli=nomcl,apecli=apecl,telcli=telcl where idcli=idcl;
	ELSEIF ope='ELI' THEN
		DELETE FROM clientes where idcli=idcl;
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_color` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_color`(idco INT, nomco VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idcol) IS NULL THEN 1 ELSE MAX(idcol)+1 END) INTO id FROM colores;
		INSERT INTO colores (idcol,nomcol) VALUES (id,nomco);
	ELSEIF ope='EDI' THEN
		UPDATE colores SET nomcol=nomco WHERE idcol=idco;
	ELSEIF ope='ELI' THEN
		DELETE FROM colores WHERE idcol=idco;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_detventas` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_detventas`(preve double,idan int,idve int)
BEGIN
		declare id double;
		SELECT if(max(iddet) is null,1,max(iddet)+1) into id from ventasdetalle;
		INSERT INTO ventasdetalle (iddet,canven,preven,idani,idven) VALUES (id,1,preve,idan,idve);
		UPDATE animales set idest=2 where idani=idan;
		
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_estancia` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_estancia`(ides INT,nomes VARCHAR(150), ruces varchar(20), dires varchar(150),celes varchar(50), mailes varchar(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idest) IS NULL THEN 1 ELSE MAX(idest)+1 END) INTO id FROM estancia;
		INSERT INTO estancia (idest,nomest,rucest,direst,celest,mailest) VALUES (id,nomes,ruces,dires,celes,mailes);
	ELSEIF ope='EDI' THEN
		UPDATE estancia SET nomest=nomes, rucest=ruces, direst=dires, celest=celes,mailest=mailes WHERE idest=ides;
	ELSEIF ope='ELI' THEN
		DELETE FROM estancia WHERE idest=ides;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_lote` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_lote`(idlo INT, nomlo VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idlot) IS NULL THEN 1 ELSE MAX(idlot)+1 END) INTO id FROM lotes;
		INSERT INTO lotes (idlot,nomlot) VALUES (id,nomlo);
	ELSEIF ope='EDI' THEN
		UPDATE lotes SET nomlot=nomlo WHERE idlot=idlo;
	ELSEIF ope='ELI' THEN
		DELETE FROM lotes WHERE idlot=idlo;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_pago` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_pago`(idpa INT, fecpa date,monpa DECIMAL(18,0),idve int,usuario VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	DECLARE idap DOUBLE;
	SELECT idapc INTO idap FROM apertura WHERE estapc=1;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idpag) IS NULL THEN 1 ELSE MAX(idpag)+1 END) INTO id FROM ingresoventas;
		INSERT INTO ingresoventas (idpag,fecpag,monefe,idven,idapc) VALUES (id,fecpa,monpa,idve,idap);
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('ingresoventas','Pago Ventas','',CONCAT('[{"Codigo": "', id,'", "Fecha": "',fecpa,'", "Monto": "',monpa,'"}]'),usuario);
		UPDATE ventas SET estven=IF(totven>(pagven+monpa),'SAL','CAN'),pagven=pagven+monpa WHERE idven=idve;
		
		
	ELSEIF ope='EDI' THEN
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('ingresoventas','Editar',(SELECT CONCAT('[{"Codigo": "', idpag,'", "Fecha": "',fecpag,'", "Monto": "',monpag,'"}]') AS datvie FROM ingresoventas WHERE idpag=idpa),CONCAT('[{"Codigo": "', idpa,'", "Fecha": "',fec,'", "Monto": "',monpa,'"}]'),usuario);
		
		UPDATE ingresoventas SET fecpag=fecpa,monpag=monpa,idven=idve WHERE idpag=idpa;
			
	ELSEIF ope='ELI' THEN
		DELETE FROM ingresoventas WHERE idpag=idpa;
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_raza` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_raza`(idra INT, nomra VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idraz) IS NULL THEN 1 ELSE MAX(idraz)+1 END) INTO id FROM razas;
		INSERT INTO razas (idraz,nomraz) VALUES (id,nomra);
	ELSEIF ope='EDI' THEN
		UPDATE razas SET nomraz=nomra WHERE idraz=idra;
	ELSEIF ope='ELI' THEN
		DELETE FROM razas WHERE idraz=idra;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_retiro` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_retiro`(idre INT, monre decimal(18,0),usuario varchar(100),motre varchar(250),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	declare idap double;
	select idapc into idap from apertura where estapc=1;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idret) IS NULL THEN 1 ELSE MAX(idret)+1 END) INTO id FROM retirocaja;
		INSERT INTO retirocaja (idret,fecret,monret,idapc,motret) VALUES (id,now(),monre,idap,motre);
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('retirocaja','Retiro de caja','',CONCAT('[{"Codigo": "', id,'", "Fec. Hora": "',NOW(),'", "Monto": "',monre,'", "Motivo": "',motre,'"}]'),usuario);
		
	ELSEIF ope='EDI' THEN
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('retirocaja','Editar',(SELECT CONCAT('[{"Codigo": "', idret,'", "Fec. Hora": "',fecret,'", "Monto": "',monret,'", "Motivo": "',motret,'"}]') AS datvie FROM retirocaja WHERE idret=idre),CONCAT('[{"Codigo": "', idre,'", "Fec. Hora": "',NOW(),'", "Monto": "',monre,'", "Motivo": "',motre,'"}]'),usuario);
		
		UPDATE retirocaja SET fecret=now(),monret=monre,motret=motre WHERE idret=idre;
			
	ELSEIF ope='ELI' THEN
		DELETE FROM retirocaja WHERE idret=idre;
	END IF;
	
	UPDATE apertura SET monret=(SELECT SUM(monret) AS monret FROM retirocaja WHERE idapc=idap) WHERE idapc=idap;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_tipocaravana` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_tipocaravana`(idti INT, nomti VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idtip) IS NULL THEN 1 ELSE MAX(idtip)+1 END) INTO id FROM tipocaravana;
		INSERT INTO tipocaravana (idtip,nomtip) VALUES (id,nomti);
	ELSEIF ope='EDI' THEN
		UPDATE tipocaravana SET nomtip=nomti WHERE idtip=idti;
	ELSEIF ope='ELI' THEN
		DELETE FROM tipocaravana WHERE idtip=idti;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_ubicacion` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_ubicacion`(idub INT, nomub VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idubi) IS NULL THEN 1 ELSE MAX(idubi)+1 END) INTO id FROM ubicacion;
		INSERT INTO ubicacion (idubi,nomubi) VALUES (id,nomub);
	ELSEIF ope='EDI' THEN
		UPDATE ubicacion SET nomubi=nomub WHERE idubi=idub;
	ELSEIF ope='ELI' THEN
		DELETE FROM ubicacion WHERE idubi=idub;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_user` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_user`(idus INT,docus VARCHAR(10),nomus VARCHAR(100),logus VARCHAR(100),claus VARCHAR(100),nivus INT,ope varchar(3))
BEGIN
DECLARE id DOUBLE;
	IF ope='GUA' THEN
	SELECT (CASE WHEN MAX(idusu) IS NULL THEN 1 ELSE MAX(idusu)+1 END) INTO id FROM usuario;
	INSERT INTO usuario VALUES (id,docus,nomus,logus,claus,nivus);
	ELSEif ope='EDI' THEN
	UPDATE usuario SET docusu=docus,nomusu=nomus,logusu=logus,clausu=claus,nivusu=nivus WHERE idusu=idus;
	ELSEIF ope='ELI' THEN
	DELETE FROM usuario where idusu=idus;
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_ventas` */

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `man_ventas`(idve int,fecve date,numve double,ivaun decimal(18,0),totve decimal(18,0),idcl int,ope varchar(3))
BEGIN
	if ope='GUA' THEN
		INSERT INTO ventas (idven,fecven,numven,ivauno,totven,pagven,estven,idcli) values (idve,fecve,numve,ivaun,totve,0,'PEN',idcl);
	END IF;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
