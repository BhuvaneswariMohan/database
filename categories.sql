/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.35 : Database - bhuvaneshwari_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bhuvaneshwari_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bhuvaneshwari_db`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(25) NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`ID`,`NAME`,`IS_ACTIVE`) values (1,'JAVA',1),(2,'.NET',1),(3,'WEB TOOLS',1),(4,'General',1);

/*Table structure for table `certifications` */

DROP TABLE IF EXISTS `certifications`;

CREATE TABLE `certifications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `ISSUED_ON` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_CERTIFICATION_DETAILS_NAME` (`NAME`,`STUDENT_ID`),
  KEY `FK_CERTIFICATIONS_STUDENT_ID` (`STUDENT_ID`),
  CONSTRAINT `FK_CERTIFICATIONS_STUDENT_ID` FOREIGN KEY (`STUDENT_ID`) REFERENCES `revtek_students` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `certifications` */

insert  into `certifications`(`ID`,`STUDENT_ID`,`NAME`,`ISSUED_ON`) values (1,7,'Java','2017-02-01'),(2,2,'.Net','2017-01-26'),(3,8,'Angular JS','2017-02-06'),(4,6,'Node JS','2017-02-02'),(5,1,'Java','2017-01-19'),(6,4,'.Net','2017-01-16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
