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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`parent_id`,`order`,`name`,`slug`,`created_at`,`updated_at`) values 
(1,NULL,1,'Category 1','category-1','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(2,NULL,1,'Category 2','category-2','2018-06-04 18:24:26','2018-06-04 18:24:26');

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `continent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`continent`,`created_at`,`updated_at`) values 
('ABW','Aruba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AFG','Afghanistan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AGO','Angola','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AIA','Anguilla','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ALA','Åland Islands','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ALB','Albania','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AND','Andorra','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ARE','United Arab Emirates','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ARG','Argentina','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ARM','Armenia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ASM','American Samoa','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ATA','Antarctica','','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ATF','French Southern Territories','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ATG','Antigua and Barbuda','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AUS','Australia','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AUT','Austria','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('AZE','Azerbaijan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BDI','Burundi','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BEL','Belgium','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BEN','Benin','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BES','Bonaire, Sint Eustatius and Saba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BFA','Burkina Faso','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BGD','Bangladesh','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BGR','Bulgaria','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BHR','Bahrain','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BHS','Bahamas','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BIH','Bosnia and Herzegovina','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BLM','Saint Barthélemy','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('BLR','Belarus','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BLZ','Belize','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BMU','Bermuda','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BOL','Bolivia (Plurinational State of)','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BRA','Brazil','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BRB','Barbados','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BRN','Brunei Darussalam','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BTN','Bhutan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BVT','Bouvet Island','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('BWA','Botswana','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CAF','Central African Republic','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CAN','Canada','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CCK','Cocos (Keeling) Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CHE','Switzerland','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('CHL','Chile','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CHN','China','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CIV','Côte d\'Ivoire','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CMR','Cameroon','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('COD','Congo (Democratic Republic of the)','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('COG','Congo','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('COK','Cook Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('COL','Colombia','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('COM','Comoros','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CPV','Cabo Verde','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CRI','Costa Rica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CUB','Cuba','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CUW','Curaçao','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CXR','Christmas Island','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CYM','Cayman Islands','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CYP','Cyprus','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('CZE','Czechia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DEU','Germany','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DJI','Djibouti','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DMA','Dominica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DNK','Denmark','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DOM','Dominican Republic','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('DZA','Algeria','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ECU','Ecuador','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('EGY','Egypt','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ERI','Eritrea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ESH','Western Sahara','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ESP','Spain','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('EST','Estonia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ETH','Ethiopia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FIN','Finland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FJI','Fiji','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FLK','Falkland Islands (Malvinas)','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FRA','France','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FRO','Faroe Islands','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('FSM','Micronesia (Federated States of)','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('GAB','Gabon','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GBR','United Kingdom','Europe','2018-08-07 00:24:39','2018-08-07 00:30:15'),
('GEO','Georgia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GGY','Guernsey','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GHA','Ghana','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GIB','Gibraltar','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GIN','Guinea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GLP','Guadeloupe','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GMB','Gambia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GNB','Guinea-Bissau','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GNQ','Equatorial Guinea','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GRC','Greece','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GRD','Grenada','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GRL','Greenland','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GTM','Guatemala','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GUF','French Guiana','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GUM','Guam','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('GUY','Guyana','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HKG','Hong Kong','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HMD','Heard Island and McDonald Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HND','Honduras','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HRV','Croatia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HTI','Haiti','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('HUN','Hungary','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IDN','Indonesia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IMN','Isle of Man','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IND','India','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IOT','British Indian Ocean Territory','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IRL','Ireland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IRN','Iran (Islamic Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('IRQ','Iraq','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ISL','Iceland','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ISR','Israel','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('ITA','Italy','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('JAM','Jamaica','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('JEY','Jersey','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('JOR','Jordan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('JPN','Japan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KAZ','Kazakhstan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KEN','Kenya','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KGZ','Kyrgyzstan','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KHM','Cambodia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KIR','Kiribati','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KNA','Saint Kitts and Nevis','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('KOR','Korea (Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('KWT','Kuwait','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LAO','Lao People\'s Democratic Republic','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LBN','Lebanon','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LBR','Liberia','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LBY','Libya','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LCA','Saint Lucia','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('LIE','Liechtenstein','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LKA','Sri Lanka','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('LSO','Lesotho','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LTU','Lithuania','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LUX','Luxembourg','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('LVA','Latvia','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MAC','Macao','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MAF','Saint Martin (French part)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MAR','Morocco','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MCO','Monaco','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MDA','Moldova (Republic of)','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MDG','Madagascar','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MDV','Maldives','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MEX','Mexico','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MHL','Marshall Islands','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MKD','Macedonia (the former Yugoslav Republic of)','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MLI','Mali','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MLT','Malta','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MMR','Myanmar','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MNE','Montenegro','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MNG','Mongolia','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MNP','Northern Mariana Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MOZ','Mozambique','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MRT','Mauritania','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MSR','Montserrat','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MTQ','Martinique','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MUS','Mauritius','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('MWI','Malawi','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MYS','Malaysia','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('MYT','Mayotte','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NAM','Namibia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NCL','New Caledonia','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NER','Niger','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NFK','Norfolk Island','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NGA','Nigeria','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NIC','Nicaragua','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NIU','Niue','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NLD','Netherlands','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NOR','Norway','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NPL','Nepal','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NRU','Nauru','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('NZL','New Zealand','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('OMN','Oman','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PAK','Pakistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PAN','Panama','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PCN','Pitcairn','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PER','Peru','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PHL','Philippines','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PLW','Palau','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PNG','Papua New Guinea','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('POL','Poland','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PRI','Puerto Rico','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PRK','Korea (Democratic People\'s Republic of)','Asia','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('PRT','Portugal','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PRY','Paraguay','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PSE','Palestine, State of','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('PYF','French Polynesia','Oceania','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('QAT','Qatar','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('REU','Réunion','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ROU','Romania','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('RUS','Russian Federation','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('RWA','Rwanda','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SAU','Saudi Arabia','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SDN','Sudan','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SEN','Senegal','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SGP','Singapore','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SGS','South Georgia and the South Sandwich Islands','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SHN','Saint Helena, Ascension and Tristan da Cunha','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SJM','Svalbard and Jan Mayen','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SLB','Solomon Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SLE','Sierra Leone','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SLV','El Salvador','Americas','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('SMR','San Marino','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SOM','Somalia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SPM','Saint Pierre and Miquelon','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SRB','Serbia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SSD','South Sudan','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('STP','Sao Tome and Principe','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SUR','Suriname','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SVK','Slovakia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SVN','Slovenia','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SWE','Sweden','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SWZ','Eswatini','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('SXM','Sint Maarten (Dutch part)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SYC','Seychelles','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('SYR','Syrian Arab Republic','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TCA','Turks and Caicos Islands','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TCD','Chad','Africa','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('TGO','Togo','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('THA','Thailand','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TJK','Tajikistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TKL','Tokelau','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TKM','Turkmenistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TLS','Timor-Leste','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TON','Tonga','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TTO','Trinidad and Tobago','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TUN','Tunisia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TUR','Turkey','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TUV','Tuvalu','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TWN','Taiwan, Province of China','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('TZA','Tanzania, United Republic of','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('UGA','Uganda','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('UKR','Ukraine','Europe','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('UMI','United States Minor Outlying Islands','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('URY','Uruguay','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('USA','United States of America','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('UZB','Uzbekistan','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VAT','Holy See','Europe','2018-08-07 00:24:38','2018-08-07 00:24:38'),
('VCT','Saint Vincent and the Grenadines','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VEN','Venezuela (Bolivarian Republic of)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VGB','Virgin Islands (British)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VIR','Virgin Islands (U.S.)','Americas','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VNM','Viet Nam','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('VUT','Vanuatu','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('WLF','Wallis and Futuna','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('WSM','Samoa','Oceania','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('YEM','Yemen','Asia','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ZAF','South Africa','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ZMB','Zambia','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39'),
('ZWE','Zimbabwe','Africa','2018-08-07 00:24:39','2018-08-07 00:24:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(23,4,'id','number','ID',1,0,0,0,0,0,'',1),
(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),
(26,4,'name','text','Name',1,1,1,1,1,1,'',4),
(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),
(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),
(30,5,'id','number','ID',1,0,0,0,0,0,'',1),
(31,5,'author_id','text','Author',1,0,1,1,0,1,'',2),
(32,5,'category_id','text','Category',1,0,1,1,1,0,'',3),
(33,5,'title','text','Title',1,1,1,1,1,1,'',4),
(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),
(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),
(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),
(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),
(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),
(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),
(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),
(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),
(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),
(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),
(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),
(45,6,'id','number','ID',1,0,0,0,0,0,'',1),
(46,6,'author_id','text','Author',1,0,0,0,0,0,'',2),
(47,6,'title','text','Title',1,1,1,1,1,1,'',3),
(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),
(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),
(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),
(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),
(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),
(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),
(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),
(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),
(56,6,'image','image','Page Image',0,1,1,1,1,1,'',12),
(57,7,'id','hidden','Id',1,1,1,0,0,0,NULL,1),
(58,7,'name','text','Name',1,1,1,1,1,1,NULL,2),
(59,7,'address_1','text','Address 1',1,1,1,1,1,1,NULL,3),
(60,7,'address_2','text','Address 2',0,1,1,1,1,1,NULL,4),
(61,7,'post_code','text','Post Code',1,1,1,1,1,1,NULL,5),
(62,7,'city','text','City',1,1,1,1,1,1,NULL,6),
(63,7,'country_id','select_dropdown','Country',1,1,1,1,1,1,NULL,7),
(64,7,'phone','text','Phone',0,1,1,1,1,1,NULL,8),
(65,7,'email','text','Email',1,1,1,1,1,1,NULL,9),
(66,7,'url','text','Url',0,1,1,1,1,1,NULL,10),
(67,7,'rooms','text','Rooms',0,1,1,1,1,1,NULL,11),
(68,7,'stars','radio_btn','Stars',0,1,1,1,1,1,NULL,12),
(69,7,'bars','number','Bars',0,1,1,1,1,1,NULL,13),
(70,7,'restaraunts','radio_btn','Restaraunts',0,1,1,1,1,1,NULL,14),
(71,7,'lat','coordinates','Lat',1,1,1,1,1,1,NULL,15),
(72,7,'long','coordinates','Long',1,1,1,1,1,1,NULL,16),
(73,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,17),
(74,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,18),
(75,7,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,NULL,19),
(76,9,'id','text','ID',1,1,1,1,1,1,NULL,1),
(77,9,'name','text','Name',1,1,1,1,1,1,NULL,2),
(78,9,'continent','text','Continent',1,1,1,1,1,1,NULL,3),
(79,7,'venue_belongsto_country_relationship','relationship','countries',0,1,1,1,1,1,'{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}',20);

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
(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(7,'venues','venues','Venue','Venues',NULL,'App\\Venue',NULL,'VenuesController',NULL,1,1,'{\"order_column\":\"id\",\"order_display_column\":\"id\"}','2018-08-06 22:57:58','2018-08-06 22:57:58'),
(9,'countries','countries','Country','Countries',NULL,'App\\Country',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\"}','2018-08-06 23:05:52','2018-08-06 23:10:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) values 
(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.dashboard',NULL),
(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.media.index',NULL),
(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.users.index',NULL),
(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.roles.index',NULL),
(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2018-06-04 18:24:25','2018-06-04 18:24:25',NULL,NULL),
(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.menus.index',NULL),
(7,1,'Database','','_self','voyager-data',NULL,5,11,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.database.index',NULL),
(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.compass.index',NULL),
(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.bread.index',NULL),
(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2018-06-04 18:24:25','2018-06-04 18:24:25','voyager.settings.index',NULL),
(11,1,'Categories','','_self','voyager-categories',NULL,NULL,8,'2018-06-04 18:24:26','2018-06-04 18:24:26','voyager.categories.index',NULL),
(12,1,'Posts','','_self','voyager-news',NULL,NULL,6,'2018-06-04 18:24:26','2018-06-04 18:24:26','voyager.posts.index',NULL),
(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,7,'2018-06-04 18:24:26','2018-06-04 18:24:26','voyager.pages.index',NULL),
(14,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2018-06-04 18:24:27','2018-06-04 18:24:27','voyager.hooks',NULL),
(15,2,'Venues','venues','_self',NULL,'#787878',NULL,15,'2018-06-04 18:37:53','2018-06-04 18:37:53',NULL,''),
(16,2,'About','about','_self',NULL,'#787878',NULL,16,'2018-06-04 18:38:28','2018-06-04 18:39:07',NULL,''),
(17,2,'How it works','how-it-works','_self',NULL,'#787878',NULL,17,'2018-06-04 18:39:37','2018-08-02 18:21:38',NULL,''),
(18,2,'Testimonial','testimonial','_self',NULL,'#000000',NULL,18,'2018-08-02 18:22:04','2018-08-02 18:22:04',NULL,''),
(19,1,'Venues','','_self',NULL,NULL,NULL,19,'2018-08-06 22:57:59','2018-08-06 22:57:59','voyager.venues.index',NULL),
(20,1,'Countries','','_self',NULL,NULL,NULL,20,'2018-08-06 23:05:52','2018-08-06 23:05:52','voyager.countries.index',NULL);

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
(1,'admin','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(2,'main','2018-06-04 18:29:43','2018-06-04 18:29:43');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_01_01_000000_add_voyager_user_fields',1),
(4,'2016_01_01_000000_create_data_types_table',1),
(5,'2016_05_19_173453_create_menu_table',1),
(6,'2016_10_21_190000_create_roles_table',1),
(7,'2016_10_21_190000_create_settings_table',1),
(8,'2016_11_30_135954_create_permission_table',1),
(9,'2016_11_30_141208_create_permission_role_table',1),
(10,'2016_12_26_201236_data_types__add__server_side',1),
(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
(12,'2017_01_14_005015_create_translations_table',1),
(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
(17,'2017_08_05_000000_add_group_to_settings_table',1),
(18,'2017_11_26_013050_add_user_role_relationship',1),
(19,'2017_11_26_015000_create_user_roles_table',1),
(20,'2018_03_11_000000_add_user_settings',1),
(21,'2018_03_14_000000_add_details_to_data_types_table',1),
(22,'2018_03_16_000000_make_settings_value_nullable',1),
(23,'2016_01_01_000000_create_pages_table',2),
(24,'2016_01_01_000000_create_posts_table',2),
(25,'2016_02_15_204651_create_categories_table',2),
(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created_at`,`updated_at`) values 
(1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-06-04 18:24:26','2018-06-04 18:24:26');

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
(42,1),
(43,1),
(44,1),
(45,1),
(46,1),
(47,1),
(48,1),
(49,1),
(50,1),
(51,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`key`,`table_name`,`created_at`,`updated_at`) values 
(1,'browse_admin',NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(2,'browse_bread',NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(3,'browse_database',NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(4,'browse_media',NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(5,'browse_compass',NULL,'2018-06-04 18:24:25','2018-06-04 18:24:25'),
(6,'browse_menus','menus','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(7,'read_menus','menus','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(8,'edit_menus','menus','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(9,'add_menus','menus','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(10,'delete_menus','menus','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(11,'browse_roles','roles','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(12,'read_roles','roles','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(13,'edit_roles','roles','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(14,'add_roles','roles','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(15,'delete_roles','roles','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(16,'browse_users','users','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(17,'read_users','users','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(18,'edit_users','users','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(19,'add_users','users','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(20,'delete_users','users','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(21,'browse_settings','settings','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(22,'read_settings','settings','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(23,'edit_settings','settings','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(24,'add_settings','settings','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(25,'delete_settings','settings','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(26,'browse_categories','categories','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(27,'read_categories','categories','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(28,'edit_categories','categories','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(29,'add_categories','categories','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(30,'delete_categories','categories','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(31,'browse_posts','posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(32,'read_posts','posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(33,'edit_posts','posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(34,'add_posts','posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(35,'delete_posts','posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(36,'browse_pages','pages','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(37,'read_pages','pages','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(38,'edit_pages','pages','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(39,'add_pages','pages','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(40,'delete_pages','pages','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(41,'browse_hooks',NULL,'2018-06-04 18:24:27','2018-06-04 18:24:27'),
(42,'browse_venues','venues','2018-08-06 22:57:59','2018-08-06 22:57:59'),
(43,'read_venues','venues','2018-08-06 22:57:59','2018-08-06 22:57:59'),
(44,'edit_venues','venues','2018-08-06 22:57:59','2018-08-06 22:57:59'),
(45,'add_venues','venues','2018-08-06 22:57:59','2018-08-06 22:57:59'),
(46,'delete_venues','venues','2018-08-06 22:57:59','2018-08-06 22:57:59'),
(47,'browse_countries','countries','2018-08-06 23:05:52','2018-08-06 23:05:52'),
(48,'read_countries','countries','2018-08-06 23:05:52','2018-08-06 23:05:52'),
(49,'edit_countries','countries','2018-08-06 23:05:52','2018-08-06 23:05:52'),
(50,'add_countries','countries','2018-08-06 23:05:52','2018-08-06 23:05:52'),
(51,'delete_countries','countries','2018-08-06 23:05:52','2018-08-06 23:05:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`author_id`,`category_id`,`title`,`seo_title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`featured`,`created_at`,`updated_at`) values 
(1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-06-04 18:24:26','2018-06-04 18:24:26');

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
(1,'admin','Administrator','2018-06-04 18:24:25','2018-06-04 18:24:25'),
(2,'user','Normal User','2018-06-04 18:24:25','2018-06-04 18:24:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) values 
(1,'site.title','Site Title','Meetin','','text',1,'Site'),
(2,'site.description','Site Description','Site Description','','text',2,'Site'),
(3,'site.logo','Site Logo','','','image',3,'Site'),
(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
(6,'admin.title','Admin Title','Meetin Admin','','text',1,'Admin'),
(7,'admin.description','Admin Description','Welcome to Meetin','','text',2,'Admin'),
(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),
(11,'site.gmap_api_key','Google Maps API','AIzaSyAAbo99H1q2XbY1MTKm-DixzPE54eXve1g',NULL,'text',6,'Site');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `translations` */

insert  into `translations`(`id`,`table_name`,`column_name`,`foreign_key`,`locale`,`value`,`created_at`,`updated_at`) values 
(1,'data_types','display_name_singular',5,'pt','Post','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(2,'data_types','display_name_singular',6,'pt','Página','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(4,'data_types','display_name_singular',4,'pt','Categoria','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(5,'data_types','display_name_singular',2,'pt','Menu','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(6,'data_types','display_name_singular',3,'pt','Função','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(7,'data_types','display_name_plural',5,'pt','Posts','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(8,'data_types','display_name_plural',6,'pt','Páginas','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(10,'data_types','display_name_plural',4,'pt','Categorias','2018-06-04 18:24:26','2018-06-04 18:24:26'),
(11,'data_types','display_name_plural',2,'pt','Menus','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(12,'data_types','display_name_plural',3,'pt','Funções','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(13,'categories','slug',1,'pt','categoria-1','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(14,'categories','name',1,'pt','Categoria 1','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(15,'categories','slug',2,'pt','categoria-2','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(16,'categories','name',2,'pt','Categoria 2','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(17,'pages','title',1,'pt','Olá Mundo','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(18,'pages','slug',1,'pt','ola-mundo','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(20,'menu_items','title',1,'pt','Painel de Controle','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(21,'menu_items','title',2,'pt','Media','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(22,'menu_items','title',12,'pt','Publicações','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(23,'menu_items','title',3,'pt','Utilizadores','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(24,'menu_items','title',11,'pt','Categorias','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(25,'menu_items','title',13,'pt','Páginas','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(26,'menu_items','title',4,'pt','Funções','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(27,'menu_items','title',5,'pt','Ferramentas','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(28,'menu_items','title',6,'pt','Menus','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(29,'menu_items','title',7,'pt','Base de dados','2018-06-04 18:24:27','2018-06-04 18:24:27'),
(30,'menu_items','title',10,'pt','Configurações','2018-06-04 18:24:27','2018-06-04 18:24:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`) values 
(1,1,'Admin','admin@admin.com','users/default.png','$2y$10$EB4Yl5F6mpBgvTscu9SF4.ZsHSAAvp1uqlSmZk/AvGbafBxptqGPS','3iGEScklSxiMubprQG666VkpNoWu8YeHtThYKSeDiRYgH6l5qnOfsMuMb8lp',NULL,'2018-06-04 18:24:26','2018-06-04 18:24:26'),
(2,2,'John Doe','test@test.com','users/default.png','$2y$10$fBknqre7YeM/hfeRs10S0ewLW746sT7M4eFi3ipDacWb8AaXkc0fq',NULL,'{\"locale\":\"en\"}','2018-06-04 18:26:16','2018-06-04 18:26:16');

/*Table structure for table `venues` */

DROP TABLE IF EXISTS `venues`;

CREATE TABLE `venues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rooms` int(10) unsigned DEFAULT NULL,
  `stars` int(10) unsigned DEFAULT '0',
  `bars` tinyint(3) unsigned DEFAULT '0',
  `restaraunts` tinyint(3) unsigned DEFAULT '0',
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `venues` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
