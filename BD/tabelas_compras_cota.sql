/*
SQLyog - Free MySQL GUI v5.01
Host - 5.5.5-10.4.21-MariaDB : Database - mbus
*********************************************************************
Server version : 5.5.5-10.4.21-MariaDB
*/


create database if not exists `mbus`;

USE `mbus`;

/*Table structure for table `comprascotadoc` */

DROP TABLE IF EXISTS `comprascotadoc`;

CREATE TABLE `comprascotadoc` (
  `cotaDocID` int(10) NOT NULL AUTO_INCREMENT,
  `dataAbertura` date DEFAULT NULL,
  `dataFecham` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cotaDocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `comprascotaitens` */

DROP TABLE IF EXISTS `comprascotaitens`;

CREATE TABLE `comprascotaitens` (
  `cotaItensID` int(10) NOT NULL AUTO_INCREMENT,
  `cotaDocID` int(10) DEFAULT NULL,
  `descricaoMaterial` varchar(50) DEFAULT NULL,
  `quantidade` double(11,2) DEFAULT NULL,
  `observacao` longtext DEFAULT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cotaItensID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `comprascotaresposta` */

DROP TABLE IF EXISTS `comprascotaresposta`;

CREATE TABLE `comprascotaresposta` (
  `cotaRespostaID` int(10) NOT NULL AUTO_INCREMENT,
  `cotaDocID` int(10) DEFAULT NULL,
  `cotaItensID` int(10) DEFAULT NULL,
  `cadUnID` int(10) DEFAULT NULL,
  `valorUnitario` double(12,2) DEFAULT NULL,
  `condicaoEntrega` date DEFAULT NULL,
  `condicaoPagamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cotaRespostaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
