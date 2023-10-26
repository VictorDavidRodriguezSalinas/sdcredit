/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.6.14-MariaDB-cll-lve : Database - sdinfco_sdcredit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sdinfco_sdcredit` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */;

USE `sdinfco_sdcredit`;

/*Table structure for table `apertura` */

DROP TABLE IF EXISTS `apertura`;

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

/*Data for the table `apertura` */

insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (1,0,100000,0,7000,0,1,1,'2023-10-10 00:52:10');
insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (2,10000,10000,0,1,1,1,2,'2023-10-10 18:06:55');
insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (3,0,0,0,0,1,1,1,'2023-10-24 23:48:49');

/*Table structure for table `auditoria` */

DROP TABLE IF EXISTS `auditoria`;

CREATE TABLE `auditoria` (
  `idaud` int(11) NOT NULL AUTO_INCREMENT,
  `nomtab` varchar(100) NOT NULL,
  `opetab` varchar(50) NOT NULL,
  `datvie` varchar(250) NOT NULL,
  `datact` varchar(250) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`idaud`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `auditoria` */

insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (147,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 17:16:39\"}]','');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (148,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 17:57:10\"}]','');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (149,'apertura','Editar','[{\"Codigo\": \"2\", \"Fec. Hora\": \"2023-10-10 00:58:29\", \"Inicial\": \"10000\", \"Apertura\": \"10000\"}]','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 18:06:55\", \"Inicial\": \"10000\", \"Apertura\": \"10000\"}]','Leticia Ayala');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (150,'retirocaja','Editar','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 01:04:33\", \"Monto\": \"1\", \"Motivo\": \"Testdav\"}]','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-10 18:21:17\", \"Monto\": \"5000\", \"Motivo\": \"Testdavid\"}]','VictOr Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (151,'retirocaja','Editar','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 00:56:57\", \"Monto\": \"2\", \"Motivo\": \"Testdav\"}]','[{\"Codigo\": \"1\", \"Fec. Hora\": \"2023-10-10 18:21:27\", \"Monto\": \"2000\", \"Motivo\": \"Testdav\"}]','VictOr Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (152,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"1\", \"Fecha\": \"2023-10-24\", \"Monto\": \"226000\"}]','VictOr Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (153,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"2\", \"Fecha\": \"2023-10-24\", \"Monto\": \"182000\"}]','VictOr Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (154,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"3\", \"Fecha\": \"2023-10-24\", \"Monto\": \"172000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (155,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"4\", \"Fecha\": \"2023-10-24\", \"Monto\": \"162000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (156,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"5\", \"Fecha\": \"2023-10-24\", \"Monto\": \"108000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (157,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"2\", \"Fec. Hora\": \"2023-10-24 23:48:37\"}]','');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (158,'apertura','Apertura de caja','','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-10-24 23:48:49\", \"Inicial\": \"0\", \"Apertura\": \"0\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (159,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"6\", \"Fecha\": \"2023-10-24\", \"Monto\": \"152000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (160,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"7\", \"Fecha\": \"2023-10-24\", \"Monto\": \"140000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (161,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"8\", \"Fecha\": \"2023-10-07\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (162,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"9\", \"Fecha\": \"2023-10-25\", \"Monto\": \"111000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (163,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"10\", \"Fecha\": \"2023-10-25\", \"Monto\": \"115000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (164,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"11\", \"Fecha\": \"2023-10-26\", \"Monto\": \"116000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (165,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"12\", \"Fecha\": \"2023-10-26\", \"Monto\": \"106000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (166,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"13\", \"Fecha\": \"2023-10-26\", \"Monto\": \"96000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (167,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"14\", \"Fecha\": \"2023-10-26\", \"Monto\": \"116000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (168,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"15\", \"Fecha\": \"2023-10-26\", \"Monto\": \"122000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (169,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"16\", \"Fecha\": \"2023-10-26\", \"Monto\": \"109000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (170,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"17\", \"Fecha\": \"2023-10-26\", \"Monto\": \"99000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (171,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"18\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (172,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"19\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (173,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"20\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (174,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"21\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (175,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"22\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (176,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"23\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (177,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"24\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (178,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"20\", \"Fecha\": \"2023-10-26\", \"Monto\": \"1744\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (179,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"21\", \"Fecha\": \"2023-10-26\", \"Monto\": \"174400\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (180,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"22\", \"Fecha\": \"2023-10-26\", \"Monto\": \"162400\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (181,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"23\", \"Fecha\": \"2023-10-26\", \"Monto\": \"150400\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (182,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"24\", \"Fecha\": \"2023-10-26\", \"Monto\": \"138400\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (183,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"25\", \"Fecha\": \"2023-10-26\", \"Monto\": \"99000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (184,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"26\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (185,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"27\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (186,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"28\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (187,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"29\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (188,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"30\", \"Fecha\": \"2023-10-26\", \"Monto\": \"152000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (189,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"31\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (190,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"32\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (191,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"33\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (192,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"34\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (193,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"35\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (194,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"36\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (195,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"37\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (196,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"38\", \"Fecha\": \"2023-10-26\", \"Monto\": \"95000\"}]','Jorge Rodriguez');

/*Table structure for table `cierrecaja` */

DROP TABLE IF EXISTS `cierrecaja`;

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

/*Data for the table `cierrecaja` */

insert  into `cierrecaja`(`idcie`,`horcie`,`monapc`,`totven`,`toting`,`monret`,`totcom`,`totegr`,`moncie`,`idapc`) values (1,'2023-10-10 17:57:10',100000,0,100000,3,0,3,99997,1);
insert  into `cierrecaja`(`idcie`,`horcie`,`monapc`,`totven`,`toting`,`monret`,`totcom`,`totegr`,`moncie`,`idapc`) values (2,'2023-10-24 23:48:37',100000,850000,950000,7000,0,7000,943000,1);

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `gender` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `client` */

insert  into `client`(`id`,`name`,`age`,`gender`) values (1,'Victor David Rodríguez Salinas',37,'M');
insert  into `client`(`id`,`name`,`age`,`gender`) values (2,'Leticia Adaluz Ayala Gomez',30,'F');

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `ruccli` varchar(30) NOT NULL,
  `nomcli` varchar(150) NOT NULL,
  `apecli` varchar(150) NOT NULL,
  `telcli` varchar(100) NOT NULL,
  `idusu` int(11) NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `clientes` */

insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (1,'7.170.190','Ruth Jenifer','Benítez Rolon','0975.735.321',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (2,'5.958.416','Pablo David','Centurión Ortega','0975.757.808',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (3,'4.855.214','Rodrigo Joel','Montiel Alonso','0993.401.548',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (4,'4.096.273','Virginia','Martinez Martínez ','0986.602.488',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (5,'4.394.795','Juan Ramon','Ortíz Maidana','0985.400.460',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (6,'5.704.068','Ana Esther','Acosta Romero','0986.830.003',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (7,'4.952.845','Robelina','Coronel','0984.551.412',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (8,'6.831.050','José Alberto','Martínez Aguiar','0982.643.137',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (9,'3.378.633','María Celeste','Galeano','0982.464.019',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (10,'6.121.187','Luis Carlos','Vera Roman','0976.537.897',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (11,'7.193.705','José Javier','Ortellado Benitez','0983.927.389',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (12,'6.135.022','Emanuel De Jesus','Oviedo Villalba','0975.722.149',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (13,'5.805.841','Marcial ','Espinoza Romero','0975.891.517',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (14,'3594942','Victor David','Rodriguez Salinas','0000',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (15,'4.232.163','Ricardo Celestino','Gimenez Pedrozo','0975576145',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (16,'4.957.685','Eduardo Ramon','Insaurralde Prieto','0972690429',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (17,'2.840.898','Bruno Gabriel','Gimenez Cardozo','0985778488',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (18,'5.954.766','Julia Elizabeth','Gomez Del Puerto','0975372002',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (19,'6.544.643','Maricel','Espinoza Muñoz','0985945604',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (20,'5.080.390','Laura Romina','Fernandez','0982556139',1);

/*Table structure for table `clientesapi` */

DROP TABLE IF EXISTS `clientesapi`;

CREATE TABLE `clientesapi` (
  `idcli` int(11) NOT NULL AUTO_INCREMENT,
  `ruccli` varchar(30) NOT NULL,
  `nomcli` varchar(150) NOT NULL,
  `apecli` varchar(150) NOT NULL,
  `telcli` varchar(100) NOT NULL,
  `idusu` int(11) NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `clientesapi` */

/*Table structure for table `cuotas` */

DROP TABLE IF EXISTS `cuotas`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `cuotas` */

insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (57,1,1,'2023-10-04','2023-10-11','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',116000.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (58,1,2,'2023-10-04','2023-10-18','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',106000.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (59,1,3,'2023-10-04','2023-10-25','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',96000.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (60,1,4,'2023-10-04','2023-11-01','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (61,1,5,'2023-10-04','2023-11-08','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (62,1,6,'2023-10-04','2023-11-15','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (63,1,7,'2023-10-04','2023-11-22','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,17,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (64,1,1,'2023-10-04','2023-10-11','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',116000.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (65,1,2,'2023-10-04','2023-10-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (66,1,3,'2023-10-04','2023-10-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (67,1,4,'2023-10-04','2023-11-01','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (68,1,5,'2023-10-04','2023-11-08','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (69,1,6,'2023-10-04','2023-11-15','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (70,1,7,'2023-10-04','2023-11-22','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,15,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (71,1,1,'2023-09-30','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',122000.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (72,1,2,'2023-09-30','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (73,1,3,'2023-09-30','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (74,1,4,'2023-09-30','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (75,1,5,'2023-09-30','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (76,1,6,'2023-09-30','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (77,1,7,'2023-09-30','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,16,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (78,1,1,'2023-10-09','2023-10-16','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',109000.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (79,1,2,'2023-10-09','2023-10-23','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',99000.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (80,1,3,'2023-10-09','2023-10-30','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (81,1,4,'2023-10-09','2023-11-06','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (82,1,5,'2023-10-09','2023-11-13','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (83,1,6,'2023-10-09','2023-11-20','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (84,1,7,'2023-10-09','2023-11-27','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (85,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (86,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (87,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (88,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (89,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (90,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (91,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (92,1,1,'2023-09-23','2023-09-30','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',176144.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (93,1,2,'2023-09-23','2023-10-07','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',162400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (94,1,3,'2023-09-23','2023-10-14','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',150400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (95,1,4,'2023-09-23','2023-10-21','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',138400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (96,1,5,'2023-09-23','2023-10-28','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (97,1,6,'2023-09-23','2023-11-04','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (98,1,7,'2023-09-23','2023-11-11','SEM',130000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (99,2,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (100,2,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (101,2,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (102,2,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (103,2,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (104,2,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (105,2,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (113,1,1,'2023-10-16','2023-10-23','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',99000.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (114,1,2,'2023-10-16','2023-10-30','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (115,1,3,'2023-10-16','2023-11-06','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (116,1,4,'2023-10-16','2023-11-13','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (117,1,5,'2023-10-16','2023-11-20','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (118,1,6,'2023-10-16','2023-11-27','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (119,1,7,'2023-10-16','2023-12-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (120,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (121,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (122,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (123,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (124,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (125,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (126,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (127,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (128,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (129,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (130,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (131,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (132,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (133,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (134,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (135,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (136,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (137,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (138,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (139,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (140,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (141,1,1,'2023-09-09','2023-09-16','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',152000.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (142,1,2,'2023-09-09','2023-09-23','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (143,1,3,'2023-09-09','2023-09-30','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (144,1,4,'2023-09-09','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (145,1,5,'2023-09-09','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (146,1,6,'2023-09-09','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (147,1,7,'2023-09-09','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,18,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (148,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (149,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (150,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (151,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (152,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (153,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (154,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,8,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (155,2,1,'2023-10-21','2023-10-28','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (156,2,2,'2023-10-21','2023-11-04','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (157,2,3,'2023-10-21','2023-11-11','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (158,2,4,'2023-10-21','2023-11-18','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (159,2,5,'2023-10-21','2023-11-25','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (160,2,6,'2023-10-21','2023-12-02','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (161,2,7,'2023-10-21','2023-12-09','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,8,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (162,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (163,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (164,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (165,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (166,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (167,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (168,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,2,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (169,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (170,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (171,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (172,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (173,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (174,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,11,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (175,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,11,1,500000,7);

/*Table structure for table `pagocuotas` */

DROP TABLE IF EXISTS `pagocuotas`;

CREATE TABLE `pagocuotas` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `fecpag` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idcuo` int(11) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `pagocuotas` */

insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (1,'2023-10-24',226000,8,1);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (2,'2023-10-24',182000,1,1);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (3,'2023-10-24',172000,2,1);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (4,'2023-10-24',162000,3,1);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (5,'2023-10-24',108000,15,1);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (6,'2023-10-24',152000,4,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (7,'2023-10-24',140000,5,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (8,'2023-10-07',95000,8,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (9,'2023-10-25',111000,43,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (10,'2023-10-25',115000,15,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (11,'2023-10-26',116000,57,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (12,'2023-10-26',106000,58,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (13,'2023-10-26',96000,59,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (14,'2023-10-26',116000,64,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (15,'2023-10-26',122000,71,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (16,'2023-10-26',109000,78,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (17,'2023-10-26',99000,79,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (18,'2023-10-26',112000,85,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (19,'2023-10-26',102000,86,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (20,'2023-10-26',1744,92,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (21,'2023-10-26',174400,92,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (22,'2023-10-26',162400,93,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (23,'2023-10-26',150400,94,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (24,'2023-10-26',138400,95,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (25,'2023-10-26',99000,113,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (26,'2023-10-26',112000,120,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (27,'2023-10-26',102000,121,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (28,'2023-10-26',112000,127,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (29,'2023-10-26',112000,134,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (30,'2023-10-26',152000,141,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (31,'2023-10-26',112000,99,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (32,'2023-10-26',102000,100,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (33,'2023-10-26',112000,148,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (34,'2023-10-26',112000,162,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (35,'2023-10-26',102000,163,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (36,'2023-10-26',112000,169,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (37,'2023-10-26',102000,170,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (38,'2023-10-26',95000,171,3);

/*Table structure for table `pagogastos` */

DROP TABLE IF EXISTS `pagogastos`;

CREATE TABLE `pagogastos` (
  `idgas` int(11) NOT NULL AUTO_INCREMENT,
  `desgas` varchar(200) NOT NULL,
  `fecgas` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idgas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `pagogastos` */

/*Table structure for table `retirocaja` */

DROP TABLE IF EXISTS `retirocaja`;

CREATE TABLE `retirocaja` (
  `idret` int(11) NOT NULL,
  `fecret` datetime NOT NULL,
  `monret` decimal(18,0) NOT NULL,
  `idapc` int(11) NOT NULL,
  `motret` varchar(250) NOT NULL,
  PRIMARY KEY (`idret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `retirocaja` */

insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (1,'2023-10-10 18:21:27',2000,1,'Testdav');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (2,'2023-10-10 01:04:07',1,2,'Testleth');
insert  into `retirocaja`(`idret`,`fecret`,`monret`,`idapc`,`motret`) values (3,'2023-10-10 18:21:17',5000,1,'Testdavid');

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `idsuc` int(11) NOT NULL,
  `rucsuc` varchar(50) NOT NULL,
  `nomsuc` varchar(150) NOT NULL,
  `telsuc` varchar(100) NOT NULL,
  `rucdue` varchar(50) NOT NULL,
  `nomdue` varchar(150) NOT NULL,
  PRIMARY KEY (`idsuc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `sucursal` */

insert  into `sucursal`(`idsuc`,`rucsuc`,`nomsuc`,`telsuc`,`rucdue`,`nomdue`) values (1,'0','Joyita Créditos','0','','');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`idusu`,`docusu`,`nomusu`,`logusu`,`clausu`,`nivusu`,`idsuc`) values (1,'359494222','Jorge Rodriguez','jorge','21232f297a57a5a743894a0e4a801fc3',1,1);
insert  into `usuario`(`idusu`,`docusu`,`nomusu`,`logusu`,`clausu`,`nivusu`,`idsuc`) values (2,'0','Cobrador','cobrador','21232f297a57a5a743894a0e4a801fc3',2,1);

/* Procedure structure for procedure `anular_pagare` */

/*!50003 DROP PROCEDURE IF EXISTS  `anular_pagare` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `anular_pagare`(pnumpgr int, pidcli int)
BEGIN
	
	delete from cuotas where numpgr=pnumpgr and idcli=pidcli;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `cerrar_caja` */

/*!50003 DROP PROCEDURE IF EXISTS  `cerrar_caja` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `cerrar_caja`(idus int)
BEGIN
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
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagocuotas GROUP BY idapc) v
		ON a.`idapc`=v.`idapc`
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagogastos GROUP BY idapc) c
		ON a.`idapc`=c.idapc
		WHERE a.estapc=1 AND idusu=idus;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_apertura` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_apertura` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_apertura`(idus int)
BEGIN
    
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
		JOIN usuario u ON a.`idusu`=u.`idusu`
		where a.idusu=idus;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_cliente` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_cliente`(ope VARCHAR(3))
BEGIN
    IF ope='LIS' THEN
		SELECT idcli,ruccli,nomcli,apecli,telcli FROM clientes;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_clientexusu` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_clientexusu` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_clientexusu`(idus int,nivus int)
BEGIN
	
	if nivus=2 then
	select 
	ruccli,
	concat(nomcli,', ',apecli) as razcli,
	idcli
	from clientes where idusu=idus;
	else
	SELECT 
	ruccli,
	CONCAT(nomcli,', ',apecli) AS razcli,
	idcli
	FROM clientes;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_cuotaspen` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_cuotaspen` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_cuotaspen`(idcl INT, fecpa date,pnumpgr int)
BEGIN

		declare atraso integer;
		select DATEDIFF(fecpa, fecven) into atraso FROM cuotas 
			WHERE idcli = idcl and numpgr=pnumpgr AND pagcuo<moncuo
			LIMIT 1;
		
    
		   SELECT
			idcuo,
			DATE_FORMAT(fecven, '%d-%m-%Y') AS fecven,
			numpgr,
			numcuo,
			moncuo,
			tipven,
			monint,
			porint,
			if(atraso>0,atraso,0) AS dias_atraso,
			 CAST(IF(atraso>0,atraso/7,0) AS DECIMAL(10,1)) AS sem_atraso,
				CAST(CASE 
				WHEN tipven='DIA' and atraso>0
				THEN moncuo*(porint/100)*atraso
				WHEN tipven='SEM' AND atraso>0
				THEN monint* CAST(atraso/7 AS DECIMAL(10,1))
				WHEN tipven='QUI' AND atraso>0
				THEN monint* CAST(atraso/14 AS DECIMAL(10,1))
				WHEN tipven='MES' AND atraso>30
				THEN monint* CAST(atraso/30 AS DECIMAL(10,1))
				ELSE 0 END AS UNSIGNED) AS intacu,
				CAST(
				CASE 
				WHEN tipven='DIA' AND atraso>0
				THEN moncuo+moncuo*(porint/100)*DATEDIFF(fecpa, fecven)
				WHEN tipven='SEM' AND atraso>0
				THEN moncuo+monint* CAST(atraso/7 AS DECIMAL(10,1))
				WHEN tipven='QUI' AND atraso>0
				THEN moncuo+monint* CAST(atraso/14 AS DECIMAL(10,1))
				WHEN tipven='MES' AND atraso>30
				THEN moncuo+monint* CAST(atraso/30 AS DECIMAL(10,1))
				ELSE moncuo END AS UNSIGNED) AS monpag,
				cancuo
			FROM cuotas 
			WHERE idcli = idcl AND pagcuo<moncuo AND numpgr=pnumpgr
			ORDER BY numpgr,numcuo
			limit 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_estadocuenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_estadocuenta` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_estadocuenta`(idus int,nivus int)
BEGIN
    
    if nivus=1 then
	 SELECT
			numpgr,	
			cl.`ruccli`,
			CONCAT(nomcli,', ',apecli) AS razcli,
			numcuo,
			DATE_FORMAT(fecven, '%d-%m-%Y') AS fecven,
			moncuo,
			IF( DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0,
			DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven),
			0
			) AS dias_atraso,
				CAST(CASE 
				
				WHEN tipven='DIA' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo*(porint/100)*DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)
				WHEN tipven='SEM' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/7 AS DECIMAL(10,1))
				WHEN tipven='QUI' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/14 AS DECIMAL(10,1))
				WHEN tipven='MES' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 30
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/30 AS DECIMAL(10,1))
				ELSE 0 END AS UNSIGNED) AS intacu,
				pagcuo,
				CAST(
				CASE 
				WHEN tipven='DIA' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+moncuo*(porint/100)*DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)
				WHEN tipven='SEM' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/7 AS DECIMAL(10,1))-pagcuo
				WHEN tipven='QUI' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/14 AS DECIMAL(10,1))-pagcuo
				WHEN tipven='MEN' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 30
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/30 AS DECIMAL(10,1))-pagcuo
			
			
				ELSE moncuo END AS UNSIGNED) AS monpag,
				(CASE WHEN estcuo='PEN' THEN 'Pendiente' WHEN estcuo='PAR' THEN 'Pago parcial' WHEN estcuo='CAN' THEN 'Pagado' ELSE 'Pendiente' END) AS estado
				 
	 
	 
	 	
			FROM cuotas c
			JOIN clientes cl
			ON c.`idcli`=cl.`idcli`
			ORDER BY c.idcli,numpgr,numcuo;
			
	
    elseif nivus=2 then
    
     SELECT
			numpgr,	
			cl.`ruccli`,
			CONCAT(nomcli,', ',apecli) AS razcli,
			numcuo,
			DATE_FORMAT(fecven, '%d-%m-%Y') AS fecven,
			moncuo,
			IF( DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0,
			DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven),
			0
			) AS dias_atraso,
				CAST(CASE 
				
				WHEN tipven='DIA' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo*(porint/100)*DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)
				WHEN tipven='SEM' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/7 AS DECIMAL(10,1))
				WHEN tipven='QUI' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 0
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/14 AS DECIMAL(10,1))
				WHEN tipven='MES' AND DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven) > 30
				THEN monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/30 AS DECIMAL(10,1))
				ELSE 0 END AS UNSIGNED) AS intacu,
				pagcuo,
				CAST(
				CASE 
				WHEN tipven='DIA' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+moncuo*(porint/100)*DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)
				WHEN tipven='SEM' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/7 AS DECIMAL(10,1))-pagcuo
				WHEN tipven='QUI' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 0
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/14 AS DECIMAL(10,1))-pagcuo
				WHEN tipven='MEN' AND (DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)) > 30
				THEN moncuo+monint* CAST(DATEDIFF((SELECT (CASE WHEN fecpag IS NULL THEN CURDATE() ELSE MAX(fecpag) END) AS fecpag FROM pagocuotas WHERE idcuo=c.`idcuo`), fecven)/30 AS DECIMAL(10,1))-pagcuo
			
			
				ELSE moncuo END AS UNSIGNED) AS monpag,
				(CASE WHEN estcuo='PEN' THEN 'Pendiente' WHEN estcuo='PAR' THEN 'Pago parcial' WHEN estcuo='CAN' THEN 'Pagado' ELSE 'Pendiente' END) AS estado
				 
	 
					
			FROM cuotas c
			JOIN clientes cl
			ON c.`idcli`=cl.`idcli`
			where cl.idusu=idus
			ORDER BY c.idcli,numpgr,numcuo;
			
    
    end if;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_pagares_anular` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_pagares_anular` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_pagares_anular`()
BEGIN
	
	SELECT
	idcli,
c.numpgr,
DATE_FORMAT(c.feccuo, '%d-%m-%Y') as feccuo,
cl.`ruccli`,
CONCAT(nomcli,', ',apecli) AS razcli,
moncre
FROM cuotas c
JOIN clientes cl
ON c.`idcli`=cl.`idcli`
JOIN (
SELECT numpgr,COUNT(*) AS cancuo FROM cuotas WHERE estcuo = 'PEN' GROUP BY numpgr) p
ON c.`numpgr`=p.numpgr AND p.cancuo=c.`cancuo`
GROUP BY c.`numpgr`
ORDER BY numpgr;

		

	END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_paracierre` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_paracierre` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_paracierre`(ope VARCHAR(3))
BEGIN
	IF ope='LIS' THEN
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
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagocuotas GROUP BY idapc) v
		ON a.`idapc`=v.`idapc`
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagogastos GROUP BY idapc) c
		ON a.`idapc`=c.idapc
		WHERE a.estapc=1 AND idusu=1;
	ELSEIF ope='LCI' THEN
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
		JOIN apertura a ON a.`idapc`=c.`idapc`  AND idusu=1;
		
		
	END IF;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_retiro` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_retiro` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `lis_retiro`(idus int)
BEGIN
        SELECT r.idret,r.fecret,r.monret,motret,IF(a.`estapc`=1,'Activo','Cerrado') AS estapc FROM retirocaja r JOIN apertura a ON r.`idapc`=a.`idapc` where a.idusu=idus ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_apertura` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_apertura` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_apertura`(idap int,monin decimal(18,0),monap decimal(18,0), idus int,ope varchar(3))
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

/* Procedure structure for procedure `man_cierre` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_cierre` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_cierre`(idus int)
BEGIN
	DECLARE id DOUBLE;
	DECLARE idap DOUBLE;
	SELECT idapc INTO idap FROM apertura WHERE estapc=1 and idusu=idus;
	
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
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagocuotas GROUP BY idapc) v
		ON a.`idapc`=v.`idapc`
		LEFT JOIN (SELECT SUM(monefe) AS monefe, idapc FROM pagogastos GROUP BY idapc) c
		ON a.`idapc`=c.idapc
		WHERE a.idapc=idap and idusu=idus;
		
		UPDATE apertura SET estapc=0 WHERE idapc=idap;
		
		
		
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('cierrecaja','Cerrar caja','',CONCAT('[{"Codigo": "', id,'", "Fec. Hora": "',NOW(),'"}]'),usuario);
		
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_cliente` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_cliente`(idcl int,ruccl varchar(50),nomcl varchar(200), apecl varchar(200), telcl varchar(100),idus int, ope varchar(3))
BEGIN
	DECLARE id double;
	if ope='GUA' THEN
		select if(max(idcli) is null,1,max(idcli)+1) into id from clientes;
		insert into clientes values (id,ruccl,nomcl,apecl,telcl,idus);
		
	ELSEif ope='EDI' THEN
		update clientes set ruccli=ruccl,nomcli=nomcl,apecli=apecl,telcli=telcl,idusu=idus where idcli=idcl;
	ELSEIF ope='ELI' THEN
		DELETE FROM clientes where idcli=idcl;
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_cuotas` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_cuotas` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_cuotas`(
    pidcuo int,
    pnumpgr int,
    pnumcuo int,
    pfeccuo date,
    pfecven date,
    ptipven varchar(3),
    pmoncuo decimal(18,2),
    ptipint varchar(3),
    pmonint decimal(18,2),
    pporint decimal(18,2),
    pestcuo varchar(3),
    pestpgr varchar(3),
    pidcli int,
    pidusu int,
    pmoncre decimal(18,0),
    pcancuo int,
    ope varchar(3)
    )
BEGIN
    
	DECLARE id integer;
	SELECT (CASE WHEN MAX(idcuo) IS NULL THEN 1 ELSE MAX(idcuo)+1 END) INTO id FROM cuotas;
    
	if ope='GUA' THEN
		insert into cuotas values (id,pnumpgr,pnumcuo,pfeccuo,pfecven,ptipven,pmoncuo,ptipint,pmonint,pporint,pestcuo,pestpgr,0,pidcli,pidusu,pmoncre,pcancuo);
	                                   
	ELSEIF ope='EDI' THEN  
		update cuotas set numpgr=pnumpgr,numcuo=pnumcuo,feccuo=pfeccuo,fecven=pfecven,moncuo=pmoncuo,tipint=ptipint,monint=pmonint,porint=pporint,estcuo=pestcuo,estpgr=pestpgr,idcli=pidcli where idcuo=pidcuo;
	                                   
	ELSEIF ope='ELI' THEN          
		delete from cuotas where idcuo=pidcuo;
	                                   
	END IF;                            
                                           
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_pago` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_pago` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_pago`(idpa INT, fecpa DATE,monpa DECIMAL(18,0),idve INT,idus int,ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	DECLARE idap DOUBLE;
	SELECT idapc INTO idap FROM apertura WHERE estapc=1 and idusu=idus;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idpag) IS NULL THEN 1 ELSE MAX(idpag)+1 END) INTO id FROM pagocuotas;
		INSERT INTO pagocuotas (idpag,fecpag,monefe,idcuo,idapc) VALUES (id,fecpa,monpa,idve,idap);
		INSERT INTO auditoria(nomtab,opetab,datvie,datact,usuario)  
		VALUES ('pagocuotas','Pago Cuotas','',CONCAT('[{"Codigo": "', id,'", "Fecha": "',fecpa,'", "Monto": "',monpa,'"}]'),(SELECT nomusu from usuario where idusu=idus));
		
		UPDATE cuotas SET estcuo=IF(moncuo>(pagcuo+monpa),'SAL','CAN'),pagcuo=pagcuo+monpa WHERE idcuo=idve;
		
	END IF;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_retiro` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_retiro` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_retiro`(idre INT, monre decimal(18,0),usuario varchar(100),motre varchar(250),idus int,ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	declare idap double;
	select idapc into idap from apertura where estapc=1 and idusu=idus;
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

/* Procedure structure for procedure `man_user` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_user` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `man_user`(idus INT,docus VARCHAR(10),nomus VARCHAR(100),logus VARCHAR(100),claus VARCHAR(100),nivus INT,idsu INT,ope VARCHAR(3))
BEGIN
    
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
	SELECT (CASE WHEN MAX(idusu) IS NULL THEN 1 ELSE MAX(idusu)+1 END) INTO id FROM usuario;
	INSERT INTO usuario VALUES (id,docus,nomus,logus,claus,nivus,idsu);
	ELSEIF ope='EDI' THEN
	UPDATE usuario SET docusu=docus,nomusu=nomus,logusu=logus,clausu=claus,nivusu=nivus WHERE idusu=idus;
	ELSEIF ope='ELI' THEN
	DELETE FROM usuario WHERE idusu=idus;
	END IF;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
