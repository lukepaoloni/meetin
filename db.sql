/*
SQLyog Community
MySQL - 10.1.31-MariaDB : Database - meetin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meetin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `meetin`;

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`continent`,`created_at`,`updated_at`) values 
(1,'Aruba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(2,'Afghanistan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(3,'Angola','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(4,'Anguilla','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(5,'Åland Islands','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(6,'Albania','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(7,'Andorra','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(8,'United Arab Emirates','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(9,'Argentina','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(10,'Armenia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(11,'American Samoa','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(12,'Antarctica','','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(13,'French Southern Territories','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(14,'Antigua and Barbuda','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(15,'Australia','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(16,'Austria','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(17,'Azerbaijan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(18,'Burundi','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(19,'Belgium','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(20,'Benin','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(21,'Bonaire, Sint Eustatius and Saba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(22,'Burkina Faso','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(23,'Bangladesh','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(24,'Bulgaria','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(25,'Bahrain','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(26,'Bahamas','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(27,'Bosnia and Herzegovina','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(28,'Saint Barthélemy','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(29,'Belarus','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(30,'Belize','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(31,'Bermuda','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(32,'Bolivia (Plurinational State of)','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(33,'Brazil','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(34,'Barbados','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(35,'Brunei Darussalam','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(36,'Bhutan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(37,'Bouvet Island','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(38,'Botswana','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(39,'Central African Republic','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(40,'Canada','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(41,'Cocos (Keeling) Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(42,'Switzerland','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(43,'Chile','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(44,'China','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(45,'Côte d\'Ivoire','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(46,'Cameroon','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(47,'Congo (Democratic Republic of the)','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(48,'Congo','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(49,'Cook Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(50,'Colombia','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(51,'Comoros','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(52,'Cabo Verde','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(53,'Costa Rica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(54,'Cuba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(55,'Curaçao','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(56,'Christmas Island','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(57,'Cayman Islands','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(58,'Cyprus','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(59,'Czechia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(60,'Germany','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(61,'Djibouti','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(62,'Dominica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(63,'Denmark','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(64,'Dominican Republic','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(65,'Algeria','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(66,'Ecuador','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(67,'Egypt','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(68,'Eritrea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(69,'Western Sahara','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(70,'Spain','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(71,'Estonia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(72,'Ethiopia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(73,'Finland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(74,'Fiji','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(75,'Falkland Islands (Malvinas)','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(76,'France','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(77,'Faroe Islands','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(78,'Micronesia (Federated States of)','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(79,'Gabon','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(80,'United Kingdom','Europe','2018-08-07 00:24:39','2018-08-07 00:30:15'),
(81,'Georgia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(82,'Guernsey','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(83,'Ghana','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(84,'Gibraltar','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(85,'Guinea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(86,'Guadeloupe','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(87,'Gambia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(88,'Guinea-Bissau','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(89,'Equatorial Guinea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(90,'Greece','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(91,'Grenada','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(92,'Greenland','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(93,'Guatemala','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(94,'French Guiana','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(95,'Guam','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(96,'Guyana','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(97,'Hong Kong','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(98,'Heard Island and McDonald Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(99,'Honduras','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(100,'Croatia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(101,'Haiti','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(102,'Hungary','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(103,'Indonesia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(104,'Isle of Man','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(105,'India','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(106,'British Indian Ocean Territory','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(107,'Ireland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(108,'Iran (Islamic Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(109,'Iraq','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(110,'Iceland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(111,'Israel','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(112,'Italy','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(113,'Jamaica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(114,'Jersey','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(115,'Jordan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(116,'Japan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(117,'Kazakhstan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(118,'Kenya','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(119,'Kyrgyzstan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(120,'Cambodia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(121,'Kiribati','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(122,'Saint Kitts and Nevis','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(123,'Korea (Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(124,'Kuwait','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(125,'Lao People\'s Democratic Republic','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(126,'Lebanon','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(127,'Liberia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(128,'Libya','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(129,'Saint Lucia','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(130,'Liechtenstein','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(131,'Sri Lanka','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(132,'Lesotho','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(133,'Lithuania','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(134,'Luxembourg','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(135,'Latvia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(136,'Macao','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(137,'Saint Martin (French part)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(138,'Morocco','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(139,'Monaco','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(140,'Moldova (Republic of)','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(141,'Madagascar','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(142,'Maldives','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(143,'Mexico','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(144,'Marshall Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(145,'Macedonia (the former Yugoslav Republic of)','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(146,'Mali','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(147,'Malta','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(148,'Myanmar','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(149,'Montenegro','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(150,'Mongolia','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(151,'Northern Mariana Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(152,'Mozambique','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(153,'Mauritania','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(154,'Montserrat','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(155,'Martinique','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(156,'Mauritius','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(157,'Malawi','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(158,'Malaysia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(159,'Mayotte','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(160,'Namibia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(161,'New Caledonia','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(162,'Niger','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(163,'Norfolk Island','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(164,'Nigeria','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(165,'Nicaragua','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(166,'Niue','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(167,'Netherlands','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(168,'Norway','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(169,'Nepal','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(170,'Nauru','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(171,'New Zealand','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(172,'Oman','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(173,'Pakistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(174,'Panama','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(175,'Pitcairn','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(176,'Peru','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(177,'Philippines','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(178,'Palau','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(179,'Papua New Guinea','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(180,'Poland','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(181,'Puerto Rico','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(182,'Korea (Democratic People\'s Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(183,'Portugal','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(184,'Paraguay','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(185,'Palestine, State of','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(186,'French Polynesia','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(187,'Qatar','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(188,'Réunion','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(189,'Romania','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(190,'Russian Federation','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(191,'Rwanda','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(192,'Saudi Arabia','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(193,'Sudan','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(194,'Senegal','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(195,'Singapore','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(196,'South Georgia and the South Sandwich Islands','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(197,'Saint Helena, Ascension and Tristan da Cunha','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(198,'Svalbard and Jan Mayen','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(199,'Solomon Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(200,'Sierra Leone','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(201,'El Salvador','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(202,'San Marino','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(203,'Somalia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(204,'Saint Pierre and Miquelon','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(205,'Serbia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(206,'South Sudan','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(207,'Sao Tome and Principe','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(208,'Suriname','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(209,'Slovakia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(210,'Slovenia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(211,'Sweden','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(212,'Eswatini','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(213,'Sint Maarten (Dutch part)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(214,'Seychelles','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(215,'Syrian Arab Republic','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(216,'Turks and Caicos Islands','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(217,'Chad','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(218,'Togo','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(219,'Thailand','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(220,'Tajikistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(221,'Tokelau','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(222,'Turkmenistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(223,'Timor-Leste','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(224,'Tonga','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(225,'Trinidad and Tobago','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(226,'Tunisia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(227,'Turkey','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(228,'Tuvalu','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(229,'Taiwan, Province of China','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(230,'Tanzania, United Republic of','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(231,'Uganda','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(232,'Ukraine','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(233,'United States Minor Outlying Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(234,'Uruguay','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(235,'United States of America','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(236,'Uzbekistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(237,'Holy See','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
(238,'Saint Vincent and the Grenadines','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(239,'Venezuela (Bolivarian Republic of)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(240,'Virgin Islands (British)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(241,'Virgin Islands (U.S.)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(242,'Viet Nam','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(243,'Vanuatu','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(244,'Wallis and Futuna','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(245,'Samoa','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(246,'Yemen','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(247,'South Africa','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(248,'Zambia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
(249,'Zimbabwe','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39');

/*Table structure for table `data_rows` */

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_rows` */

insert  into `data_rows`(`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) values 
(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
(2,1,'name','text','Name',1,1,1,1,1,1,'',2),
(3,1,'email','text','Email',1,1,1,1,1,1,'',3),
(4,1,'password','password','Password',1,0,0,1,1,0,'',4),
(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),
(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),
(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),
(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),
(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),
(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),
(12,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),
(13,2,'id','number','ID',1,0,0,0,0,0,'',1),
(14,2,'name','text','Name',1,1,1,1,1,1,'',2),
(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
(17,3,'id','number','ID',1,0,0,0,0,0,'',1),
(18,3,'name','text','Name',1,1,1,1,1,1,'',2),
(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
(22,1,'role_id','text','Role',1,1,1,1,1,1,'',9),
(23,4,'id','hidden','ID',1,0,0,0,0,0,NULL,1),
(24,4,'user_id','hidden','User ID',1,0,0,0,0,0,NULL,2),
(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),
(26,4,'address_1','text','Address 1',1,1,1,1,1,1,NULL,5),
(27,4,'address_2','text','Address 2',0,1,1,1,1,1,NULL,6),
(28,4,'city','text','City',1,1,1,1,1,1,NULL,7),
(29,4,'postcode','text','Postcode',1,1,1,1,1,1,NULL,8),
(30,4,'country_id','select_dropdown','Country',1,1,1,1,1,1,NULL,9),
(31,4,'latitude','hidden','Latitude',0,0,0,1,1,0,NULL,10),
(32,4,'longitude','hidden','Longitude',0,0,0,1,1,0,NULL,11),
(33,4,'overview','rich_text_box','Overview',1,0,0,1,1,1,NULL,12),
(34,4,'content','rich_text_box','Content',1,0,0,1,1,1,NULL,13),
(35,4,'meeting_capacity','number','Meeting Capacity',1,1,1,1,1,1,NULL,14),
(36,4,'no_meeting_rooms','number','No. Meeting Rooms',1,1,1,1,1,1,NULL,15),
(37,4,'catering_capacity','number','Catering Capacity',1,1,1,1,1,1,NULL,16),
(38,4,'no_bedrooms','number','No Bedrooms',1,1,1,1,1,1,NULL,17),
(39,4,'meeting_room_disabled_access','checkbox','Meeting Room Disabled Access',1,1,1,1,1,1,'{\"0\":\"No\",\"1\":\"Yes\",\"checked\":true,\"default\":\"0\"}',18),
(41,4,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,20),
(42,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,21),
(43,4,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,NULL,22),
(44,4,'venue_belongsto_user_relationship','relationship','User',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',23),
(45,4,'venue_belongsto_country_relationship','relationship','Country',0,1,1,1,1,1,'{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',24),
(46,5,'id','hidden','ID',1,1,1,0,0,0,NULL,1),
(47,5,'user_id','hidden','User ID',1,1,1,1,1,1,NULL,2),
(49,5,'rating','select_dropdown','Rating',1,1,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"0\",\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"5\":\"5\"}}',4),
(51,5,'title','text','Title',1,1,1,1,1,1,NULL,6),
(52,5,'review','rich_text_box','Review',1,1,1,1,1,1,NULL,7),
(53,5,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,8),
(54,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,9),
(55,5,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,NULL,10),
(56,5,'status','select_dropdown','Status',1,1,1,1,1,1,NULL,3),
(57,5,'value','select_dropdown','Value',1,1,1,1,1,1,'{\"default\":\"Budget\",\"options\":{\"Budget\":\"Budget\",\"Mid-range\":\"Mid-range\",\"Luxury\":\"Luxury\"}}',5),
(58,5,'review_belongsto_user_relationship','relationship','User',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),
(59,4,'status','select_dropdown','Status',1,1,1,1,1,1,NULL,3),
(60,5,'review_belongsto_venue_relationship','relationship','Venue',0,1,1,1,1,1,'{\"model\":\"App\\\\Venue\",\"table\":\"venues\",\"type\":\"belongsTo\",\"column\":\"venue_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',12),
(61,5,'venue_id','hidden','Venue',1,1,1,1,1,1,NULL,11),
(64,8,'id','text','Id',1,0,0,0,0,0,NULL,1),
(66,5,'review_belongsto_review_status_relationship','relationship','Status',0,1,1,1,1,1,'{\"model\":\"App\\\\ReviewStatus\",\"table\":\"review_statuses\",\"type\":\"belongsTo\",\"column\":\"status\",\"key\":\"id\",\"label\":\"status\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),
(67,4,'venue_belongsto_venue_status_relationship','relationship','Status',0,1,1,1,1,1,'{\"model\":\"App\\\\VenueStatus\",\"table\":\"venue_statuses\",\"type\":\"belongsTo\",\"column\":\"status\",\"key\":\"id\",\"label\":\"status\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',25),
(68,9,'id','text','Id',1,0,0,0,0,0,NULL,1),
(69,9,'feature','text','Feature',1,1,1,1,1,1,NULL,2),
(70,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,3),
(71,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
(72,4,'venue_belongstomany_feature_relationship','relationship','Features',0,1,1,1,1,1,'{\"model\":\"App\\\\Feature\",\"table\":\"features\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"feature\",\"pivot_table\":\"feature_venue\",\"pivot\":\"1\",\"taggable\":\"on\"}',26),
(73,8,'venue_feature_belongsto_venue_relationship','relationship','Venue',0,1,1,1,1,1,'{\"model\":\"App\\\\Venue\",\"table\":\"venues\",\"type\":\"belongsTo\",\"column\":\"venue_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
(74,8,'venue_id','select_dropdown','Venue',1,1,1,1,1,1,NULL,2),
(75,8,'feature_id','text','Feature',1,1,1,1,1,1,NULL,3),
(76,8,'venue_feature_belongsto_feature_relationship','relationship','Feature',0,1,1,1,1,1,'{\"model\":\"App\\\\Feature\",\"table\":\"features\",\"type\":\"belongsTo\",\"column\":\"feature_id\",\"key\":\"id\",\"label\":\"feature\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}',4);

/*Table structure for table `data_types` */

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_types` */

insert  into `data_types`(`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) values 
(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(4,'venues','venues','Venue','Venues',NULL,'App\\Venue',NULL,NULL,NULL,1,1,'{\"order_column\":\"id\",\"order_display_column\":\"id\"}','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(5,'reviews','reviews','Review','Reviews',NULL,'App\\Review',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\"}','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(8,'venue_features','venue-features','Venue Feature','Venue Features',NULL,'App\\VenueFeature',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(9,'features','features','Feature','Features',NULL,'App\\Feature',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-08-19 16:09:11','2018-08-19 16:09:11');

/*Table structure for table `feature_venue` */

DROP TABLE IF EXISTS `feature_venue`;

CREATE TABLE `feature_venue` (
  `venue_id` int(10) unsigned NOT NULL,
  `feature_id` int(10) unsigned NOT NULL,
  KEY `venues_venue_id_foreign` (`venue_id`),
  KEY `features_feature_id_foreign` (`feature_id`),
  CONSTRAINT `features_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `venues_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `feature_venue` */

insert  into `feature_venue`(`venue_id`,`feature_id`) values 
(1,1),
(1,2),
(1,4),
(2,1),
(2,2),
(2,4);

/*Table structure for table `features` */

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `features` */

insert  into `features`(`id`,`feature`,`created_at`,`updated_at`) values 
(1,'Free Internet','2018-08-19 15:52:16','2018-08-19 15:52:16'),
(2,'Free Parking','2018-08-19 15:52:31','2018-08-19 15:52:31'),
(3,'Breakfast Buffet','2018-08-19 15:52:42','2018-08-19 15:52:42'),
(4,'Non-Smoking Rooms','2018-08-19 15:52:53','2018-08-19 15:52:53'),
(5,'Restaurant','2018-08-19 15:53:05','2018-08-19 15:53:05');

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) values 
(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.dashboard',NULL),
(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.media.index',NULL),
(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.users.index',NULL),
(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.roles.index',NULL),
(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2018-08-19 10:13:47','2018-08-19 10:13:47',NULL,NULL),
(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.menus.index',NULL),
(7,1,'Database','','_self','voyager-data',NULL,5,11,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.database.index',NULL),
(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.compass.index',NULL),
(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.bread.index',NULL),
(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.settings.index',NULL),
(11,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2018-08-19 10:13:47','2018-08-19 10:13:47','voyager.hooks',NULL),
(12,2,'Venues','/venues','_self',NULL,'#000000',NULL,15,'2018-08-19 10:17:40','2018-08-19 10:17:40',NULL,''),
(13,2,'About','/about','_self',NULL,'#000000',NULL,16,'2018-08-19 10:18:02','2018-08-19 10:18:02',NULL,''),
(14,2,'How it works','/how-it-works','_self',NULL,'#000000',NULL,17,'2018-08-19 10:18:20','2018-08-19 10:18:20',NULL,''),
(15,2,'Testimonials','/testimonials','_self',NULL,'#000000',NULL,18,'2018-08-19 10:18:43','2018-08-19 10:18:43',NULL,''),
(16,1,'Venues','','_self',NULL,NULL,NULL,19,'2018-08-19 10:59:28','2018-08-19 10:59:28','voyager.venues.index',NULL),
(17,1,'Reviews','','_self',NULL,NULL,NULL,20,'2018-08-19 11:16:51','2018-08-19 11:16:51','voyager.reviews.index',NULL),
(19,1,'Features','','_self',NULL,NULL,NULL,21,'2018-08-19 16:09:12','2018-08-19 16:09:12','voyager.features.index',NULL);

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'admin','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(2,'main','2018-08-19 10:16:26','2018-08-19 10:16:26');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_01_01_000000_add_voyager_user_fields',1),
(4,'2016_01_01_000000_create_data_types_table',1),
(5,'2016_01_01_000000_create_pages_table',1),
(6,'2016_01_01_000000_create_posts_table',1),
(7,'2016_02_15_204651_create_categories_table',1),
(8,'2016_05_19_173453_create_menu_table',1),
(9,'2016_10_21_190000_create_roles_table',1),
(10,'2016_10_21_190000_create_settings_table',1),
(11,'2016_11_30_135954_create_permission_table',1),
(12,'2016_11_30_141208_create_permission_role_table',1),
(13,'2016_12_26_201236_data_types__add__server_side',1),
(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
(15,'2017_01_14_005015_create_translations_table',1),
(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
(17,'2017_03_06_000000_add_controller_to_data_types_table',1),
(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),
(19,'2017_04_21_000000_add_order_to_data_rows_table',1),
(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),
(21,'2017_08_05_000000_add_group_to_settings_table',1),
(22,'2017_11_26_013050_add_user_role_relationship',1),
(23,'2017_11_26_015000_create_user_roles_table',1),
(24,'2018_03_11_000000_add_user_settings',1),
(25,'2018_03_14_000000_add_details_to_data_types_table',1),
(26,'2018_03_16_000000_make_settings_value_nullable',1),
(27,'2018_06_04_184417_create_cache_table',1);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(43,1),
(44,1),
(45,1),
(46,1);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`key`,`table_name`,`created_at`,`updated_at`) values 
(1,'browse_admin',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(2,'browse_bread',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(3,'browse_database',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(4,'browse_media',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(5,'browse_compass',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(6,'browse_menus','menus','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(7,'read_menus','menus','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(8,'edit_menus','menus','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(9,'add_menus','menus','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(10,'delete_menus','menus','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(11,'browse_roles','roles','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(12,'read_roles','roles','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(13,'edit_roles','roles','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(14,'add_roles','roles','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(15,'delete_roles','roles','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(16,'browse_users','users','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(17,'read_users','users','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(18,'edit_users','users','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(19,'add_users','users','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(20,'delete_users','users','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(21,'browse_settings','settings','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(22,'read_settings','settings','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(23,'edit_settings','settings','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(24,'add_settings','settings','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(25,'delete_settings','settings','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(26,'browse_hooks',NULL,'2018-08-19 10:13:47','2018-08-19 10:13:47'),
(27,'browse_venues','venues','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(28,'read_venues','venues','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(29,'edit_venues','venues','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(30,'add_venues','venues','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(31,'delete_venues','venues','2018-08-19 10:59:28','2018-08-19 10:59:28'),
(32,'browse_reviews','reviews','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(33,'read_reviews','reviews','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(34,'edit_reviews','reviews','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(35,'add_reviews','reviews','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(36,'delete_reviews','reviews','2018-08-19 11:16:51','2018-08-19 11:16:51'),
(37,'browse_venue_features','venue_features','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(38,'read_venue_features','venue_features','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(39,'edit_venue_features','venue_features','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(40,'add_venue_features','venue_features','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(41,'delete_venue_features','venue_features','2018-08-19 15:50:10','2018-08-19 15:50:10'),
(42,'browse_features','features','2018-08-19 16:09:11','2018-08-19 16:09:11'),
(43,'read_features','features','2018-08-19 16:09:12','2018-08-19 16:09:12'),
(44,'edit_features','features','2018-08-19 16:09:12','2018-08-19 16:09:12'),
(45,'add_features','features','2018-08-19 16:09:12','2018-08-19 16:09:12'),
(46,'delete_features','features','2018-08-19 16:09:12','2018-08-19 16:09:12');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `posts` */

/*Table structure for table `review_statuses` */

DROP TABLE IF EXISTS `review_statuses`;

CREATE TABLE `review_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `review_statuses` */

insert  into `review_statuses`(`id`,`status`) values 
(1,'N/A'),
(2,'Pending Review'),
(3,'Approved');

/*Table structure for table `review_uploads` */

DROP TABLE IF EXISTS `review_uploads`;

CREATE TABLE `review_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(10) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `review_uploads` */

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `venue_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`user_id`,`status`,`rating`,`value`,`title`,`review`,`created_at`,`updated_at`,`deleted_at`,`venue_id`) values 
(1,1,'approved','5','luxury','Voluptatem Nostrud voluptas pariatur','Voluptatem Nostrud voluptas pariatur Consequuntur vero Nam, Qui amet earum nisi pariatur Architecto ut necessitatibus debitis voluptas delectus molestiae. Qui amet earum nisi pariatur Architecto ut necessitatibus debitis voluptas delectus molestiae.','2018-08-01 18:09:04','2018-08-19 12:53:52',NULL,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`) values 
(1,'admin','Administrator','2018-08-19 10:13:47','2018-08-19 10:13:47'),
(2,'user','Normal User','2018-08-19 10:13:47','2018-08-19 10:13:47');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) values 
(1,'site.title','Site Title','Meetin','','text',1,'Site'),
(2,'site.description','Site Description','Site Description','','text',2,'Site'),
(3,'site.logo','Site Logo','','','image',3,'Site'),
(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');

/*Table structure for table `translations` */

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `translations` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`) values 
(1,1,'Luke','admin@admin.com','users/default.png','$2y$10$U8VBScOrI2rGlXWIeh1QQOeNTD5JOpdcQl.bMRo7pnxNvNz0TQs9W',NULL,NULL,'2018-08-19 10:15:47','2018-08-19 10:15:47');

/*Table structure for table `venue_statuses` */

DROP TABLE IF EXISTS `venue_statuses`;

CREATE TABLE `venue_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `venue_statuses` */

insert  into `venue_statuses`(`id`,`status`,`created_at`,`updated_at`) values 
(1,'Active',NULL,NULL),
(2,'In Active',NULL,NULL),
(3,'Pending',NULL,NULL);

/*Table structure for table `venues` */

DROP TABLE IF EXISTS `venues`;

CREATE TABLE `venues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_capacity` int(10) unsigned NOT NULL,
  `no_meeting_rooms` int(10) unsigned NOT NULL,
  `catering_capacity` int(10) unsigned NOT NULL,
  `no_bedrooms` int(10) unsigned NOT NULL,
  `meeting_room_disabled_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `venues` */

insert  into `venues`(`id`,`user_id`,`name`,`address_1`,`address_2`,`city`,`postcode`,`country_id`,`latitude`,`longitude`,`overview`,`content`,`meeting_capacity`,`no_meeting_rooms`,`catering_capacity`,`no_bedrooms`,`meeting_room_disabled_access`,`created_at`,`updated_at`,`deleted_at`,`status`) values 
(1,1,'Grand Harbour Hotel','5 West Quay Rd','Southampton','Hampshire','SO15 1AG',80,'50.905003','-1.415154','<p>You are assured of a warm welcome at the 4-star Grand Harbour Hotel in Southampton. This magnificent hotel is an iconic landmark on the Southampton waterfront.</p>\r\n<p>The hotel is the largest South Coast Conference hotel, offers 179 parking spaces and can be reached in just 75 minutes by train from London Waterloo.</p>','<p>You are assured of a warm welcome at the 4-star Grand Harbour Hotel in Southampton. This magnificent hotel is an iconic landmark on the Southampton waterfront. The hotel is the largest South Coast Conference hotel, offers 179 parking spaces and can be reached in just 75 minutes by train from London Waterloo. **LOCATION**: * Heart of Southampton city centre * Overlooking Southampton water * 5 minutes from Southampton Central station * 5 miles from Southampton airport * Whether you are travelling by road, rail, sea or air the Grand Harbour Hotel is your perfect port of call. MEETINGS &amp; EVENTS: * 13 meeting rooms split across two floors * Facility space for up to 500 delegates (theatre style) with spacious areas for breakout space * Vehicular access with rolling shutter door * High spec AV equipment * State of the art lighting * Complimentary Wi-Fi * Partition walls allowing multiple room set ups * Air Conditioning * Private bars * Fully accessible throughout * Competitive day delegates, room hire and accommodation rates **ACCOMMODATION**: * 173 bedrooms in a variety of room types from standard to presidential suite * Complimentary Wi-Fi * Air conditioning * Tea and coffee making facilities * 32&rdquo; Flatscreen TV with Sky * In room safe * Telephone * Work desk space * Iron and ironing board * Hairdryer * Bathroom toiletries * Family, accessible and interconnecting rooms available **SERENITY SPA**: The Spa at the Grand Harbour Hotel is perfect for that midweek get-away or a weekend break. We offer a wide range of relaxing and rejuvenating treatments and products, including ESPA and Jessica nail stations. Relax and unwind in the swimming pool, steam room, sauna or revitalise in the gymnasium. **DINING**: Enjoy exceptional dining experiences in the setting of the Marco Pierre White Steakhouse Bar &amp; Grill restaurant with views of the medieval town walls. Join us in the Steakhouse Bar &amp; Grill for any occasion. Juicy steaks sit alongside timeless classics and a few special Marco innovations to create an unforgettable dining experience. The Hamtun Bar, with it\'s soaring atrium, offers lighter bits and a wide selection of drinks and cocktails, the perfect place to catch up with family, friends and colleagues.</p>',500,13,500,173,1,'2018-08-19 11:50:00','2018-08-19 16:03:39',NULL,'1'),
(2,0,'One Great George Street','Westminster',NULL,'London','SW1P 3AA',80,'51.501070','-0.126900','<p><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">A stunning Grade II listed Edwardian building located in the heart of Westminster. This historical venue offers 21 flexible function rooms including the magnificent Great Hall with up to 400 guest capacity. </span></p>\r\n<p><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Ideal for conferences &amp; events, meetings, private &amp; fine dining, gala diners, weddings, lectures, fashion shows and much more.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">From the impressive entrance hall and the magnificent rotundas creating natural light throughout the building to the wide selection of rooms including two theatres, this truly unique property enables you to choose the ideal space for any event.&nbsp;</span></p>','<p><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">A stunning Grade II listed Edwardian building located in the heart of Westminster. This historical venue offers 21 flexible function rooms including the magnificent Great Hall with up to 400 guest capacity. Ideal for conferences &amp; events, meetings, private &amp; fine dining, gala diners, weddings, lectures, fashion shows and much more.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">From the impressive entrance hall and the magnificent rotundas creating natural light throughout the building to the wide selection of rooms including two theatres, this truly unique property enables you to choose the ideal space for any event.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Renowned for its high quality of standards, service, ideal location and excellent transport links, One Great George Street is ideal for:&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Conferences &amp; Events&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Meetings&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Private &amp; Fine Dining&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Gala Dinners&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Press Conferences&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Product Launches&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Wedding Ceremonies &amp; Receptions&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Lectures &amp; Seminars (2 Theatres with Tiered Seating)&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Fashion Shows&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Exhibitions (Small &amp; Medium)&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">- Filming Location - Feature Films &amp; Television Series&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Expert In-house Catering: Our in-house Head Chef and catering team serve delicious cuisine whether you require canap&eacute;s, a buffet, private dining or a scrumptious banquet. This fantastic food can be sampled even if you are not attending an event as the venue has a fine dining brasserie \'Brasserie One\' with a menu changing with the seasons. Open for lunch on weekdays; please call 020 7665 2340 to book a table.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Exceptional Audio Visuals: Our on-site technical team provide a seamless, state-of-the-art audio visual experience.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Accessibility: One Great George Street is proud to provide disabled access to the main entrance and throughout the venue.&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Awards:&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">2016 London\'s Best Private Dining Venue, London Venue Awards&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">2016 Most Prestigious Film Location Venue, Prestigious Star Awards&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">2015 The World&rsquo;s Most Prestigious Conference Venue, Prestigious Star Awards&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">2013 Catey Accessibility Award&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">2011 MIMA Gold Award - Best Direct Marketing Campaign&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Visit England Awards for Excellence 2013 - Commended for our Access for All&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">M&amp;it Industry Awards 2013 - Access Excellence&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">Cateys 2013 &ndash; Catey Accessibility Award&nbsp;</span><br style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\" /><span style=\"color: #505050; font-family: Tahoma, Arial, sans-serif; font-size: 12.8px;\">We previously also won the AIM Gold Accreditation for MIA, M&amp;IT Bronze Awards for Best UK Conference Venue &amp; Best Conference &amp; Banqueting Staff and M&amp;IT Runner Up for \'Best disabled facilities\'&nbsp;</span></p>',400,21,400,0,1,'2018-08-19 17:24:46','2018-08-19 17:24:46',NULL,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
