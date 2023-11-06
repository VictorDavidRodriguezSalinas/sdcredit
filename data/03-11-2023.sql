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
insert  into `apertura`(`idapc`,`monini`,`monapc`,`monaum`,`monret`,`estapc`,`idcaj`,`idusu`,`horapc`) values (2,10000,10000,0,1,0,1,2,'2023-10-10 18:06:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

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
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (197,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"39\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (198,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"40\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (199,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"41\", \"Fecha\": \"2023-10-26\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (200,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"42\", \"Fecha\": \"2023-10-26\", \"Monto\": \"102000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (201,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"43\", \"Fecha\": \"2023-10-27\", \"Monto\": \"124800\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (202,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"43\", \"Fecha\": \"2023-10-27\", \"Monto\": \"87600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (203,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"44\", \"Fecha\": \"2023-10-27\", \"Monto\": \"81600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (204,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"45\", \"Fecha\": \"2023-10-27\", \"Monto\": \"75600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (205,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"46\", \"Fecha\": \"2023-10-27\", \"Monto\": \"69600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (206,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"47\", \"Fecha\": \"2023-10-27\", \"Monto\": \"63600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (207,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"48\", \"Fecha\": \"2023-10-28\", \"Monto\": \"190000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (208,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"49\", \"Fecha\": \"2023-10-28\", \"Monto\": \"155000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (209,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"50\", \"Fecha\": \"2023-10-28\", \"Monto\": \"145000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (210,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"51\", \"Fecha\": \"2023-10-28\", \"Monto\": \"135000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (211,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"52\", \"Fecha\": \"2023-10-28\", \"Monto\": \"125000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (212,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"53\", \"Fecha\": \"2023-10-28\", \"Monto\": \"135000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (213,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"54\", \"Fecha\": \"2023-10-28\", \"Monto\": \"125000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (214,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"55\", \"Fecha\": \"2023-10-28\", \"Monto\": \"135000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (215,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"56\", \"Fecha\": \"2023-10-28\", \"Monto\": \"125000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (216,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"57\", \"Fecha\": \"2023-10-28\", \"Monto\": \"115000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (217,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"58\", \"Fecha\": \"2023-10-28\", \"Monto\": \"105000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (218,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"59\", \"Fecha\": \"2023-10-28\", \"Monto\": \"125000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (219,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"60\", \"Fecha\": \"2023-10-28\", \"Monto\": \"115000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (220,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"61\", \"Fecha\": \"2023-10-28\", \"Monto\": \"105000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (221,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"62\", \"Fecha\": \"2023-10-28\", \"Monto\": \"157000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (222,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"63\", \"Fecha\": \"2023-10-28\", \"Monto\": \"145000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (223,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"64\", \"Fecha\": \"2023-10-28\", \"Monto\": \"153000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (224,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"65\", \"Fecha\": \"2023-10-28\", \"Monto\": \"230000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (225,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"66\", \"Fecha\": \"2023-10-28\", \"Monto\": \"210000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (226,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"67\", \"Fecha\": \"2023-10-28\", \"Monto\": \"165000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (227,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"68\", \"Fecha\": \"2023-10-28\", \"Monto\": \"145000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (228,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"69\", \"Fecha\": \"2023-10-28\", \"Monto\": \"1000000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (229,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"70\", \"Fecha\": \"2023-10-28\", \"Monto\": \"1000000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (230,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"71\", \"Fecha\": \"2023-10-28\", \"Monto\": \"130000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (231,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"72\", \"Fecha\": \"2023-10-28\", \"Monto\": \"130000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (232,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"73\", \"Fecha\": \"2023-10-28\", \"Monto\": \"130000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (233,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"74\", \"Fecha\": \"2023-10-28\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (234,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"75\", \"Fecha\": \"2023-10-28\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (235,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"76\", \"Fecha\": \"2023-10-28\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (236,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"77\", \"Fecha\": \"2023-10-29\", \"Monto\": \"96000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (237,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"78\", \"Fecha\": \"2023-10-29\", \"Monto\": \"217600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (238,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"79\", \"Fecha\": \"2023-10-29\", \"Monto\": \"201600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (239,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"80\", \"Fecha\": \"2023-10-29\", \"Monto\": \"185600\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (240,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"81\", \"Fecha\": \"2023-10-30\", \"Monto\": \"60000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (241,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"82\", \"Fecha\": \"2023-10-30\", \"Monto\": \"60000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (242,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"83\", \"Fecha\": \"2023-10-30\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (243,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"84\", \"Fecha\": \"2023-10-30\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (244,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"85\", \"Fecha\": \"2023-10-31\", \"Monto\": \"1000000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (245,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"86\", \"Fecha\": \"2023-11-01\", \"Monto\": \"105000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (246,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"87\", \"Fecha\": \"2023-11-02\", \"Monto\": \"112000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (247,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"88\", \"Fecha\": \"2023-11-02\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (248,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"89\", \"Fecha\": \"2023-11-03\", \"Monto\": \"95000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (249,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"90\", \"Fecha\": \"2023-11-03\", \"Monto\": \"133000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (250,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"91\", \"Fecha\": \"2023-11-03\", \"Monto\": \"190000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (251,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"92\", \"Fecha\": \"2023-11-03\", \"Monto\": \"124000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (252,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"93\", \"Fecha\": \"2023-11-03\", \"Monto\": \"143800\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (253,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"94\", \"Fecha\": \"2023-11-03\", \"Monto\": \"152000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (254,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"95\", \"Fecha\": \"2023-11-03\", \"Monto\": \"208000\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (255,'pagocuotas','Pago Cuotas','','[{\"Codigo\": \"96\", \"Fecha\": \"2023-11-03\", \"Monto\": \"163700\"}]','Jorge Rodriguez');
insert  into `auditoria`(`idaud`,`nomtab`,`opetab`,`datvie`,`datact`,`usuario`) values (256,'cierrecaja','Cerrar caja','','[{\"Codigo\": \"3\", \"Fec. Hora\": \"2023-11-03 15:41:57\"}]','');

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
insert  into `cierrecaja`(`idcie`,`horcie`,`monapc`,`totven`,`toting`,`monret`,`totcom`,`totegr`,`moncie`,`idapc`) values (3,'2023-11-03 15:41:57',10000,0,10000,1,0,1,9999,2);

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
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (3,'4.855.214','Rodrigo Joel','Montiel Alonso','0993.401.548',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (4,'4.096.273','Virginia','Martinez Martínez ','0986.602.488',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (5,'4.394.795','Juan Ramon','Ortíz Maidana','0985.400.460',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (6,'5.704.068','Ana Esther','Acosta Romero','0986.830.003',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (7,'4.952.845','Robelina','Coronel','0984.551.412',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (8,'6.831.050','José Alberto','Martínez Aguiar','0982.643.137',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (9,'3.378.633','María Celeste','Galeano','0982.464.019',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (10,'6.121.187','Luis Carlos','Vera Roman','0976.537.897',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (11,'7.193.705','José Javier','Ortellado Benitez','0983.927.389',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (12,'6.135.022','Emanuel De Jesus','Oviedo Villalba','0975.722.149',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (13,'5.805.841','Marcial ','Espinoza Romero','0975.891.517',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (14,'3594942','Victor David','Rodriguez Salinas','0000',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (15,'4.232.163','Ricardo Celestino','Gimenez Pedrozo','0975576145',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (16,'4.957.685','Eduardo Ramon','Insaurralde Prieto','0972690429',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (17,'2.840.898','Bruno Gabriel','Gimenez Cardozo','0985778488',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (18,'5.954.766','Julia Elizabeth','Gomez Del Puerto','0975372002',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (19,'6.544.643','Maricel','Espinoza Muñoz','0985945604',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (20,'5.080.390','Laura Romina','Fernandez','0982556139',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (21,'4.476.708','Mariela Ester','Rojas Melgarejo','0986443901',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (22,'3.879.779','Andresa Donata','Fleitas Aranda','0975663020',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (23,'7.620.375','Jose Maria','Morel Colman','0',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (24,'6.161.871','Monica Elizabeth','Marecos Colman','0982213228',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (25,'2.177.775','Claudia Noemi','Meza Caceres','0985916656',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (26,'5.343.580','Fernanda','Vera','0973809174',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (27,'4.504.993','Claudia Diana','Galeano Luraghi','0974504225',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (28,'4.082.623','Norma Lorena','Roman Segovia','0984832079',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (29,'5.575.503','Ana Gabriela','Ferreira Romero','0981058276',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (30,'4.610.266','Miguel Angel','Caballero','0975191554',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (31,'3.696.657','Maria Belen','Vera','0994613997',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (32,'5.731.887','Ninfa Edith','Vazquez','0983043545',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (33,'7.089.872','Lidia Mariana','Kugler Pedrozo','0983548221',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (34,'3.915.434','Nilda Nilsen','Rotela Orue','0985791290',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (35,'4.544.936','Maria LIliana','Diaz','0992458835',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (36,'1.641.359','Carmen ','Irala','0975727447',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (37,'4.014.012','Ignacia Mabel','Vargas espinoza','0986949174',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (38,'3.498.298','Celso Antonio','Rolon Cardozo','0985232228',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (39,'4.925,892','Carolina Elizabeth','Vera Quiroga','098482863.9',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (40,'3.563.887','Rossana Trinidad','Samaniego Quiroga','0992991361',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (41,'3.198.509','Fidelina','Baez Escurra','0975634507',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (42,'1.571.030','Cecundina','Rojas','0984856326',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (43,'2.063.527','Sixta Petrona','Galeano Cañiza','0986806544',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (44,'6.024.365','Diego ','Cardozo Esteves','0975768383',1);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (45,'6.107.641','Rodrigo Ramon','Genez Gonzalez','0984663807',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (46,'3.752.684','Dionicio ','Cordoba Pereira','0983776994',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (47,'3.603.108','Delia Beatriz','Rios','0986176498',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (48,'7.044.711','Gladys Mercedes','Gimenez Cardozo','0982599723',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (49,'5.599.797','Juliana Maria Elizabeth','Benitez Chaparro','0983270566',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (50,'4.036.983','Gabriela Ines','Montenegro dorfschmidt','0981488637',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (51,'7.995.730','Alexander Javier','Crechi','0993567844',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (52,'4.366.203','Maria Jose','Caceres Belotto','0975707347',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (53,'3.006.543','Maria Veronica','Rodriguez Cabrera','0972101600',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (54,'3,497.494','Rosalia','Caceres Ortega','0',2);
insert  into `clientes`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`,`idusu`) values (55,'2.971.166','Pelagia ','Perez Zorrilla','0',2);

/*Table structure for table `clientesapi` */

DROP TABLE IF EXISTS `clientesapi`;

CREATE TABLE `clientesapi` (
  `idcli` int(11) NOT NULL AUTO_INCREMENT,
  `ruccli` varchar(30) NOT NULL,
  `nomcli` varchar(150) NOT NULL,
  `apecli` varchar(150) NOT NULL,
  `telcli` varchar(100) NOT NULL,
  KEY `idcl` (`idcli`)
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

/*Data for the table `clientesapi` */

insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (1,'1001434-9','FRANCISCO SOLANO','HUERTA ETCHEVERRY','00');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (2,'1001518-3','JUAN PABLO','LOUTEIRO ROLON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (3,'1000620-6','DOMINGO GUZMAN','VERZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (4,'1000276-6','DEMETRIO','BELOTTO BENITEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (5,'1000520-0','NESTOR ESTANISLAO','ZORRILLA GAUTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (6,'1001134-0','PABLO GILBERTO','ORTIZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (7,'1000839-0','BASSO','LUCIANA','0');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (8,'1001474-8','ROSA JOSEFINA','VERGARA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (9,'1000128-0','SERGIO','CUEVA BRITOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (10,'1001543-4','VICTOR','ARMOA DUARTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (11,'1000484-0','JULIO','BENITEZ NUÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (12,'1001262-1','REINALDO TOMAS','VELAZQUEZ RIVEROS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (13,'1001325-3','MIRTHA ESTELA','SOSA DE SANABRIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (14,'1000414-9','JORGE ALFREDO','MELLONE FOSSATI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (15,'1001260-5','JULIA ANTONIA','AGÃœERO DE ALEGRE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (16,'1000865-9','ROSALINO','NAVARRO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (17,'1001178-1','LUIS GUSTAVO','GONZALEZ RIVELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (18,'1001280-0','IRENEO TOMAS','VAZQUEZ BRITOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (19,'1001239-7','MARIA NATIVIDAD','BERNAL OCAMPO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (20,'1000391-6','NESTOR GUSTAVO','BENITEZ BARRIOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (21,'1000259-6','BLANCA ROSA','CABALLERO IRALA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (22,'1000524-2','CELEDONIO','GONZALEZ PAREDES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (23,'1000868-3','GERVACIO','ARAUJO ACOSTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (24,'1000131-0','ALEJANDRO','MENDOZA VALDOVINOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (25,'1001582-5','CARMEN OBDULIA','LURASCHI MERINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (26,'1001594-9','MARIA ELIZABETH','PEÑA LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (27,'1001052-1','CRISTINO RAMON','BOGADO UGARTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (28,'1000166-2','PEDRO PASCUAL','SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (29,'1000444-0','WILLIAN','AYALA GIMENEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (30,'1000392-4','RAMON','RODRIGUEZ GUERRERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (31,'1000666-4','NOLAZCO ANIBAL','PATIÑO BRITOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (32,'1001406-3','OSCAR CALIXTO','NUÑEZ GILL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (33,'1000948-5','TOMAS VIDAL','BATE MEDINA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (34,'1001312-1','LUCIA ELIZABETH','HASEITEL DE MARECO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (35,'1000084-4','JOSE BLASIO','RAMIREZ CAMPUZANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (36,'1000455-6','RONALD','STARSENBAUM STUL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (37,'1000904-3','SILVIA BEATRIZ','MOLAS TORALES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (38,'1001238-9','GUSTAVO RODOLFO','GILL AGUIAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (39,'1000741-5','ALBA NOEMI','SOTOMAYOR CABRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (40,'1000834-9','CARMEN NOEMI','DOMANCHUK MALLORQUIN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (41,'1000636-2','FABIO RAMON','CENTURION CABRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (42,'1001455-1','SEVERIANA','OJEDA CABRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (43,'1001346-6','PELAGIO','BARRIOS BOGADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (44,'1000369-0','OSCAR','RAMIREZ JIMENEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (45,'1000177-8','SARA RAQUEL','FLORES MENDOZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (46,'1000529-3','CRISTOBAL','ROMAN ROMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (47,'1001545-0','JOSE ASUNCION','QUEVEDO ALLENDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (48,'1000004-6','SANDRA ELIZABETH','MOLINA DE TROCHE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (49,'1001255-9','JUAN CARLOS','CORVALAN ESPINOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (50,'1000704-0','MARTIN ANTONIO','OCAMPOS ALMIRON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (51,'1001159-5','MARCELINA','DUARTE DE CASTILLO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (52,'1001456-0','JOSE BENIGNO','APODACA VERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (53,'1000058-5','GUILLERMO GABRIEL','ARROSIO FLOR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (54,'1000275-8','JULIO CESAR','VILLALBA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (55,'1000126-3','ZULMA DOLLY','VERA LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (56,'1001605-8','MARIA CRISTINA','GUERRERO GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (57,'1000500-5','SONIA ELIZABETH','GILL CABAÑAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (58,'1001104-8','JUAN','ORTIZ ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (59,'1000283-9','BLANCA GRACIELA','FRANCO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (60,'1000468-8','LIDIA ISABEL','VILLATE GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (61,'1001036-0','MARIA ANGELICA','MERCADO ARANDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (62,'1000082-8','GUSTAVO ADOLFO','CHAMORRO CORTESI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (63,'1001583-3','FELIX','BENITEZ GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (64,'1001465-9','ALBERTO TOMIO','ISHIBASHI FLORENTIN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (65,'1001483-7','ELVIS JAVIER','ARANDA COUSIRAT','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (66,'1000158-1','OLEGARIO','ALONSO JARA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (67,'1000992-2','CARMEN','BARUA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (68,'1000018-6','SEBASTIAN','TRINIDAD','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (69,'1000204-9','CATALINO','AMARILLA TRINIDAD','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (70,'1000124-7','ANTONIO YAMIL','MARECOS FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (71,'1001554-0','SILVINO','VARGAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (72,'1001094-7','LIZ CONCEPCION','GALEANO MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (73,'1000119-0','JUAN CARLOS','MATTO MAIDANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (74,'1000879-9','SILVINA','BERNAL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (75,'1000712-1','JOSE MARIA','ESPINOLA GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (76,'1000012-7','LELI GLADYS','PEÑA INSAURRALDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (77,'1000752-0','OSCAR LUIS','CRISTALDO CURTIDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (78,'1000074-7','AMPARO IRIS','MARTINEZ YUBERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (79,'1001445-4','RAUL ISAAC','MENDOZA RAMOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (80,'1000334-7','RICHARD ANDRES','RIVAROLA GODOY','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (81,'1001430-6','CONCEPCION','TORALES ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (82,'1001510-8','SANDRA ELIZABETH','POLETTI TORRES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (83,'1001249-4','RUFINA ELIZABETH','PESOA QUINTANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (84,'1000667-2','GUILLERMINA','ACOSTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (85,'1000535-8','HERIBERTO','CANDIA CALONGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (86,'1001390-3','IGNACIO VIDAL','LOPEZ CANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (87,'1001494-2','JORGE ISABELINO','GONZALEZ DEMOFONTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (88,'1001210-9','MILCIADES ANTONIO','SILVERO IBAÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (89,'1001359-8','CRISTINA MARGARITA','KOHN ACHAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (90,'1000517-0','GUILLERMO','ALBORNO MORA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (91,'1000217-0','VALENTINA','OJEDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (92,'1001316-4','ILDA MARIA','CARDOZO DE FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (93,'1000395-9','MARGARITA ELIZABETH','MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (94,'1000133-6','ROSALBA','BRITEZ IRALA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (95,'1000827-6','CINTHYA ELIZABETH','AYALA MOLINAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (96,'1000515-3','JUAN ESTEBAN','OJEDA LEIVA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (97,'1001198-6','TERESITA','SILGUERO RIOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (98,'1000114-0','OSVALDO LUIS','BENITEZ ISNARDI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (99,'1000683-4','ADESMAR','LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (100,'1000765-2','MARIA MERCEDE','LOPEZ DE COGLIOLO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (101,'1000848-9','ISAAC JOSE','SALOMAO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (102,'1001275-3','MARCELINO','CABRERA MARECOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (103,'1000372-0','FLORENCIA','CODAS THOMPSON LLANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (104,'1000295-2','CESAR','OLMEDO PEREIRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (105,'1000081-0','CARMEN ADRIANA','RODRIGUEZ SZOPA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (106,'1000257-0','ANTOLIANA','JUDIS ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (107,'1001610-4','HECTOR ARSENIO','GRANCE LEZCANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (108,'1001213-3','MARCELO','SOSA LEZCANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (109,'1000847-0','GEORGINA','EDWARDS DE GRACIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (110,'1001274-5','DORILA PETRONA','BARRIENTOS VARGAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (111,'1001524-8','ELVIA RAMONA','ARGUELLO BARUA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (112,'1001439-0','MELANIO','ALONSO ROTELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (113,'1001199-4','SEBASTIAN','DAVALOS QUINTANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (114,'1000191-3','MATILDE BEATRIZ','VEGA DE VILLALBA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (115,'1000555-2','NICANOR','FLORENTIN LUGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (116,'1000528-5','VICTOR CIPRIANO','CABRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (117,'1000616-8','RUBEN DARIO','ALCARAZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (118,'1000696-6','CARLOS ALBERTO','GONZALEZ ALVAREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (119,'1000151-4','RUBEN','BARUA BORJAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (120,'1000693-1','EDITH CARMEN','ACOSTA DE RECALDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (121,'1000993-0','MARCIAL','CABALLERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (122,'1000077-1','ABEL JORGE','ALVAREZ VERZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (123,'1001563-9','SERAFINA RAMONA','FIGUEREDO ZARZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (124,'1000408-4','DELIA MARINA','MOLINAS DIAZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (125,'1000655-9','VISITACION','FLEITAS ORTIZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (126,'1000964-7','FRANCISCO','ACOSTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (127,'1000155-7','LILIAN NOEMI','MIERES SALOMON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (128,'1001154-4','RICARDO','MAQUEDA ARANDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (129,'1000449-1','MARCIAL','RUIZ DIAZ GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (130,'1001146-3','OVIDIO','ACEVEDO ACOSTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (131,'1001196-0','INOCENCIO','MIRANDA PAVON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (132,'1000314-2','SILVIO AUGUSTO','REYES ROJAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (133,'1000241-3','ZULMA ROCIO','URUNAGA GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (134,'1000410-6','JUANA ANTONIA','MARECO DE GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (135,'100065-9','CRISPINIANA RAMONA','GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (136,'1001380-6','HUMBERTO CARLOS','TREPOWSKI AGUERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (137,'1001451-9','DELIA VICTORINA','PALACIOS DE ESPINOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (138,'1000922-1','CLINIO MANUEL','SILVERA BAEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (139,'1000032-1','ZELSIA','PATIÑO BOGADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (140,'1001568-0','GREGORIO','CORONIL FIGUEREDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (141,'1001463-2','EDUARDO MICHIO','ISHIBASHI FLORENTIN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (142,'1000970-1','MARIA MARGARITA','DUARTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (143,'1001130-7','WALTER HUGO','LARRIEUR CHAVES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (144,'1000061-5','CECILIO','GIMENEZ LEZCANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (145,'1001412-8','CARLOS MANUEL','RIVAS RUIZ DIAZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (146,'1000519-6','GUSTAVO ADOLFO','RAMOS GAONA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (147,'1000629-0','ELADIO ODILIO','OVIEDO NUÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (148,'1000125-5','JUAN SIMON','GAYOSO MEZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (149,'1000843-8','FEDERICO','CUOMO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (150,'1001291-5','DAVID','NEUFELD SALAZAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (151,'1000180-8','ROSALIA','BENITEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (152,'1000452-1','LEONARDO FABIO','SAMANIEGO SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (153,'1001089-0','GUSTAVO','MANDELBURGER LOHRI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (154,'1001538-8','ROBERT MARINO','CACERES AGUILERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (155,'1001321-0','ELDA ESTELA','MOLINAS DE SILVA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (156,'1000552-8','ROMUALDO','MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (157,'1001319-9','JESUS MARIA','MAIDANA ARNOLD','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (158,'1000080-1','ALBERTO EDGAR','CASELLI AZCONA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (159,'1000381-9','GUSTAVO ANDRES','SOERENSEN ESPINOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (160,'1001174-9','PURIFICACION','MOREL ALFONSO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (161,'1001382-2','OSCAR GABRIEL','ETCHEVERRY MENDIETA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (162,'1000184-0','PABLO RAMON','ALCARAZ GAVILAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (163,'1000943-4','ESTELA AGUSTINA','SOSA DE DELGADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (164,'1000702-4','ANGEL','VERON PERALTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (165,'1000122-0','EVELIA RAFAELA','SANCHEZ MONGES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (166,'1000854-3','EMIGDIO','GONZALEZ ESPINOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (167,'1000777-6','NANCY ANGELUZ','CHENA VALLEJOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (168,'1000771-7','MAURO FRANCISCO','ECHAURI WENDLING','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (169,'1001629-5','JULIO CESAR','GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (170,'1001556-6','JORGE MIGDONIO','SOSA HERRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (171,'1000711-3','SINFORIANA GREGORIA','ESQUIVEL DE SILVA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (172,'1001179-0','CESAR EDUARDO','GONZALEZ RODRIGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (173,'1001225-7','AGUEDA ELENA','RUIZ DIAZ DE BENITEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (174,'1001111-0','GLADIS','GONZALEZ DE ORREGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (175,'1000954-0','EPIFANIA MARIA ELENA','COLMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (176,'1001035-1','OSCAR','CANDIA GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (177,'1001625-2','JULIO CESAR','GONZALEZ CANTALUPPI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (178,'1001010-6','SOTERA','ROTELA DE GARCETE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (179,'1001189-7','PATRICIA RAQUEL','CHAVEZ ANTOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (180,'1000942-6','MAURA VIDALICIA','ESTIGARRIBIA DE RIOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (181,'1001480-2','MARIA YOLANDA','GREGOR PACHER','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (182,'1001418-7','RAMON','CANDIA MEZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (183,'1000389-4','ROSA MARIA','DAVALOS ARMOA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (184,'1000797-0','MARIA JAZMIN','PAZOS KNOOP','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (185,'1001476-4','SANIE MERCEDES','MENDOZA ORTEGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (186,'1001172-2','PRUDENCIO','BURGOS ROA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (187,'1000014-3','BLANCA BEATRIZ','MAIDANA MENDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (188,'1000413-0','JOSE LUIS','GUERRERO BRITOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (189,'1000156-5','GABINA','MIRANDA VDA  DE RUIZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (190,'1001598-1','DOMINGA','DURE LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (191,'1000648-6','GREGORIO','PAREDES FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (192,'1001338-5','PEDRO NICOLAS','CABRAL CANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (193,'1001358-0','JOSE CONCEPCION','ESCOBAR PACUA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (194,'1000164-6','ADOLFO','MENDOZA AQUINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (195,'1000225-1','ALCIDES JAVIER','PEREZ GUERREÑO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (196,'1001616-3','ADRIANO','ZARACHO AMARILLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (197,'1000048-8','JOSEFINA','CRISTALDO DE AMARAL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (198,'1001324-5','JESUS DANIEL','OSORIO GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (199,'1001337-7','MARIA GABRIELA','GARCETE VELAZQUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (200,'1000019-4','AGUSTIN','ARIAS PAREDES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (201,'1000805-5','LADYS RAMONA','ROTELA DE GARCETE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (202,'1000850-0','GLADYS GUILLERMINA','VEGA MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (203,'1001376-8','PABLO JOSE','AUDIBERT LAHAYE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (204,'1001611-2','CONCEPCION','ARGUELLO DE VALENZUELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (205,'1000227-8','EMILSE ZULMIRA','BAEZ DE MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (206,'1001493-4','JAVIER','VALDEZ MORALES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (207,'1001171-4','TERESA','BERNAL DE FRUTOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (208,'1001148-0','VICTOR TOMAS','ZARATE MIÑOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (209,'1001276-1','PERLA ROSALINDA','ROMAN FLOR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (210,'1000047-0','CRISTINA ELIZABETH','DUARTE AMARAL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (211,'1000028-3','MANUEL','CABRERA AMARILLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (212,'1000460-2','IRENEO','RIVAROLA MARTENS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (213,'100020-9','ROLANDA DOMINGA','FARANO VDA  DE VEGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (214,'1000851-9','ANTONIO TARCISIO','ALVES COELHO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (215,'1000571-4','RAMON','GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (216,'1000883-7','ISIDRO','MALDONADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (217,'1001521-3','JUANA','DOMINGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (218,'1001435-7','GLORIA ADRIANA','BUONGERMINI MAIDANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (219,'1000470-0','BALBINA AURELIA','FLORES DE ESQUIVEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (220,'1000610-9','MARIO MELANIO','CARTAMAN BARRETO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (221,'1000761-0','OSMAR DARIO','ACOSTA REYES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (222,'1001162-5','VICTOR GUILLERMO','VIVEROS BERTRAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (223,'1001401-2','EDUARDO TEOFILO','AMARILLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (224,'1000700-8','ANDRES','FERNANDEZ VAZQUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (225,'1000893-4','CECILIA','CUELLAR VELAZTIQUI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (226,'1001278-8','PEDRO RUBEN','BENITEZ SALINAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (227,'1000842-0','JOSE EDUARDO','BORDIGNON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (228,'1000016-0','ODILON','SORIA RECALDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (229,'1001001-7','MARIANA','ESQUIVEL ROMERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (230,'1000546-3','EDITH ELIZABETH','BRITOS DE SAMANIEGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (231,'1001107-2','VALERIO','DUARTE BENITEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (232,'1000640-0','OLGA MARIA','FLORES DE RIVAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (233,'1001023-8','TEODORO','VALLEJOS SANABRIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (234,'1000009-7','ROBERTO TRIGIDIO','GONZALEZ FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (235,'1001167-6','FRANCISCO JAVIER','MARTINEZ RUIZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (236,'1000633-8','ISABELIANO','DEL PUERTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (237,'1000094-1','EMILIO','AVALOS ESTIGARRIBIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (238,'1000730-0','MARIA CONCEPCION','ROMAN LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (239,'100158-2','MARIA ESTHER','AVILA GAMARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (240,'1000188-3','ANIBAL CALIXTO','ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (241,'1001551-5','FERMIN LUIS','AYALA MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (242,'1000796-2','SAUL','PAZOS KNOOP','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (243,'1000582-0','RAMON','ROJAS AGUILERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (244,'1000658-3','GILBERTO NICOLAS','MAIDANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (245,'1000908-6','JUAN MANUEL','QUINTANA SAMUDIO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (246,'1000613-3','GABINO','MORINIGO CABALLERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (247,'1000634-6','PEDRO','MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (248,'1000567-6','CLAUDIO IGNACIO','MARTINEZ ORTEGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (249,'1000949-3','FELIPA','AÑASCO VERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (250,'1000746-6','ILDA','BARUA GAMARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (251,'1000330-4','JOSE ELIAS','DE LEON QUINTANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (252,'1001622-8','BERNARDITA GRICELDA','NUÑEZ GIMENEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (253,'1000689-3','MARIA CLAUDIA','FRIGOLA LACOGNATA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (254,'1001300-8','JUAN DE ROSA','RAMOS ROMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (255,'1001125-0','MARGARETHA','PENNER DE DUECK','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (256,'1000060-7','CARLOS ADAN','BENITEZ CENTURION','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (257,'100026-8','BENITA','SANCHEZ PATIÑO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (258,'1000706-7','CARLOS MIGUEL','BIANCIOTTO ARZAMENDIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (259,'1000212-0','MIRTA ANTONIA','IRALA DE RODRIGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (260,'1000431-9','ALFREDO','PAMPLIEGA BAZAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (261,'1000701-6','NELSON LUIS','MARTINEZ SOSA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (262,'1000269-3','FERNANDO JAVIER','GROSELLE ARCE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (263,'1001422-5','MIGUEL ANGEL','TALAVERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (264,'1000427-0','ELIZARDO','ROJAS CABRERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (265,'1000977-9','ALFONSO RAMON','RECALDE GAMARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (266,'1000036-4','CANUTO','MACIEL BOGADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (267,'1001571-0','DOROTEO','SALINAS ARZAMENDIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (268,'1001046-7','NURIA CELESTE','MENDOZA MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (269,'1001448-9','JUANA','SUGASTTI SALVIONI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (270,'1000516-1','MAKOTO','JINZENJI SENYU','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (271,'1001029-7','CLAUDIO','MARTINEZ AQUINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (272,'1000647-8','WALDIMIR','ACUÑA FARIÑA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (273,'1000356-8','FRANCISCO RICARDO','PIRES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (274,'1000691-5','MIGUEL ANGEL','DOMINGUEZ CENTURION','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (275,'1000819-5','ERIC','PETERSON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (276,'1000029-1','ISABELINO CESAR','DIAZ SOTTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (277,'1000378-9','LEONARDO LUIS','GONZALEZ GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (278,'1001170-6','JUANA CAROLINA','BUSTAMANTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (279,'1001131-5','FRANCISCO ANDRES','RODAS BARRO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (280,'1001203-6','NANCY RAMONA','GONZALEZ DUARTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (281,'1001340-7','EULALIA','GOMEZ DE TOLEDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (282,'1001244-3','MARCELO RAUL','PORTILLO ORTIZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (283,'1000031-3','FLORENTINA','VERON LUGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (284,'1001079-3','LIGIA LIBRADA','CENTURION VAZQUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (285,'1000695-8','FRANCISCA SERAFINA','ROJAS DE CACERES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (286,'1001177-3','LILIANA RAQUEL','GONZALEZ RIVELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (287,'1001197-8','LUIS ALBERTO','CORONEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (288,'100122-1','JOSE ARNULFO','GARCIA ZARATE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (289,'1000476-9','DOMINGA','AMARILLA ROMERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (290,'1000944-2','JOSE ASUNCION','LEDEZMA RIOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (291,'1000025-9','TAKASHI','MIZUMOTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (292,'1000387-8','ELIAS SAMUEL','LIMENZA RAMIREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (293,'1001055-6','PEDRO JUAN','PAVETTI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (294,'1000162-0','ELIANA BEATRIZ','MENDOZA AQUINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (295,'1000281-2','FRANCISCO JAVIER','ALMIRON FLORENTIN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (296,'1001008-4','MARTA AGUSTINA','NUÑEZ ARCE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (297,'1001591-4','ADAN ISABELINO','MOREIRA ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (298,'1001585-0','VICTOR ALFREDO','MARTINEZ CHAVES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (299,'1000756-3','FELIX OCTAVIO','IBARRA BAEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (300,'1001620-1','FAUSTO','MARTINEZ GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (301,'1000352-5','KAYOKO','SHIRAKAWA DE KONARI DE KONARI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (302,'1000099-2','MAGDALENA','CONTRERA ARRECHEA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (303,'1000311-8','GUILLERMINA','DELGADILLO DE VEGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (304,'1001491-8','MILVA JAZMIN','RAMIREZ ESQUIVEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (305,'1000305-3','LIDIA ESTHER','ESPINOLA GARAY','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (306,'100113-2','JUANA CLOTILDE','ROA NOGUERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (307,'1001127-7','RAUL TERMY','TROCHE VERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (308,'1000507-2','MARIA GLORIA','CASCO ACUÑA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (309,'1000411-4','SERGIO DANIEL','RAMIREZ CAMPUZANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (310,'1000576-5','MILCIADES DEL SOCORRO','CAÑIZA FLORES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (311,'1000163-8','GISELLA LORENA','MENDOZA AQUINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (312,'1000400-9','JORGE LEONARDO','SANCHEZ TORALES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (313,'1000686-9','ELIZABETH AMALIA','MENDOZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (314,'1001271-0','JUAN RAMON','VILLASBOA FRANCO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (315,'1000479-3','CATALINO FERNANDO','DUARTE ESQUIVEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (316,'1000153-0','ESTEBAN','MONTANIA PEREIRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (317,'1000758-0','CATALINA ESTHER','VELAZQUEZ RIVEROS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (318,'1000199-9','OSVALDO RUBEN','PERALTA HEISECKE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (319,'1001041-6','LUIS RAMON','CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (320,'1000459-9','ENRIQUE JOSE','ARRUA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (321,'1001006-8','GISELA MELODIA','WOTTRICH CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (322,'1001123-4','RALF THOMAS','WALDE LOEWEN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (323,'1000127-1','EDITH BLANCA','PERALTA LEZME','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (324,'1001486-1','MARIA BENITA','ORTEGA MERELES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (325,'1001403-9','CARLOS ALBERTO','AGUERO LEON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (326,'1001322-9','FELIPE','AGUILERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (327,'1000152-2','MAMLIO ERVIN','BOBADILLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (328,'1001180-3','ROSSANA REINILDA','GAMARRA ESPINOLA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (329,'1000034-8','MIGUEL ANGEL','THOMPSON RECALDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (330,'1001570-1','MERCEDES','CASTEL MEDINA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (331,'1000556-0','FLORIA ROSA','CAÑIZA DE MORINIGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (332,'1000971-0','GLADYS','VELAZQUEZ PAREDES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (333,'1001069-6','BALBINO','SANTACRUZ ASCONA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (334,'1000404-1','CONCEPCION LUCIA','GAVILAN DE BADAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (335,'1000445-9','OSVALDO JAVIER','MONTANIA AVALOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (336,'1000878-0','MYRIAN BEATRIZ','AVEIRO CANTERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (337,'1000056-9','MARIA GLORIA','MOLAS DE PEREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (338,'1000355-0','ODILO','MARTINEZ ALFONZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (339,'1000148-4','HECTOR ANIBAL','SERVIAN ROTELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (340,'1000687-7','ENRIQUE FAUSTO','BACCHETTA CHIRIANI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (341,'1000980-9','GLADYS LUISA','BRITOS CAÑETE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (342,'1001173-0','NANCY MAXIMA','FIGUEREDO RODAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (343,'1000628-1','WILMA ANTONIA','FERNANDEZ ESCOBAR','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (344,'1001588-4','HIGINIA GRACIELA','RIVAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (345,'1001532-9','LOURDES ISABEL','ROJAS ROJAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (346,'1001581-7','ESTELA CELESTE','LURASCHI DE PEREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (347,'1000793-8','STELLA MARIS','GRACIA PLATE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (348,'1001497-7','MARIO JUAN','ARANDA FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (349,'1001377-6','WILFRIDO RAMON','GIMENEZ MEZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (350,'1000253-7','ANGEL GERVACIO','ARCE ESCURRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (351,'1000042-9','GERARDO FERMIN','BARBOZA GODOY','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (352,'1000109-3','FLORIANO','GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (353,'1000557-9','MARIA RAQUEL','FERNANDEZ VILLANUEVA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (354,'1000659-1','RAMON IDILIO','DELGADO FIGUEREDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (355,'1001574-4','WILLIAN ALFONSO','MARQUEZ ORTELLADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (356,'1000477-7','ATILIO GERARDO','AYALA MOLINAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (357,'1000533-1','PABLO','ARMOA CACERES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (358,'1000419-0','BENITA DOLORES','FUNES MEDINA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (359,'1000242-1','MARIA STELLA','BENITEZ OVIEDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (360,'1000069-0','MARIA AUXILIADORA','FERREIRA ALEMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (361,'1001342-3','GILBERTO','COLMAN SALINAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (362,'1000401-7','VALENTIN','BALBUENA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (363,'100107-8','LINO ANDRES','NUÑEZ OVIEDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (364,'1001306-7','RUBEN ORLANDO','PAREDES JARA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (365,'1000624-9','AURELIANA','FRANCO DE ORUE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (366,'1000196-4','GLORIA BEATRIZ','SOSA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (367,'1000102-6','LUISA MARLENE LIBRADA','DUARTE SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (368,'1000420-3','ELVA','TROCHE FERNANDEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (369,'1000750-4','PEDRO RUBEN','BENITEZ ZEBALLOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (370,'1000332-0','MAURO ROBERTO','GAUTO GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (371,'1001503-5','SERGIO ANTONIO','FLEITAS PAREDES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (372,'1000618-4','MIGUEL ANGEL','SAMANIEGO ORUE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (373,'1000905-1','ARIEL','VILLALBA SALVIONI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (374,'1001100-5','YGNACIA BEATRIZ','GIMENEZ ARANDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (375,'1000187-5','ANGELA URZULINA','VERA ADORNO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (376,'1000186-7','MERCEDES NOEMI','CABAÑAS DE BAZAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (377,'1000676-1','JORGE','WITT KIELO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (378,'1001161-7','MARY ISABEL','ACOSTA DE SOTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (379,'1001339-3','MIGUEL ANGEL','LARGOSTA AYALA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (380,'1000366-5','BERNARDA','LEIVA ARRUA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (381,'1000478-5','SATURNINA','MIRANDA NUÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (382,'1000007-0','ALFREDO','ROMERO GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (383,'1000290-1','DAMIAN BASILIO','BENITEZ GUZMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (384,'1000870-5','FRANCISCO','AMARILLA CAJE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (385,'1000612-5','CLARA BEATRIZ','ACOSTA ARANDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (386,'1001619-8','WALTER','MORINIGO MALDONADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (387,'1001443-8','CLAUDIA MARIA MARTINA','FRANCO ORTELLADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (388,'1001017-3','LADISLAO ANTONIO','ARCE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (389,'1000249-9','TOMASA','ÑAMANDU DE QUINTANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (390,'1000055-0','LUIS FERNANDO','ACUÑA FRETES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (391,'1000860-8','ANDRES LIBORIO','ARCE RODA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (392,'1000103-4','LIDIA DE JESUS','MIRANDA DE OROSCO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (393,'1000475-0','NANCY DEL CARMEN','JARA DE PEREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (394,'1001318-0','MARIA CRISTINA','RODRIGUEZ DE CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (395,'100088-8','BERNARDINA','MENDOZA GAMARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (396,'1001293-1','JUAN MARCELO','AQUINO VILLALBA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (397,'1001453-5','LIZ MARIA','OJEDA NUÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (398,'1000724-5','JUAN ANGEL','JARA GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (399,'1001229-0','LEONIDA','FRANCO GARAY','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (400,'1001374-1','FRANCISCO','PEREZ TORRES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (401,'1000769-5','GLORIA DIANA','ALDERETE ARIAS DE OCAMPOS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (402,'1000890-0','LUCINA','FERNANDEZ DE GAUTO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (403,'1000532-3','GEORGIA','GALEANO OJEDA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (404,'1000541-2','EMIGDIO','RUIZ ROA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (405,'1001193-5','MARIA CONCEPCION','MEDINA GAMARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (406,'1000454-8','DANIEL HUMBERTO','GOMEZ SALINAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (407,'1001283-4','JOSE GIL','SAMANIEGO MELGAREJO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (408,'1001005-0','CRISTINA ANDREA','FLORENTIN DE AQUINO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (409,'1001601-5','GRACIELA DEJESUS','CARVALLO DE NUÑEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (410,'1000602-8','JOEL ORLANDO','LLANO MONTIEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (411,'1001261-3','ELBA SALVADORA','BRUN RODRIGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (412,'1001504-3','VICTORINA','PAREDES BAEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (413,'1001080-7','RAMON','RODRIGUEZ LLANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (414,'1000078-0','HELVIA VIRGINIA','VEGA SISA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (415,'1000867-5','NIMIA BEATRIZ','VALENZUELA ROMERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (416,'1000508-0','CANTALICIO','AVALOS FERREIRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (417,'1000886-1','NICASIA','RECALDE AMANTE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (418,'1000123-9','CARLOS DEMETRIO','MOLINAS DIAZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (419,'1000939-6','ALFREDO','LEGUIZAMON','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (420,'1001384-9','EDITH ROSALBA','TORRES MALDONADO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (421,'1000991-4','ALBERTO','SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (422,'1000374-6','CECILIA','CODAS THOMPSON LLANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (423,'1000554-4','OSCAR JUAN DE DIOS','CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (424,'1000995-7','JUAN DE LA CRUZ','BENITEZ RODRIGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (425,'1000397-5','MIGUEL ANGEL','BRITOS LLAMOSAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (426,'1001345-8','LIZ MARIA','FRANCO GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (427,'1000837-3','RUMILDA RAMONA','DOMINGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (428,'1000026-7','GRACIELA','AREVALO DE ALVARENGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (429,'1000284-7','RAQUEL ASUNCION','CARRILLO BENEGA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (430,'1000888-8','DELIA VILMA','GOMEZ HULSKAMP','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (431,'1000684-2','ALFREDO','YEGROS CORONEL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (432,'1000299-5','MARIA GLORIA','NUÑEZ FISCHER','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (433,'1000286-3','FERMINA','LEDESMA ALVAREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (434,'1000149-2','MARTA ELIZABETH','MEZA G.DE JACQUET','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (435,'1000072-0','CIRILO CANTALICIO','VARGAS MARTINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (436,'1001098-0','ROSA CONCEPCION','YAMBAY VELAZQUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (437,'1001097-1','JOSE DOMINGO','IBARROLA ALONZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (438,'1000589-7','HERIBERTO','FLORENTIN SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (439,'1000141-7','FELIX','GONZALEZ TORREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (440,'1000580-3','BEATRIZ LUISA','MOREL DE VARGAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (441,'1001528-0','DIOSNEL','NOGUERA RODRIGUEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (442,'1001506-0','JOSE','ROMERO COLMAN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (443,'1001621-0','ALBINO MARIO','RODRIGUEZ GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (444,'1000597-8','ADOLFO','SERVIN GOMEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (445,'1001536-1','HONORINA','FLEITAS DE CABALLERO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (446,'1001626-0','RUBEN DARIO','GONZALEZ CANTALUPPI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (447,'1000895-0','MARIA FLORENCIA','JARA RUIZ DIAZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (448,'1001470-5','CARLOS ANTONIO','BENITEZ JARA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (449,'1001336-9','ALCIDES','ESPINOLA VILLAGRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (450,'1000135-2','MARTINA','ASTORGA VERZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (451,'1001442-0','VICENTE ALFREDO','RECALDE FERREIRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (452,'1001479-9','HUGO RUBEN','GARCETE RAMOA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (453,'1001060-2','JUAN ANGEL','GALLARDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (454,'1000240-5','PATRICIA MARIA','RAMIREZ BRIZUELA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (455,'1000044-5','MARIA JULIA','DELGADO ROA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (456,'1001044-0','DIONICIO','DUARTE ACOSTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (457,'1000384-3','MARTA RAQUEL','NOBLIA GINEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (458,'1001603-1','ALFONSO','GONZALEZ ROJAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (459,'1001606-6','SIXTO','NOGUERA LUGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (460,'1000066-6','OSVALDO LUIS','BARRESI VILLALBA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (461,'1001577-9','REMIGIO','FIGUEREDO BRITEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (462,'1001007-6','JENNIFER MARILINA','WOTTRICH CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (463,'1000853-5','RAMON FEDERICO','AQUINO RIVAS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (464,'1001420-9','NIDIA GRACIELA','MEDINA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (465,'1001490-0','RAMON ANTONIO','IBARRA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (466,'1001350-4','EDUARDO','CENTURION VILLALBA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (467,'1001243-5','LUIS GILBERTO','RIVEROS','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (468,'1001194-3','JAIME PASTOR','LIUZZI OVANDO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (469,'1000086-0','ROGELIO CARLOS','ESPINOLA MONGES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (470,'1000938-8','JUAN DE LA CRUZ','MACHADO VERA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (471,'1001284-2','FRANCISCO','GIMENEZ QUINTANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (472,'1000548-0','ALBERTO','ZARATE GAYOSO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (473,'1001119-6','PABLINA','ESCOBAR DE OSORIO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (474,'1000637-0','FACUNDA','VIEDMA SAMANIEGO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (475,'1000744-0','BERNARDINO','BAREIRO LOPEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (476,'1001058-0','ALBERTO CONCEPCION','VIGO CHAVEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (477,'1001109-9','ROSENDO','OVELAR LEZME','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (478,'1000416-5','ELENA','BARRIO CARDOZO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (479,'1001018-1','JOSE ANTONIO','SANCHEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (480,'1001163-3','MIRNA BEATRIZ','MICHELETTO LEZCANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (481,'1001425-0','GISELA ELIZABETH','VERDEJO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (482,'1000117-4','ANGEL','INSFRAN CACERES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (483,'1001509-4','REINALDO DARIO','POLETTI TORRES','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (484,'1000856-0','ILSA CONCEPCION','ZARATE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (485,'1000815-2','PRIMO JOSE','TAMBORINI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (486,'1000578-1','JUAN FIDEL','ARANDA MEZA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (487,'1000934-5','LUIS ANTONIO MARIA','FERREIRA INSAURRALDE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (488,'1000924-8','FELIX ANTONIO','GUTIERREZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (489,'1000121-2','ARSENIO','ORTIZ MAIDANA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (490,'1000063-1','RUBEN GUSTAVO','ZACARIAS MONNIN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (491,'1001498-5','GUILLERMO','CUBILLA CAÑETE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (492,'1001227-3','HERMINIO','GONZALEZ','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (493,'1001013-0','ESTELA CONCEPCION','JACQUET BERTOLINI','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (494,'1000198-0','OILDA GENOVEVA','IRIGOYEN','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (495,'1001298-2','CLARO RAMON','MENDIETA PERALTA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (496,'1000456-4','DORILA BONIFACIA','ARELLANO ESTIGARRIBIA','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (497,'100082-9','CLARA ELVA','ARZA PFANNL','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (498,'1000382-7','MARIA ESTER','ESCOBAR ARCE','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (499,'1001624-4','ANGELINA','RODRIGUEZ GALEANO','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (501,'1000004-6','Insert to api',' Insert Insert','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (502,'1000004-6','Insert to api',' Insert Insert','');
insert  into `clientesapi`(`idcli`,`ruccli`,`nomcli`,`apecli`,`telcli`) values (504,'1000004-6','Edit to api',' Edit ','');

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
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (60,1,4,'2023-10-04','2023-11-01','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,17,1,500000,7);
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
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (80,1,3,'2023-10-09','2023-10-30','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (81,1,4,'2023-10-09','2023-11-06','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (82,1,5,'2023-10-09','2023-11-13','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (83,1,6,'2023-10-09','2023-11-20','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (84,1,7,'2023-10-09','2023-11-27','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,1,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (85,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (86,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (87,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',96000.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (88,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (89,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (90,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (91,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,3,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (92,1,1,'2023-09-23','2023-09-30','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',176144.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (93,1,2,'2023-09-23','2023-10-07','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',162400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (94,1,3,'2023-09-23','2023-10-14','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',150400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (95,1,4,'2023-09-23','2023-10-21','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',138400.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (96,1,5,'2023-09-23','2023-10-28','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',130000.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (97,1,6,'2023-09-23','2023-11-04','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',130000.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (98,1,7,'2023-09-23','2023-11-11','SEM',130000.00,'FIJ',12000.00,0.00,'CAN','PEN',130000.00,5,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (99,2,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (100,2,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (101,2,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (102,2,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (103,2,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (104,2,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (105,2,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,5,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (113,1,1,'2023-10-16','2023-10-23','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',99000.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (114,1,2,'2023-10-16','2023-10-30','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (115,1,3,'2023-10-16','2023-11-06','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (116,1,4,'2023-10-16','2023-11-13','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (117,1,5,'2023-10-16','2023-11-20','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (118,1,6,'2023-10-16','2023-11-27','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (119,1,7,'2023-10-16','2023-12-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,19,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (120,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (121,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (122,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (123,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (124,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (125,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (126,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,6,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (127,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (128,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (129,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (130,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (131,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (132,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (133,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,7,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (134,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,4,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (135,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',105000.00,4,1,500000,7);
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
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (176,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (177,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (178,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (179,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (180,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (181,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (182,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,12,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (183,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',112000.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (184,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',102000.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (185,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',95000.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (186,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (187,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (188,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (189,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,13,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (190,1,1,'2023-10-28','2023-11-04','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (191,1,2,'2023-10-28','2023-11-11','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (192,1,3,'2023-10-28','2023-11-18','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (193,1,4,'2023-10-28','2023-11-25','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (194,1,5,'2023-10-28','2023-12-02','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (195,1,6,'2023-10-28','2023-12-09','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (196,1,7,'2023-10-28','2023-12-16','SEM',40000.00,'FIJ',4000.00,0.00,'PEN','PEN',0.00,22,1,200000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (197,1,1,'2023-09-18','2023-09-25','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',87600.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (198,1,2,'2023-09-18','2023-10-02','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',81600.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (199,1,3,'2023-09-18','2023-10-09','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',75600.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (200,1,4,'2023-09-18','2023-10-16','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',69600.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (201,1,5,'2023-09-18','2023-10-23','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',63600.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (202,1,6,'2023-09-18','2023-10-30','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',60000.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (203,1,7,'2023-09-18','2023-11-06','SEM',60000.00,'FIJ',6000.00,0.00,'CAN','PEN',60000.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (204,1,1,'2023-10-21','2023-10-28','SEM',190000.00,'FIJ',20000.00,0.00,'CAN','PEN',190000.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (205,1,2,'2023-10-21','2023-11-04','SEM',190000.00,'FIJ',20000.00,0.00,'CAN','PEN',190000.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (206,1,3,'2023-10-21','2023-11-11','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (207,1,4,'2023-10-21','2023-11-18','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (208,1,5,'2023-10-21','2023-11-25','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (209,1,6,'2023-10-21','2023-12-02','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (210,1,7,'2023-10-21','2023-12-09','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,28,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (211,1,1,'2023-10-28','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (212,1,2,'2023-10-28','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (213,1,3,'2023-10-28','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (214,1,4,'2023-10-28','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (215,1,5,'2023-10-28','2023-12-02','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (216,1,6,'2023-10-28','2023-12-09','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (217,1,7,'2023-10-28','2023-12-16','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,33,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (218,1,1,'2023-09-30','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (219,1,2,'2023-09-30','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (220,1,3,'2023-09-30','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (221,1,4,'2023-09-30','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (222,1,5,'2023-09-30','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (223,1,6,'2023-09-30','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (224,1,7,'2023-09-30','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,26,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (225,1,1,'2023-09-30','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (226,1,2,'2023-09-30','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (227,1,3,'2023-09-30','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (228,1,4,'2023-09-30','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (229,1,5,'2023-09-30','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (230,1,6,'2023-09-30','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (231,1,7,'2023-09-30','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,35,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (232,2,1,'2023-09-30','2023-10-07','SEM',133000.00,'FIJ',12000.00,0.00,'CAN','PEN',133000.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (233,2,2,'2023-09-30','2023-10-14','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (234,2,3,'2023-09-30','2023-10-21','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (235,2,4,'2023-09-30','2023-10-28','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (236,2,5,'2023-09-30','2023-11-04','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (237,2,6,'2023-09-30','2023-11-11','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (238,2,7,'2023-09-30','2023-11-18','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,35,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (239,1,1,'2023-10-22','2023-10-29','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (240,1,2,'2023-10-22','2023-11-05','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (241,1,3,'2023-10-22','2023-11-12','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (242,1,4,'2023-10-22','2023-11-19','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (243,1,5,'2023-10-22','2023-11-26','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (244,1,6,'2023-10-22','2023-12-03','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (245,1,7,'2023-10-22','2023-12-10','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,42,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (246,1,1,'2023-09-09','2023-09-16','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',155000.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (247,1,2,'2023-09-09','2023-09-23','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',145000.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (248,1,3,'2023-09-09','2023-09-30','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',135000.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (249,1,4,'2023-09-09','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',125000.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (250,1,5,'2023-09-09','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',124000.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (251,1,6,'2023-09-09','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (252,1,7,'2023-09-09','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,41,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (253,1,1,'2023-09-23','2023-09-30','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',135000.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (254,1,2,'2023-09-23','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',125000.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (255,1,3,'2023-09-23','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (256,1,4,'2023-09-23','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (257,1,5,'2023-09-23','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (258,1,6,'2023-09-23','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (259,1,7,'2023-09-23','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,40,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (260,1,1,'2023-09-23','2023-09-30','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',135000.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (261,1,2,'2023-09-23','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',125000.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (262,1,3,'2023-09-23','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',115000.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (263,1,4,'2023-09-23','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',105000.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (264,1,5,'2023-09-23','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (265,1,6,'2023-09-23','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (266,1,7,'2023-09-23','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,39,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (267,1,1,'2023-09-30','2023-10-07','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',125000.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (268,1,2,'2023-09-30','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',115000.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (269,1,3,'2023-09-30','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'CAN','PEN',105000.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (270,1,4,'2023-09-30','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (271,1,5,'2023-09-30','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (272,1,6,'2023-09-30','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (273,1,7,'2023-09-30','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,30,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (274,1,1,'2023-10-07','2023-10-14','SEM',133000.00,'FIJ',12000.00,0.00,'CAN','PEN',157000.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (275,1,2,'2023-10-07','2023-10-21','SEM',133000.00,'FIJ',12000.00,0.00,'CAN','PEN',145000.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (276,1,3,'2023-10-07','2023-10-28','SEM',133000.00,'FIJ',12000.00,0.00,'CAN','PEN',143800.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (277,1,4,'2023-10-07','2023-11-04','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (278,1,5,'2023-10-07','2023-11-11','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (279,1,6,'2023-10-07','2023-11-18','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (280,1,7,'2023-10-07','2023-11-25','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,27,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (281,1,1,'2023-10-07','2023-10-14','SEM',133000.00,'FIJ',10000.00,0.00,'CAN','PEN',153000.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (282,1,2,'2023-10-07','2023-10-21','SEM',133000.00,'FIJ',10000.00,0.00,'CAN','PEN',152000.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (283,1,3,'2023-10-07','2023-10-28','SEM',133000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (284,1,4,'2023-10-07','2023-11-04','SEM',133000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (285,1,5,'2023-10-07','2023-11-11','SEM',133000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (286,1,6,'2023-10-07','2023-11-18','SEM',133000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (287,1,7,'2023-10-07','2023-11-25','SEM',133000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,25,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (288,1,1,'2023-10-07','2023-10-14','SEM',190000.00,'FIJ',20000.00,0.00,'CAN','PEN',230000.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (289,1,2,'2023-10-07','2023-10-21','SEM',190000.00,'FIJ',20000.00,0.00,'CAN','PEN',210000.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (290,1,3,'2023-10-07','2023-10-28','SEM',190000.00,'FIJ',20000.00,0.00,'CAN','PEN',208000.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (291,1,4,'2023-10-07','2023-11-04','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (292,1,5,'2023-10-07','2023-11-11','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (293,1,6,'2023-10-07','2023-11-18','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (294,1,7,'2023-10-07','2023-11-25','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,34,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (295,1,1,'2023-10-14','2023-10-21','SEM',152000.00,'FIJ',13000.00,0.00,'CAN','PEN',165000.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (296,1,2,'2023-10-14','2023-10-28','SEM',152000.00,'FIJ',13000.00,0.00,'CAN','PEN',163700.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (297,1,3,'2023-10-14','2023-11-04','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (298,1,4,'2023-10-14','2023-11-11','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (299,1,5,'2023-10-14','2023-11-18','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (300,1,6,'2023-10-14','2023-11-25','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (301,1,7,'2023-10-14','2023-12-02','SEM',152000.00,'FIJ',13000.00,0.00,'PEN','PEN',0.00,32,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (302,1,1,'2023-10-14','2023-10-21','SEM',133000.00,'FIJ',12000.00,0.00,'CAN','PEN',145000.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (303,1,2,'2023-10-14','2023-10-28','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (304,1,3,'2023-10-14','2023-11-04','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (305,1,4,'2023-10-14','2023-11-11','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (306,1,5,'2023-10-14','2023-11-18','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (307,1,6,'2023-10-14','2023-11-25','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (308,1,7,'2023-10-14','2023-12-02','SEM',133000.00,'FIJ',12000.00,0.00,'PEN','PEN',0.00,36,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (309,1,1,'2023-07-01','2023-08-01','MES',1000000.00,'FIJ',0.00,0.00,'CAN','PEN',1000000.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (310,1,2,'2023-07-01','2023-09-01','MES',1000000.00,'FIJ',0.00,0.00,'CAN','PEN',1000000.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (311,1,3,'2023-07-01','2023-10-01','MES',1000000.00,'FIJ',0.00,0.00,'CAN','PEN',1000000.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (312,1,4,'2023-07-01','2023-11-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (313,1,5,'2023-07-01','2023-12-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (314,1,6,'2023-07-01','2024-01-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (315,1,7,'2023-07-01','2024-02-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (316,1,8,'2023-07-01','2024-03-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (317,1,9,'2023-07-01','2024-04-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (318,1,10,'2023-07-01','2024-05-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (319,1,11,'2023-07-01','2024-06-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (320,1,12,'2023-07-01','2024-07-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (321,1,13,'2023-07-01','2024-08-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (322,1,14,'2023-07-01','2024-09-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (323,1,15,'2023-07-01','2024-10-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (324,1,16,'2023-07-01','2024-11-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (325,1,17,'2023-07-01','2024-12-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (326,1,18,'2023-07-01','2025-01-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (327,1,19,'2023-07-01','2025-02-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (328,1,20,'2023-07-01','2025-03-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (329,1,21,'2023-07-01','2025-04-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (330,1,22,'2023-07-01','2025-05-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (331,1,23,'2023-07-01','2025-06-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (332,1,24,'2023-07-01','2025-07-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (333,1,25,'2023-07-01','2025-08-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (334,1,26,'2023-07-01','2025-09-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (335,1,27,'2023-07-01','2025-10-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (336,1,28,'2023-07-01','2025-11-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (337,1,29,'2023-07-01','2025-12-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (338,1,30,'2023-07-01','2026-01-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (339,1,31,'2023-07-01','2026-02-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (340,1,32,'2023-07-01','2026-03-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (341,1,33,'2023-07-01','2026-04-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (342,1,34,'2023-07-01','2026-05-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (343,1,35,'2023-07-01','2026-06-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (344,1,36,'2023-07-01','2026-07-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (345,1,37,'2023-07-01','2026-08-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (346,1,38,'2023-07-01','2026-09-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (347,1,39,'2023-07-01','2026-10-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (348,1,40,'2023-07-01','2026-11-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (349,1,41,'2023-07-01','2026-12-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (350,1,42,'2023-07-01','2027-01-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (351,1,43,'2023-07-01','2027-02-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (352,1,44,'2023-07-01','2027-03-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (353,1,45,'2023-07-01','2027-04-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (354,1,46,'2023-07-01','2027-05-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (355,1,47,'2023-07-01','2027-06-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (356,1,48,'2023-07-01','2027-07-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (357,1,49,'2023-07-01','2027-08-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (358,1,50,'2023-07-01','2027-09-01','MES',1000000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,21,1,50000000,50);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (359,1,1,'2023-10-07','2023-10-14','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (360,1,2,'2023-10-07','2023-10-21','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (361,1,3,'2023-10-07','2023-10-28','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (362,1,4,'2023-10-07','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (363,1,5,'2023-10-07','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (364,1,6,'2023-10-07','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (365,1,7,'2023-10-07','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,10,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (366,1,1,'2023-10-21','2023-11-04','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (367,1,2,'2023-10-21','2023-11-18','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (368,1,3,'2023-10-21','2023-12-02','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (369,1,4,'2023-10-21','2023-12-16','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (370,1,5,'2023-10-21','2023-12-30','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (371,1,6,'2023-10-21','2024-01-13','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (372,1,7,'2023-10-21','2024-01-27','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (373,1,8,'2023-10-21','2024-02-10','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (374,1,9,'2023-10-21','2024-02-24','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (375,1,10,'2023-10-21','2024-03-09','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (376,1,11,'2023-10-21','2024-03-23','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (377,1,12,'2023-10-21','2024-04-06','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (378,1,13,'2023-10-21','2024-04-20','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (379,1,14,'2023-10-21','2024-05-04','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (380,1,15,'2023-10-21','2024-05-18','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (381,1,16,'2023-10-21','2024-06-01','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (382,1,17,'2023-10-21','2024-06-15','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (383,1,18,'2023-10-21','2024-06-29','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (384,1,19,'2023-10-21','2024-07-13','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (385,1,20,'2023-10-21','2024-07-27','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (386,1,21,'2023-10-21','2024-08-10','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (387,1,22,'2023-10-21','2024-08-24','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (388,1,23,'2023-10-21','2024-09-07','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (389,1,24,'2023-10-21','2024-09-21','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (390,1,25,'2023-10-21','2024-10-05','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (391,1,26,'2023-10-21','2024-10-19','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (392,1,27,'2023-10-21','2024-11-02','QUI',150000.00,'FIJ',0.00,0.00,'PEN','PEN',0.00,44,1,4000000,27);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (393,3,1,'2023-10-28','2023-11-04','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (394,3,2,'2023-10-28','2023-11-11','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (395,3,3,'2023-10-28','2023-11-18','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (396,3,4,'2023-10-28','2023-11-25','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (397,3,5,'2023-10-28','2023-12-02','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (398,3,6,'2023-10-28','2023-12-09','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (399,3,7,'2023-10-28','2023-12-16','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,5,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (400,1,1,'2023-10-29','2023-11-05','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (401,1,2,'2023-10-29','2023-11-12','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (402,1,3,'2023-10-29','2023-11-19','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (403,1,4,'2023-10-29','2023-11-26','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (404,1,5,'2023-10-29','2023-12-03','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (405,1,6,'2023-10-29','2023-12-10','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (406,1,7,'2023-10-29','2023-12-17','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,29,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (407,1,1,'2023-10-28','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (408,1,2,'2023-10-28','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (409,1,3,'2023-10-28','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (410,1,4,'2023-10-28','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (411,1,5,'2023-10-28','2023-12-02','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (412,1,6,'2023-10-28','2023-12-09','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (413,1,7,'2023-10-28','2023-12-16','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,52,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (414,1,1,'2023-10-28','2023-11-04','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (415,1,2,'2023-10-28','2023-11-11','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (416,1,3,'2023-10-28','2023-11-18','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (417,1,4,'2023-10-28','2023-11-25','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (418,1,5,'2023-10-28','2023-12-02','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (419,1,6,'2023-10-28','2023-12-09','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (420,1,7,'2023-10-28','2023-12-16','SEM',133000.00,'FIJ',14000.00,0.00,'PEN','PEN',0.00,53,1,700000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (421,1,1,'2023-10-28','2023-11-04','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (422,1,2,'2023-10-28','2023-11-11','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (423,1,3,'2023-10-28','2023-11-18','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (424,1,4,'2023-10-28','2023-11-25','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (425,1,5,'2023-10-28','2023-12-02','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (426,1,6,'2023-10-28','2023-12-09','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (427,1,7,'2023-10-28','2023-12-16','SEM',95000.00,'FIJ',10000.00,0.00,'PEN','PEN',0.00,51,1,500000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (428,1,1,'2023-09-23','2023-10-07','QUI',335000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,49,1,1000000,4);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (429,1,2,'2023-09-23','2023-10-21','QUI',335000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,49,1,1000000,4);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (430,1,3,'2023-09-23','2023-11-04','QUI',335000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,49,1,1000000,4);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (431,1,4,'2023-09-23','2023-11-18','QUI',335000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,49,1,1000000,4);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (432,1,1,'2023-09-23','2023-09-30','SEM',152000.00,'FIJ',16000.00,0.00,'CAN','PEN',217600.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (433,1,2,'2023-09-23','2023-10-07','SEM',152000.00,'FIJ',16000.00,0.00,'CAN','PEN',201600.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (434,1,3,'2023-09-23','2023-10-14','SEM',152000.00,'FIJ',16000.00,0.00,'CAN','PEN',185600.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (435,1,4,'2023-09-23','2023-10-21','SEM',152000.00,'FIJ',16000.00,0.00,'PEN','PEN',0.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (436,1,5,'2023-09-23','2023-10-28','SEM',152000.00,'FIJ',16000.00,0.00,'PEN','PEN',0.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (437,1,6,'2023-09-23','2023-11-04','SEM',152000.00,'FIJ',16000.00,0.00,'PEN','PEN',0.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (438,1,7,'2023-09-23','2023-11-11','SEM',152000.00,'FIJ',16000.00,0.00,'PEN','PEN',0.00,47,1,800000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (439,2,1,'2023-10-30','2023-11-06','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (440,2,2,'2023-10-30','2023-11-13','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (441,2,3,'2023-10-30','2023-11-20','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (442,2,4,'2023-10-30','2023-11-27','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (443,2,5,'2023-10-30','2023-12-04','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (444,2,6,'2023-10-30','2023-12-11','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (445,2,7,'2023-10-30','2023-12-18','SEM',60000.00,'FIJ',6000.00,0.00,'PEN','PEN',0.00,24,1,300000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (446,1,1,'2023-11-04','2023-11-11','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (447,1,2,'2023-11-04','2023-11-18','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (448,1,3,'2023-11-04','2023-11-25','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (449,1,4,'2023-11-04','2023-12-02','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (450,1,5,'2023-11-04','2023-12-09','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (451,1,6,'2023-11-04','2023-12-16','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);
insert  into `cuotas`(`idcuo`,`numpgr`,`numcuo`,`feccuo`,`fecven`,`tipven`,`moncuo`,`tipint`,`monint`,`porint`,`estcuo`,`estpgr`,`pagcuo`,`idcli`,`idusu`,`moncre`,`cancuo`) values (452,1,7,'2023-11-04','2023-12-23','SEM',190000.00,'FIJ',20000.00,0.00,'PEN','PEN',0.00,54,1,1000000,7);

/*Table structure for table `pagocuotas` */

DROP TABLE IF EXISTS `pagocuotas`;

CREATE TABLE `pagocuotas` (
  `idpag` int(11) NOT NULL AUTO_INCREMENT,
  `fecpag` date NOT NULL,
  `monefe` decimal(18,0) NOT NULL,
  `idcuo` int(11) NOT NULL,
  `idapc` int(11) NOT NULL,
  PRIMARY KEY (`idpag`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

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
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (39,'2023-10-26',112000,176,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (40,'2023-10-26',102000,177,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (41,'2023-10-26',112000,183,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (42,'2023-10-26',102000,184,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (43,'2023-10-27',87600,197,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (44,'2023-10-27',81600,198,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (45,'2023-10-27',75600,199,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (46,'2023-10-27',69600,200,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (47,'2023-10-27',63600,201,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (48,'2023-10-28',190000,204,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (49,'2023-10-28',155000,246,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (50,'2023-10-28',145000,247,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (51,'2023-10-28',135000,248,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (52,'2023-10-28',125000,249,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (53,'2023-10-28',135000,253,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (54,'2023-10-28',125000,254,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (55,'2023-10-28',135000,260,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (56,'2023-10-28',125000,261,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (57,'2023-10-28',115000,262,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (58,'2023-10-28',105000,263,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (59,'2023-10-28',125000,267,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (60,'2023-10-28',115000,268,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (61,'2023-10-28',105000,269,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (62,'2023-10-28',157000,274,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (63,'2023-10-28',145000,275,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (64,'2023-10-28',153000,281,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (65,'2023-10-28',230000,288,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (66,'2023-10-28',210000,289,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (67,'2023-10-28',165000,295,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (68,'2023-10-28',145000,302,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (69,'2023-10-28',1000000,309,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (70,'2023-10-28',1000000,310,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (71,'2023-10-28',130000,96,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (72,'2023-10-28',130000,97,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (73,'2023-10-28',130000,98,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (74,'2023-10-28',95000,101,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (75,'2023-10-28',95000,185,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (76,'2023-10-28',95000,178,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (77,'2023-10-29',96000,87,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (78,'2023-10-29',217600,432,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (79,'2023-10-29',201600,433,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (80,'2023-10-29',185600,434,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (81,'2023-10-30',60000,202,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (82,'2023-10-30',60000,203,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (83,'2023-10-30',95000,80,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (84,'2023-10-30',95000,114,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (85,'2023-10-31',1000000,311,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (86,'2023-11-01',105000,135,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (87,'2023-11-02',112000,128,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (88,'2023-11-02',95000,122,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (89,'2023-11-03',95000,60,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (90,'2023-11-03',133000,232,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (91,'2023-11-03',190000,205,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (92,'2023-11-03',124000,250,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (93,'2023-11-03',143800,276,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (94,'2023-11-03',152000,282,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (95,'2023-11-03',208000,290,3);
insert  into `pagocuotas`(`idpag`,`fecpag`,`monefe`,`idcuo`,`idapc`) values (96,'2023-11-03',163700,296,3);

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

/*Table structure for table `rucset` */

DROP TABLE IF EXISTS `rucset`;

CREATE TABLE `rucset` (
  `cedcli` varchar(750) DEFAULT NULL,
  `nomcli` varchar(750) DEFAULT NULL,
  `dvcli` varchar(750) DEFAULT NULL,
  `usecli` varchar(750) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `rucset` */

insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000004','MOLINA DE TROCHE, SANDRA ELIZABETH','6','MOTS763530|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000007','ROMERO GOMEZ, ALFREDO','0','ROGA652940D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000009','GONZALEZ FERNANDEZ, ROBERTO TRIGIDIO','7','GOFR651540U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000012','PEÑA INSAURRALDE, LELI GLADYS','7','PEIL632000O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000014','MAIDANA MENDEZ, BLANCA BEATRIZ','3','MAMB581280S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000016','SORIA RECALDE, ODILON','0','AOIC910321W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000018','TRINIDAD, SEBASTIAN','6','TISE651860P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000019','ARIAS PAREDES, AGUSTIN','4','AIPA661260Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000025','MIZUMOTO, TAKASHI','9','MITA662560Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000026','AREVALO DE ALVARENGA, GRACIELA','7','PEOF692793|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000028','CABRERA AMARILLA, MANUEL','3','CAAM631400D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000029','DIAZ SOTTO, ISABELINO CESAR','1','DISI661840W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000031','VERON LUGO, FLORENTINA','3','VELF591970A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000032','PATIÑO BOGADO, ZELSIA','1','PABZ422530Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000034','THOMPSON RECALDE, MIGUEL ANGEL','8','TORM6926009');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000036','MACIEL BOGADO, CANUTO','4','MABC640040E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000042','BARBOZA GODOY, GERARDO FERMIN','9','BAGG622680|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000044','DELGADO ROA, MARIA JULIA','5','DERM551030|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000047','DUARTE AMARAL, CRISTINA ELIZABETH','0','DUAC6626705');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000048','CRISTALDO DE AMARAL, JOSEFINA','8','CIJO483310O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000055','ACUÑA FRETES, LUIS FERNANDO','0','AUFL661940X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000056','MOLAS DE PEREZ, MARIA GLORIA','9','MOPM661550G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000058','ARROSIO FLOR, GUILLERMO GABRIEL','5','AOFG753580G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000060','BENITEZ CENTURION, CARLOS ADAN','7','BECC623200D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000061','GIMENEZ LEZCANO, CECILIO','5','GILC6214606');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000063','ZACARIAS MONNIN, RUBEN GUSTAVO','1','ZAMR653640V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000066','BARRESI VILLALBA, OSVALDO LUIS','6','FIGR560771G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000069','FERREIRA ALEMAN, MARIA AUXILIADORA','0','FEAM653370C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000072','VARGAS MARTINEZ, CIRILO CANTALICIO','0','VAMC550890I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000074','MARTINEZ YUBERO, AMPARO IRIS','7','MAYA7721009');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000077','ALVAREZ VERZA, ABEL JORGE','1','AAVA643160M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000078','VEGA SISA, HELVIA VIRGINIA','0','VESH442170N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000080','CASELLI AZCONA, ALBERTO EDGAR','1','CEAA512580I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000081','RODRIGUEZ SZOPA, CARMEN ADRIANA','0','ROSC670240H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000082','CHAMORRO CORTESI, GUSTAVO ADOLFO','8','CACG6627105');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000084','RAMIREZ CAMPUZANO, JOSE BLASIO','4','RACJ4224006');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000086','ESPINOLA MONGES, ROGELIO CARLOS','0','EIMR6600502');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000094','AVALOS ESTIGARRIBIA, EMILIO','1','AAEE652310A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000099','CONTRERA ARRECHEA, MAGDALENA','2','COAM632710R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000102','DUARTE SANCHEZ, LUISA MARLENE LIBRADA','6','DUSL662020N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000103','MIRANDA DE OROSCO, LIDIA DE JESUS','4','MIEL633600Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000109','GONZALEZ, FLORIANO','3','GOFL631250X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000114','BENITEZ ISNARDI, OSVALDO LUIS','0','BEIO6609003');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000117','INSFRAN CACERES, ANGEL','4','ZARG843021K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000119','MATTO MAIDANA, JUAN CARLOS','0','MAMJ673260X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000121','ORTIZ MAIDANA, ARSENIO','2','OIMA633220S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000122','SANCHEZ MONGES, EVELIA RAFAELA','0','SAME602980A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000123','MOLINAS DIAZ, CARLOS DEMETRIO','9','MODC661280U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000124','MARECOS FERNANDEZ, ANTONIO YAMIL','7','MAFA663190M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000125','GAYOSO MEZA, JUAN SIMON','5','GAMJ5602908');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000126','VERA LOPEZ, ZULMA DOLLY','3','VELZ643490H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000127','PERALTA LEZME, EDITH BLANCA','1','PELE582650S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000128','CUEVA BRITOS, SERGIO','0','CUBS6605405');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000131','MENDOZA VALDOVINOS, ALEJANDRO','0','MEVA630110X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000133','BRITEZ IRALA, ROSALBA','6','MACT680931|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000135','ASTORGA VERZA, MARTINA','2','AOVM660300B');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000141','GONZALEZ TORREZ, FELIX','7','GOTF620240Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000148','SERVIAN ROTELA, HECTOR ANIBAL','4','SERH6628808');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000149','MEZA G.DE JACQUET, MARTA ELIZABETH','2','MEGM642980D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000151','BARUA BORJAS, RUBEN','4','BABR5928901');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000152','BOBADILLA, MAMLIO ERVIN','2','BOMA652150Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000153','MONTANIA PEREIRA, ESTEBAN','0','CAMA8818411');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000155','MIERES SALOMON, LILIAN NOEMI','7','MISL721550A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000156','MIRANDA VDA  DE RUIZ, GABINA','5','MIRG590780J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000158','ALONSO JARA, OLEGARIO','1','AOJO6406709');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000162','MENDOZA AQUINO, ELIANA BEATRIZ','0','MEAE771940C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000163','MENDOZA AQUINO, GISELLA LORENA','8','MEAG732840J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000164','MENDOZA AQUINO, ADOLFO','6','MEAA7600805');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000166','SANCHEZ, PEDRO PASCUAL','2','SAPE632970W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000177','FLORES MENDOZA, SARA RAQUEL','8','FOMS6611903');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000180','BENITEZ, ROSALIA','8','BERO6124900');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000184','ALCARAZ GAVILAN, PABLO RAMON','0','AAGP660180Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000186','CABAÑAS DE BAZAN, MERCEDES NOEMI','7','CABM652680S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000187','VERA ADORNO, ANGELA URZULINA','5','VEAA6715200');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000188','ESCOBAR, ANIBAL CALIXTO','3','EOAN662880S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000191','VEGA DE VILLALBA, MATILDE BEATRIZ','3','VEVM640740B');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000196','SOSA, GLORIA BEATRIZ','4','SOGL650880Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000198','IRIGOYEN, OILDA GENOVEVA','0','GISH823411U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000199','PERALTA HEISECKE, OSVALDO RUBEN','9','PEHO6632105');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100020','FARANO VDA  DE VEGA, ROLANDA DOMINGA','9','FARO270200W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000204','AMARILLA TRINIDAD, CATALINO','9','AATC563300S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000212','IRALA DE RODRIGUEZ, MIRTA ANTONIA','0','IARM6616503');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000217','OJEDA, VALENTINA','0','OEVA6335107');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000225','PEREZ GUERREÑO, ALCIDES JAVIER','1','PEGA662930U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000227','BAEZ DE MARTINEZ, EMILSE ZULMIRA','8','AAPL8907617');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000240','RAMIREZ BRIZUELA, PATRICIA MARIA','5','RABP6700209');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000241','URUNAGA GONZALEZ, ZULMA ROCIO','3','UUGZ653230X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000242','BENITEZ OVIEDO, MARIA STELLA','1','PADA590311E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000249','ÑAMANDU DE QUINTANA, TOMASA','9','CAIO760991W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000253','ARCE ESCURRA, ANGEL GERVACIO','7','AEEA491290E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000257','JUDIS ESCOBAR, ANTOLIANA','0','JUEA660370F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000259','CABALLERO IRALA, BLANCA ROSA','6','CAIB663510U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100026','SANCHEZ PATIÑO, BENITA','8','SAPB2908107');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000269','GROSELLE ARCE, FERNANDO JAVIER','3','GOAF661510Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000275','VILLALBA, JULIO CESAR','8','VIJU661040Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000276','BELOTTO BENITEZ, DEMETRIO','6','BEBD633570C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000281','ALMIRON FLORENTIN, FRANCISCO JAVIER','2','AIFF632650C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000283','FRANCO, BLANCA GRACIELA','9','FABL6412309');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000284','CARRILLO BENEGA, RAQUEL ASUNCION','7','CABR652290U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000286','LEDESMA ALVAREZ, FERMINA','3','LEAF621710V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000290','BENITEZ GUZMAN, DAMIAN BASILIO','1','BEGD632710J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000295','OLMEDO PEREIRA, CESAR','2','OEPC651580M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000299','NUÑEZ FISCHER, MARIA GLORIA','5','RIMM6419539');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000305','ESPINOLA GARAY, LIDIA ESTHER','3','EIGL612880H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000311','DELGADILLO DE VEGA, GUILLERMINA','8','GAGA820361S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000314','REYES ROJAS, SILVIO AUGUSTO','2','RERS650470V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000330','DE LEON QUINTANA, JOSE ELIAS','4','LEQJ6219706');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000332','GAUTO GONZALEZ, MAURO ROBERTO','0','GAGM6623007');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000334','RIVAROLA GODOY, RICHARD ANDRES','7','RIGR7100208');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000352','SHIRAKAWA DE KONARI DE KONARI, KAYOKO','5','SIKA650200C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000355','MARTINEZ ALFONZO, ODILO','0','MAAO650030Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000356','PIRES, FRANCISCO RICARDO','8','PIFR651181T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000366','LEIVA ARRUA, BERNARDA','5','LEAB6233909');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000369','RAMIREZ JIMENEZ, OSCAR','0','RAJO652830N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000372','CODAS THOMPSON LLANO, FLORENCIA','0','COTO7318014');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000374','CODAS THOMPSON LLANO, CECILIA','6','COLC770630N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000378','GONZALEZ GOMEZ, LEONARDO LUIS','9','GOGL643110O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000381','SOERENSEN ESPINOLA, GUSTAVO ANDRES','9','IASM7216810');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000382','ESCOBAR ARCE, MARIA ESTER','7','EOAM6336105');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000384','NOBLIA GINEZ, MARTA RAQUEL','3','NOGM672360F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000387','LIMENZA RAMIREZ, ELIAS SAMUEL','8','LIRE640470A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000389','DAVALOS ARMOA, ROSA MARIA','4','DAAR6511804');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000391','BENITEZ BARRIOS, NESTOR GUSTAVO','6','BEBN681190W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000392','RODRIGUEZ GUERRERO, RAMON','4','ROGR611700S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000395','MARTINEZ, MARGARITA ELIZABETH','9','MAMA6324907');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000397','BRITOS LLAMOSAS, MIGUEL ANGEL','5','GAMC852881G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000400','SANCHEZ TORALES, JORGE LEONARDO','9','SATJ660180F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000401','BALBUENA, VALENTIN','7','BAVA272380C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000404','GAVILAN DE BADAN, CONCEPCION LUCIA','1','GABC623480C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000408','MOLINAS DIAZ, DELIA MARINA','4','MODD641010Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000410','MARECO DE GONZALEZ, JUANA ANTONIA','6','MALJ6124602');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000411','RAMIREZ CAMPUZANO, SERGIO DANIEL','4','RACS7527702');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000413','GUERRERO BRITOS, JOSE LUIS','0','VECN9408418');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000414','MELLONE FOSSATI, JORGE ALFREDO','9','MEFJ583540F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000416','BARRIO CARDOZO, ELENA','5','BACE602260Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000419','FUNES MEDINA, BENITA DOLORES','0','FUMB651270L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000420','TROCHE FERNANDEZ, ELVA','3','TOFE552610W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000427','ROJAS CABRERA, ELIZARDO','0','ROCE660310H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000431','PAMPLIEGA BAZAN, ALFREDO','9','GAJU5812427');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000444','AYALA GIMENEZ, WILLIAN','0','AAGW612820P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000445','MONTANIA AVALOS, OSVALDO JAVIER','9','MOAO641830U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000449','RUIZ DIAZ GOMEZ, MARCIAL','1','RUGM651540P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000452','SAMANIEGO SANCHEZ, LEONARDO FABIO','1','PIGI6623915');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000454','GOMEZ SALINAS, DANIEL HUMBERTO','8','GOSD680030Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000455','STARSENBAUM STUL, RONALD','6','SASR790290U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000456','ARELLANO ESTIGARRIBIA, DORILA BONIFACIA','4','AEED6711504');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000459','ARRUA, ENRIQUE JOSE','9','AUEN771280T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000460','RIVAROLA MARTENS, IRENEO','2','RIMI661400W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000468','VILLATE GALEANO, LIDIA ISABEL','8','VIGL651700D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000470','FLORES DE ESQUIVEL, BALBINA AURELIA','0','FOEB6233709');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000475','JARA DE PEREZ, NANCY DEL CARMEN','0','JAPN661990F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000476','AMARILLA ROMERO, DOMINGA','9','AARD6525908');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000477','AYALA MOLINAS, ATILIO GERARDO','7','AAMA752000F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000478','MIRANDA NUÑEZ, SATURNINA','5','MINS640980C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000479','DUARTE ESQUIVEL, CATALINO FERNANDO','3','DUEC651210E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000484','BENITEZ NUÑEZ, JULIO','0','BENJ601030Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000500','GILL CABAÑAS, SONIA ELIZABETH','5','GICS6612706');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000507','CASCO ACUÑA, MARIA GLORIA','2','CAAM652720F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000508','AVALOS FERREIRA, CANTALICIO','0','AAFC600820X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000515','OJEDA LEIVA, JUAN ESTEBAN','3','OELJ572720B');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000516','JINZENJI SENYU, MAKOTO','1','JISM673490U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000517','ALBORNO MORA, GUILLERMO','0','AOMG6705703');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000519','RAMOS GAONA, GUSTAVO ADOLFO','6','RAGG610780X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000520','ZORRILLA GAUTO, NESTOR ESTANISLAO','0','ZOGN630580V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000524','GONZALEZ PAREDES, CELEDONIO','2','GOPC600630K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000528','CABRERA, VICTOR CIPRIANO','5','CAVI650700D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000529','ROMAN ROMAN, CRISTOBAL','3','RORC6428604');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000532','GALEANO OJEDA, GEORGIA','3','GAOG643570P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000533','ARMOA CACERES, PABLO','1','AOCP600260W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000535','CANDIA CALONGA, HERIBERTO','8','CACH633660Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000541','RUIZ ROA, EMIGDIO','2','RURE6611101');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000546','BRITOS DE SAMANIEGO, EDITH ELIZABETH','3','BISE6432402');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000548','ZARATE GAYOSO, ALBERTO','0','ZAGA650850C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000552','MARTINEZ, ROMUALDO','8','MARO640670K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000554','CARDOZO, OSCAR JUAN DE DIOS','4','CAOS570820A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000555','FLORENTIN LUGO, NICANOR','2','FOLN580100D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000556','CAÑIZA DE MORINIGO, FLORIA ROSA','0','CAMF661200O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000557','FERNANDEZ VILLANUEVA, MARIA RAQUEL','9','FEVM671740Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000567','MARTINEZ ORTEGA, CLAUDIO IGNACIO','6','MAOC552250G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000571','GOMEZ, RAMON','4','GORA441520A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000576','CAÑIZA FLORES, MILCIADES DEL SOCORRO','5','CAFM623450N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000578','ARANDA MEZA, JUAN FIDEL','1','AAMJ631150M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000580','MOREL DE VARGAS, BEATRIZ LUISA','3','MORB6623806');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000582','ROJAS AGUILERA, RAMON','0','ROAR471870Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000589','FLORENTIN SANCHEZ, HERIBERTO','7','FOSH593450F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000597','SERVIN GOMEZ, ADOLFO','8','SEGA643140X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000602','LLANO MONTIEL, JOEL ORLANDO','8','LAMJ653250N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000610','CARTAMAN BARRETO, MARIO MELANIO','9','CABM662960H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000612','ACOSTA ARANDA, CLARA BEATRIZ','5','AOAC672810R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000613','MORINIGO CABALLERO, GABINO','3','MOCG570500P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000616','ALCARAZ, RUBEN DARIO','8','AARU6521406');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000618','SAMANIEGO ORUE, MIGUEL ANGEL','4','SAOM660810S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000620','VERZA, DOMINGO GUZMAN','6','GOCF663381S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000624','FRANCO DE ORUE, AURELIANA','9','GORA892222S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000628','FERNANDEZ ESCOBAR, WILMA ANTONIA','1','FEEW671000T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000629','OVIEDO NUÑEZ, ELADIO ODILIO','0','OINE652590M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000633','DEL PUERTO, ISABELIANO','8','PUIS2818409');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000634','MARTINEZ, PEDRO','6','MAPE472990K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000636','CENTURION CABRERA, FABIO RAMON','2','BOAT552791I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000637','VIEDMA SAMANIEGO, FACUNDA','0','VISF633320T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000640','FLORES DE RIVAS, OLGA MARIA','0','FOMO6000906');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000647','ACUÑA FARIÑA, WALDIMIR','8','AUFW6310004');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000648','PAREDES FERNANDEZ, GREGORIO','6','PAFG591640Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100065','GALEANO, CRISPINIANA RAMONA','9','GACR252990F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000655','FLEITAS ORTIZ, VISITACION','9','FEOV592790M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000658','MAIDANA, GILBERTO NICOLAS','3','VIAB6503416');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000659','DELGADO FIGUEREDO, RAMON IDILIO','1','DEFR430390D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000666','PATIÑO BRITOS, NOLAZCO ANIBAL','4','PABN500310L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000667','ACOSTA, GUILLERMINA','2','AOGU580410X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000676','WITT KIELO, JORGE','1','WIKJ720900Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000683','LOPEZ, ADESMAR','4','LOAD610640I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000684','YEGROS CORONEL, ALFREDO','2','YECA653520O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000686','MENDOZA, ELIZABETH AMALIA','9','MEEL751620|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000687','BACCHETTA CHIRIANI, ENRIQUE FAUSTO','7','BACE6719705');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000689','FRIGOLA LACOGNATA, MARIA CLAUDIA','3','FILM6620307');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000691','DOMINGUEZ CENTURION, MIGUEL ANGEL','5','DOCM641940I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000693','ACOSTA DE RECALDE, EDITH CARMEN','1','AORE660640D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000695','ROJAS DE CACERES, FRANCISCA SERAFINA','8','ROCF601150Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000696','GONZALEZ ALVAREZ, CARLOS ALBERTO','6','GOAC671310|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000700','FERNANDEZ VAZQUEZ, ANDRES','8','FEVA651850H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000701','MARTINEZ SOSA, NELSON LUIS','6','MASN631770|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000702','VERON PERALTA, ANGEL','4','VEPA6500204');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000704','OCAMPOS ALMIRON, MARTIN ANTONIO','0','OAAM653160Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000706','BIANCIOTTO ARZAMENDIA, CARLOS MIGUEL','7','BIAC6518906');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000711','ESQUIVEL DE SILVA, SINFORIANA GREGORIA','3','EUSS652400I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000712','ESPINOLA GONZALEZ, JOSE MARIA','1','EIGJ670700Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000724','JARA GONZALEZ, JUAN ANGEL','5','JAGJ662150R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000730','ROMAN LOPEZ, MARIA CONCEPCION','0','ROLM6336119');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000741','SOTOMAYOR CABRERA, ALBA NOEMI','5','SOCA603150I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000744','BAREIRO LOPEZ, BERNARDINO','0','BALB640940H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000746','BARUA GAMARRA, ILDA','6','BAGI563200P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000750','BENITEZ ZEBALLOS, PEDRO RUBEN','4','BEZP643310Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000752','CRISTALDO CURTIDO, OSCAR LUIS','0','CICO6617300');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000756','IBARRA BAEZ, FELIX OCTAVIO','3','IABF393250Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000758','VELAZQUEZ RIVEROS, CATALINA ESTHER','0','VERC591210H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000761','ACOSTA REYES, OSMAR DARIO','0','AORO671380O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000765','LOPEZ DE COGLIOLO, MARIA MERCEDE','2','LOCM6326805');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000769','ALDERETE ARIAS DE OCAMPOS, GLORIA DIANA','5','AEAG670850T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000771','ECHAURI WENDLING, MAURO FRANCISCO','7','EAWM642220X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000777','CHENA VALLEJOS, NANCY ANGELUZ','6','CEVN671520S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000793','GRACIA PLATE, STELLA MARIS','8','GAPS663410X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000796','PAZOS KNOOP, SAUL','2','PAKS691760H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000797','PAZOS KNOOP, MARIA JAZMIN','0','PAKM711470C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000805','ROTELA DE GARCETE, LADYS RAMONA','5','ROGL6614903');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000815','TAMBORINI, PRIMO JOSE','2','TAPR2424107');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000819','PETERSON, ERIC','5','PEER241880D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100082','ARZA PFANNL, CLARA ELVA','9','AAPC3109802');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000827','AYALA MOLINAS, CINTHYA ELIZABETH','6','AAMC771910Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000834','DOMANCHUK MALLORQUIN, CARMEN NOEMI','9','DOMC661530F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000837','DOMINGUEZ, RUMILDA RAMONA','3','DORU560310K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000839','BASSO, LUCIANA','0','BALU601840R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000842','BORDIGNON, JOSE EDUARDO','0','BOJO452060N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000843','CUOMO, FEDERICO','8','CUFE411050X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000847','EDWARDS DE GRACIA, GEORGINA','0','EAGG450980M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000848','SALOMAO, ISAAC JOSE','9','SAIS5023406');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000850','VEGA MARTINEZ, GLADYS GUILLERMINA','0','VEMG6829008');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000851','ALVES COELHO, ANTONIO TARCISIO','9','AECA4810909');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000853','AQUINO RIVAS, RAMON FEDERICO','5','AURR6627509');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000854','GONZALEZ ESPINOLA, EMIGDIO','3','GOEE602180W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000856','ZARATE, ILSA CONCEPCION','0','ZAIL572870W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000860','ARCE RODA, ANDRES LIBORIO','8','AERA6203503');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000865','NAVARRO, ROSALINO','9','GOMG643651E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000867','VALENZUELA ROMERO, NIMIA BEATRIZ','5','VARN632270C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000868','ARAUJO ACOSTA, GERVACIO','3','AAAG651710J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000870','AMARILLA CAJE, FRANCISCO','5','AACF660930U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000878','AVEIRO CANTERO, MYRIAN BEATRIZ','0','AECM6609503');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000879','BERNAL, SILVINA','9','BESI643190Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100088','MENDOZA GAMARRA, BERNARDINA','8','MEGB231440|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000883','MALDONADO, ISIDRO','7','MAIS631360K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000886','RECALDE AMANTE, NICASIA','1','REAN622850I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000888','GOMEZ HULSKAMP, DELIA VILMA','8','GOHD6524906');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000890','FERNANDEZ DE GAUTO, LUCINA','0','FEGL591730S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000893','CUELLAR VELAZTIQUI, CECILIA','4','CUVC620320Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000895','JARA RUIZ DIAZ, MARIA FLORENCIA','0','JARM5412005');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000904','MOLAS TORALES, SILVIA BEATRIZ','3','MOTS711360P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000905','VILLALBA SALVIONI, ARIEL','1','PACH822851K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000908','QUINTANA SAMUDIO, JUAN MANUEL','6','AAYE8927619');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000922','SILVERA BAEZ, CLINIO MANUEL','1','SIBC650870V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000924','GUTIERREZ, FELIX ANTONIO','8','GUFE590670L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000934','FERREIRA INSAURRALDE, LUIS ANTONIO MARIA','5','FEIL671280L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000938','MACHADO VERA, JUAN DE LA CRUZ','8','MAVJ581240Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000939','LEGUIZAMON, ALFREDO','6','LEAL6430806');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000942','ESTIGARRIBIA DE RIOS, MAURA VIDALICIA','6','EIRM4902909');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000943','SOSA DE DELGADO, ESTELA AGUSTINA','4','SODE6505908');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000944','LEDEZMA RIOS, JOSE ASUNCION','2','LERJ652280Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000948','BATE MEDINA, TOMAS VIDAL','5','BAMT663560|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000949','AÑASCO VERA, FELIPA','3','AAVF631020E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000954','COLMAN, EPIFANIA MARIA ELENA','0','COEP6619404');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000964','ACOSTA, FRANCISCO','7','AOFR4713202');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000970','DUARTE, MARIA MARGARITA','1','DUMA582040F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000971','VELAZQUEZ PAREDES, GLADYS','0','VEPG601760F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000977','RECALDE GAMARRA, ALFONSO RAMON','9','REGA6602601');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000980','BRITOS CAÑETE, GLADYS LUISA','9','BICG662690Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000991','SANCHEZ, ALBERTO','4','SAAL652480F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000992','BARUA, CARMEN','2','BACA6519809');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000993','CABALLERO, MARCIAL','0','CAMA661920U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1000995','BENITEZ RODRIGUEZ, JUAN DE LA CRUZ','7','BERJ611270T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001001','ESQUIVEL ROMERO, MARIANA','7','EURM632040O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001005','FLORENTIN DE AQUINO, CRISTINA ANDREA','0','FOAC660730|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001006','WOTTRICH CARDOZO, GISELA MELODIA','8','SABD811602N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001007','WOTTRICH CARDOZO, JENNIFER MARILINA','6','WOCJ751880N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001008','NUÑEZ ARCE, MARTA AGUSTINA','4','NUAM670630G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001010','ROTELA DE GARCETE, SOTERA','6','ROSO371130A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001013','JACQUET BERTOLINI, ESTELA CONCEPCION','0','JABE652390O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001017','ARCE, LADISLAO ANTONIO','3','AELA651790F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001018','SANCHEZ, JOSE ANTONIO','1','SAJO532920T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001023','VALLEJOS SANABRIA, TEODORO','8','VAST631190|');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001029','MARTINEZ AQUINO, CLAUDIO','7','MAAC5615102');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001035','CANDIA GOMEZ, OSCAR','1','CAGO660650A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001036','MERCADO ARANDA, MARIA ANGELICA','0','MEAM660270M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001041','CARDOZO, LUIS RAMON','6','CALU652700Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001044','DUARTE ACOSTA, DIONICIO','0','DUAD6318809');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001046','MENDOZA MARTINEZ, NURIA CELESTE','7','MEMN671560X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001052','BOGADO UGARTE, CRISTINO RAMON','1','BOUC6534002');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001055','PAVETTI, PEDRO JUAN','6','PAPE4718109');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001058','VIGO CHAVEZ, ALBERTO CONCEPCION','0','VICA660370K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001060','GALLARDO, JUAN ANGEL','2','GAJU651530D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001069','SANTACRUZ ASCONA, BALBINO','6','SAAB641411E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100107','NUÑEZ OVIEDO, LINO ANDRES','8','NUOL312670Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001079','CENTURION VAZQUEZ, LIGIA LIBRADA','3','CEVL6420204');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001080','RODRIGUEZ LLANO, RAMON','7','ROLR6602307');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001089','MANDELBURGER LOHRI, GUSTAVO','0','MALG650370D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001094','GALEANO MARTINEZ, LIZ CONCEPCION','7','GAML663420K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001097','IBARROLA ALONZO, JOSE DOMINGO','1','IAAJ660860Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001098','YAMBAY VELAZQUEZ, ROSA CONCEPCION','0','YAVR652300J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001100','GIMENEZ ARANDA, YGNACIA BEATRIZ','5','GIAY652130T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001104','ORTIZ ESCOBAR, JUAN','8','OIEJ651760V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001107','DUARTE BENITEZ, VALERIO','2','DUBV590280W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001109','OVELAR LEZME, ROSENDO','9','OELR653170M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001111','GONZALEZ DE ORREGO, GLADIS','0','GOGL641230O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001119','ESCOBAR DE OSORIO, PABLINA','6','EOOP661610F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001123','WALDE LOEWEN, RALF THOMAS','4','WALR760830X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001125','PENNER DE DUECK, MARGARETHA','0','PEDM3818802');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001127','TROCHE VERA, RAUL TERMY','7','TOVR670540D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100113','ROA NOGUERA, JUANA CLOTILDE','2','RONJ271480I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001130','LARRIEUR CHAVES, WALTER HUGO','7','LACW6326502');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001131','RODAS BARRO, FRANCISCO ANDRES','5','ROBF513350R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001134','ORTIZ, PABLO GILBERTO','0','OIPA641550D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001146','ACEVEDO ACOSTA, OVIDIO','3','AEAO6534702');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001148','ZARATE MIÑOS, VICTOR TOMAS','0','ZAMV600670Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001154','MAQUEDA ARANDA, RICARDO','4','MAAR5112806');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001159','DUARTE DE CASTILLO, MARCELINA','5','GARC820082K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001161','ACOSTA DE SOTO, MARY ISABEL','7','AOSM651601O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001162','VIVEROS BERTRAN, VICTOR GUILLERMO','5','VIBV663070Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001163','MICHELETTO LEZCANO, MIRNA BEATRIZ','3','MILM7521105');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001167','MARTINEZ RUIZ, FRANCISCO JAVIER','6','MARF6522204');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001170','BUSTAMANTE, JUANA CAROLINA','6','OIJU7813019');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001171','BERNAL DE FRUTOS, TERESA','4','BEFT662900H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001172','BURGOS ROA, PRUDENCIO','2','BURP661620V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001173','FIGUEREDO RODAS, NANCY MAXIMA','0','FIRN652750J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001174','MOREL ALFONSO, PURIFICACION','9','MOAP5603306');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001177','GONZALEZ RIVELA, LILIANA RAQUEL','3','GORL702900L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001178','GONZALEZ RIVELA, LUIS GUSTAVO','1','GORL761940F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001179','GONZALEZ RODRIGUEZ, CESAR EDUARDO','0','GORC723030S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001180','GAMARRA ESPINOLA, ROSSANA REINILDA','3','GAER7215901');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001189','CHAVEZ ANTOLA, PATRICIA RAQUEL','7','CAAP753530D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001193','MEDINA GAMARRA, MARIA CONCEPCION','5','MEGM642910X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001194','LIUZZI OVANDO, JAIME PASTOR','3','LIOJ6528605');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001196','MIRANDA PAVON, INOCENCIO','0','MIPI592100M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001197','CORONEL, LUIS ALBERTO','8','COLU6514304');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001198','SILGUERO RIOS, TERESITA','6','SIRT6528102');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001199','DAVALOS QUINTANA, SEBASTIAN','4','DAQS630210O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001203','GONZALEZ DUARTE, NANCY RAMONA','6','GODN633600O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001210','SILVERO IBAÑEZ, MILCIADES ANTONIO','9','SIIM6816200');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001213','SOSA LEZCANO, MARCELO','3','SOLM6726506');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100122','GARCIA ZARATE, JOSE ARNULFO','1','GAZJ2622807');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001225','RUIZ DIAZ DE BENITEZ, AGUEDA ELENA','7','RUAA630580W');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001227','GONZALEZ, HERMINIO','3','GOHE652760V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001229','FRANCO GARAY, LEONIDA','0','FAGL562090I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001238','GILL AGUIAR, GUSTAVO RODOLFO','9','GIAG671430F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001239','BERNAL OCAMPO, MARIA NATIVIDAD','7','BEOM6625201');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001243','RIVEROS, LUIS GILBERTO','5','SOMJ5406818');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001244','PORTILLO ORTIZ, MARCELO RAUL','3','POOM660510Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001249','PESOA QUINTANA, RUFINA ELIZABETH','4','PEQR670590C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001255','CORVALAN ESPINOLA, JUAN CARLOS','9','COEJ670810Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001260','AGÃœERO DE ALEGRE, JULIA ANTONIA','5','AEAJ663040V');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001261','BRUN RODRIGUEZ, ELBA SALVADORA','3','BURE642190N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001262','VELAZQUEZ RIVEROS, REINALDO TOMAS','1','VERR612350K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001271','VILLASBOA FRANCO, JUAN RAMON','0','VIFJ652460Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001274','BARRIENTOS VARGAS, DORILA PETRONA','5','BAVD651810F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001275','CABRERA MARECOS, MARCELINO','3','CAMM661620L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001276','ROMAN FLOR, PERLA ROSALINDA','1','ROFP653410S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001278','BENITEZ SALINAS, PEDRO RUBEN','8','BESP641340P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001280','VAZQUEZ BRITOS, IRENEO TOMAS','0','VABI622620O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001283','SAMANIEGO MELGAREJO, JOSE GIL','4','SAMJ5626208');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001284','GIMENEZ QUINTANA, FRANCISCO','2','GIQF662780S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001291','NEUFELD SALAZAR, DAVID','5','NESD741070U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001293','AQUINO VILLALBA, JUAN MARCELO','1','AUVJ780750Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001298','MENDIETA PERALTA, CLARO RAMON','2','MEPC662250R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001300','RAMOS ROMAN, JUAN DE ROSA','8','RARJ542430J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001306','PAREDES JARA, RUBEN ORLANDO','7','PAJR6403902');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001312','HASEITEL DE MARECO, LUCIA ELIZABETH','1','HAML631770A');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001316','CARDOZO DE FERNANDEZ, ILDA MARIA','4','CAFI6608202');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001318','RODRIGUEZ DE CARDOZO, MARIA CRISTINA','0','ROMA6409703');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001319','MAIDANA ARNOLD, JESUS MARIA','9','MAAJ632720F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001321','MOLINAS DE SILVA, ELDA ESTELA','0','MOSE6530204');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001322','AGUILERA, FELIPE','9','AUFE482370R');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001324','OSORIO GONZALEZ, JESUS DANIEL','5','OOGJ6200401');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001325','SOSA DE SANABRIA, MIRTHA ESTELA','3','SOSM652030D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001336','ESPINOLA VILLAGRA, ALCIDES','9','EIVA6530712');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001337','GARCETE VELAZQUEZ, MARIA GABRIELA','7','GAVM650980G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001338','CABRAL CANO, PEDRO NICOLAS','5','CACP6234906');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001339','LARGOSTA AYALA, MIGUEL ANGEL','3','LAAM652210D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001340','GOMEZ DE TOLEDO, EULALIA','7','GOTE6334608');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001342','COLMAN SALINAS, GILBERTO','3','COSG652340B');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001345','FRANCO GALEANO, LIZ MARIA','8','FAGL662160G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001346','BARRIOS BOGADO, PELAGIO','6','BABP651930G');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001350','CENTURION VILLALBA, EDUARDO','4','CEVE642870D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001358','ESCOBAR PACUA, JOSE CONCEPCION','0','EOPJ643430S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001359','KOHN ACHAR, CRISTINA MARGARITA','8','KOAC6620906');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001374','PEREZ TORRES, FRANCISCO','1','PETF660850L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001376','AUDIBERT LAHAYE, PABLO JOSE','8','AULP6630306');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001377','GIMENEZ MEZA, WILFRIDO RAMON','6','GIMW660840M');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001380','TREPOWSKI AGUERO, HUMBERTO CARLOS','6','TEAH682570E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001382','ETCHEVERRY MENDIETA, OSCAR GABRIEL','2','EEMO661010Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001384','TORRES MALDONADO, EDITH ROSALBA','9','TOME743490F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001390','LOPEZ CANO, IGNACIO VIDAL','3','LOCI650450F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001401','AMARILLA, EDUARDO TEOFILO','2','AAED410250L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001403','AGUERO LEON, CARLOS ALBERTO','9','AULC730680U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001406','NUÑEZ GILL, OSCAR CALIXTO','3','NUGO661050U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001412','RIVAS RUIZ DIAZ, CARLOS MANUEL','8','RIRC572040Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001418','CANDIA MEZA, RAMON','7','CAMR5833207');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001420','MEDINA, NIDIA GRACIELA','9','MENI6122209');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001422','TALAVERA, MIGUEL ANGEL','5','AOCK793381T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001425','VERDEJO, GISELA ELIZABETH','0','VEGI590190O');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001430','TORALES ESCOBAR, CONCEPCION','6','TOEC443430U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001434','HUERTA ETCHEVERRY, FRANCISCO SOLANO','9','HUEF6620602');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001435','BUONGERMINI MAIDANA, GLORIA ADRIANA','7','BUAG6610008');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001439','ALONSO ROTELA, MELANIO','0','AORM442960L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001442','RECALDE FERREIRA, VICENTE ALFREDO','0','REFV6420107');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001443','FRANCO ORTELLADO, CLAUDIA MARIA MARTINA','8','FAOC7014204');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001445','MENDOZA RAMOS, RAUL ISAAC','4','MERR661550N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001448','SUGASTTI SALVIONI, JUANA','9','SUSJ650390U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001451','PALACIOS DE ESPINOLA, DELIA VICTORINA','9','PAED6608305');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001453','OJEDA NUÑEZ, LIZ MARIA','5','OENL660890Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001455','OJEDA CABRERA, SEVERIANA','1','OECS622210L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001456','APODACA VERA, JOSE BENIGNO','0','AOVJ670680T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001463','ISHIBASHI FLORENTIN, EDUARDO MICHIO','2','IIFE6903104');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001465','ISHIBASHI FLORENTIN, ALBERTO TOMIO','9','IIFA7028407');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001470','BENITEZ JARA, CARLOS ANTONIO','5','BEJC6618702');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001474','VERGARA, ROSA JOSEFINA','8','VERO3603508');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001476','MENDOZA ORTEGA, SANIE MERCEDES','4','MEOS771780C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001479','GARCETE RAMOA, HUGO RUBEN','9','GARH641150N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001480','GREGOR PACHER, MARIA YOLANDA','2','DACM800991I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001483','ARANDA COUSIRAT, ELVIS JAVIER','7','AACE662240H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001486','ORTEGA MERELES, MARIA BENITA','1','OEMM660810N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001490','IBARRA, RAMON ANTONIO','0','IARA462840S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001491','RAMIREZ ESQUIVEL, MILVA JAZMIN','8','RAEM6901004');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001493','VALDEZ MORALES, JAVIER','4','VAMJ660060Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001494','GONZALEZ DEMOFONTE, JORGE ISABELINO','2','GODJ6619000');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001497','ARANDA FERNANDEZ, MARIO JUAN','7','GIMD8217511');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001498','CUBILLA CAÑETE, GUILLERMO','5','CUCG601260P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001503','FLEITAS PAREDES, SERGIO ANTONIO','5','FEPS690810N');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001504','PAREDES BAEZ, VICTORINA','3','PABV491750H');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001506','ROMERO COLMAN, JOSE','0','ROCJ400090F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001509','POLETTI TORRES, REINALDO DARIO','4','POTR682430S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001510','POLETTI TORRES, SANDRA ELIZABETH','8','POTS662010I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001518','LOUTEIRO ROLON, JUAN PABLO','3','LORJ671840I');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001521','DOMINGUEZ, JUANA','3','DOJU531640J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001524','ARGUELLO BARUA, ELVIA RAMONA','8','OIGV802492U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001528','NOGUERA RODRIGUEZ, DIOSNEL','0','NORD673310P');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001532','ROJAS ROJAS, LOURDES ISABEL','9','RORL6627501');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001536','FLEITAS DE CABALLERO, HONORINA','1','FECH622740D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001538','CACERES AGUILERA, ROBERT MARINO','8','CAAR662500C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001543','ARMOA DUARTE, VICTOR','4','EIAM691421F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001545','QUEVEDO ALLENDE, JOSE ASUNCION','0','QUAJ662280T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001551','AYALA MARTINEZ, FERMIN LUIS','5','AAMF673260D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001554','VARGAS, SILVINO','0','VASI6608808');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001556','SOSA HERRERA, JORGE MIGDONIO','6','SOHJ6335806');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001563','FIGUEREDO ZARZA, SERAFINA RAMONA','9','FIZS632860F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001568','CORONIL FIGUEREDO, GREGORIO','0','COFG6432200');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001570','CASTEL MEDINA, MERCEDES','1','CAMM642670D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001571','SALINAS ARZAMENDIA, DOROTEO','0','SAAD540370Y');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001574','MARQUEZ ORTELLADO, WILLIAN ALFONSO','4','MAOW651630L');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001577','FIGUEREDO BRITEZ, REMIGIO','9','NURE8615813');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('100158','AVILA GAMARRA, MARIA ESTHER','2','AIGM2922104');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001581','LURASCHI DE PEREZ, ESTELA CELESTE','7','LUPE670710X');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001582','LURASCHI MERINO, CARMEN OBDULIA','5','LUMC6807106');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001583','BENITEZ GALEANO, FELIX','3','BEGF6308303');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001585','MARTINEZ CHAVES, VICTOR ALFREDO','0','MACV6623105');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001588','RIVAS, HIGINIA GRACIELA','4','RIHI640110T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001591','MOREIRA ESCOBAR, ADAN ISABELINO','4','GOVF652801C');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001594','PEÑA LOPEZ, MARIA ELIZABETH','9','PELM661000E');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001598','DURE LOPEZ, DOMINGA','1','DULD662170S');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001601','CARVALLO DE NUÑEZ, GRACIELA DEJESUS','5','CANG651540Q');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001603','GONZALEZ ROJAS, ALFONSO','1','GORA621570T');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001605','GUERRERO GONZALEZ, MARIA CRISTINA','8','PEGV9104313');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001606','NOGUERA LUGO, SIXTO','6','MADR7101916');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001610','GRANCE LEZCANO, HECTOR ARSENIO','4','GALH653650D');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001611','ARGUELLO DE VALENZUELA, CONCEPCION','2','SUGC842432B');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001616','ZARACHO AMARILLA, ADRIANO','3','ZAAA540400Z');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001619','MORINIGO MALDONADO, WALTER','8','MOMW662140F');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001620','MARTINEZ GONZALEZ, FAUSTO','1','MAGF422870U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001621','RODRIGUEZ GALEANO, ALBINO MARIO','0','ROGA662550K');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001622','NUÑEZ GIMENEZ, BERNARDITA GRICELDA','8','NUGB5907207');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001624','RODRIGUEZ GALEANO, ANGELINA','4','ROGA5606108');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001625','GONZALEZ CANTALUPPI, JULIO CESAR','2','GOCJ661950U');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001626','GONZALEZ CANTALUPPI, RUBEN DARIO','0','GOCR671890J');
insert  into `rucset`(`cedcli`,`nomcli`,`dvcli`,`usecli`) values ('1001629','GALEANO, JULIO CESAR','5','GAJU630440U');

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

/*Table structure for table `tutorials` */

DROP TABLE IF EXISTS `tutorials`;

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `published` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `tutorials` */

insert  into `tutorials`(`id`,`title`,`description`,`published`) values (3,'Tutorialed','NodeJS','0');

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
insert  into `usuario`(`idusu`,`docusu`,`nomusu`,`logusu`,`clausu`,`nivusu`,`idsuc`) values (2,'0','Estela Vera','estela','02b646f87b71a0b8076efc48e31a79bc',2,1);

/* Procedure structure for procedure `anular_pagare` */

/*!50003 DROP PROCEDURE IF EXISTS  `anular_pagare` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `anular_pagare`(pnumpgr int, pidcli int)
BEGIN
	
	delete from cuotas where numpgr=pnumpgr and idcli=pidcli;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `cerrar_caja` */

/*!50003 DROP PROCEDURE IF EXISTS  `cerrar_caja` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `cerrar_caja`(idus int)
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_apertura`(idus int)
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_cliente`(pidusu Int, pnivusu int)
BEGIN
    if pnivusu=1 then
		SELECT idcli,ruccli,nomcli,apecli,telcli FROM clientes;
else
SELECT idcli,ruccli,nomcli,apecli,telcli FROM clientes where idusu=pidusu;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_clientexusu` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_clientexusu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_clientexusu`(idus int,nivus int)
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_cuotaspen`(idcl INT, fecpa date,pnumpgr int)
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_estadocuenta`(idus int,nivus int)
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
			
			
				ELSE moncuo-pagcuo END AS UNSIGNED) AS monpag,
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
			
			
				ELSE moncuo-pagcuo END AS UNSIGNED) AS monpag,
				(CASE WHEN estcuo='PEN' THEN 'Pendiente' WHEN estcuo='PAR' THEN 'Pago parcial' WHEN estcuo='CAN' THEN 'Pagado' ELSE 'Pendiente' END) AS estado
				 
	 
					
			FROM cuotas c
			JOIN clientes cl
			ON c.`idcli`=cl.`idcli`
			where cl.idusu=idus
			ORDER BY c.idcli,numpgr,numcuo;
			
    
    end if;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_morosos` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_morosos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_morosos`(idus int,nivus int)
BEGIN
    
    if nivus=1 then
    
    select *from(
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
			
			
				ELSE moncuo-pagcuo END AS UNSIGNED) AS monpag,
				(CASE WHEN estcuo='PEN' THEN 'Pendiente' WHEN estcuo='PAR' THEN 'Pago parcial' WHEN estcuo='CAN' THEN 'Pagado' ELSE 'Pendiente' END) AS estado
				 
	 
	 
	 	
			FROM cuotas c
			JOIN clientes cl
			ON c.`idcli`=cl.`idcli`
			ORDER BY c.idcli,numpgr,numcuo)m where dias_atraso > 0 and monpag > 0 ;
			
	
    elseif nivus=2 then
    
    select *from(
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
			
			
				ELSE moncuo-pagcuo END AS UNSIGNED) AS monpag,
				(CASE WHEN estcuo='PEN' THEN 'Pendiente' WHEN estcuo='PAR' THEN 'Pago parcial' WHEN estcuo='CAN' THEN 'Pagado' ELSE 'Pendiente' END) AS estado
				 
					
			FROM cuotas c
			JOIN clientes cl
			ON c.`idcli`=cl.`idcli`
			where cl.idusu=idus
			ORDER BY c.idcli,numpgr,numcuo)m where dias_atraso > 0 and monpag > 0 ;
			
    
    end if;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_pagares_anular` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_pagares_anular` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_pagares_anular`()
BEGIN
	
	SELECT
	c.idcli,
c.numpgr,
DATE_FORMAT(c.feccuo, '%d-%m-%Y') AS feccuo,
cl.`ruccli`,
CONCAT(nomcli,', ',apecli) AS razcli,
moncre
FROM cuotas c
JOIN clientes cl
ON c.`idcli`=cl.`idcli`
JOIN (
SELECT numpgr,COUNT(*) AS cancuo FROM cuotas WHERE estcuo = 'PEN' GROUP BY numpgr,idcli) p
ON c.`numpgr`=p.numpgr AND p.cancuo=c.`cancuo`
GROUP BY c.`numpgr`,c.`idcli`
ORDER BY numpgr;

		

	END */$$
DELIMITER ;

/* Procedure structure for procedure `lis_paracierre` */

/*!50003 DROP PROCEDURE IF EXISTS  `lis_paracierre` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_paracierre`(ope VARCHAR(3))
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `lis_retiro`(idus int)
BEGIN
        SELECT r.idret,r.fecret,r.monret,motret,IF(a.`estapc`=1,'Activo','Cerrado') AS estapc FROM retirocaja r JOIN apertura a ON r.`idapc`=a.`idapc` where a.idusu=idus ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `man_apertura` */

/*!50003 DROP PROCEDURE IF EXISTS  `man_apertura` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_apertura`(idap int,monin decimal(18,0),monap decimal(18,0), idus int,ope varchar(3))
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_cierre`(idus int)
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_cliente`(idcl int,ruccl varchar(50),nomcl varchar(200), apecl varchar(200), telcl varchar(100),idus int, ope varchar(3))
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_cuotas`(
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_pago`(idpa INT, fecpa DATE,monpa DECIMAL(18,0),idve INT,idus int,ope VARCHAR(3))
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_retiro`(idre INT, monre decimal(18,0),usuario varchar(100),motre varchar(250),idus int,ope VARCHAR(3))
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

/*!50003 CREATE DEFINER=`sdinfco_admin`@`%` PROCEDURE `man_user`(idus INT,docus VARCHAR(10),nomus VARCHAR(100),logus VARCHAR(100),claus VARCHAR(100),nivus INT,idsu INT,ope VARCHAR(3))
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
