-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.7.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for data_dashboard
CREATE DATABASE IF NOT EXISTS `data_dashboard` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `data_dashboard`;

-- Dumping structure for table data_dashboard.tbl_log_category
CREATE TABLE IF NOT EXISTS `tbl_log_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table data_dashboard.tbl_log_category: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbl_log_category` DISABLE KEYS */;
INSERT INTO `tbl_log_category` (`category_id`, `category_name`) VALUES
	(4, 'AL'),
	(1, 'DEB'),
	(6, 'LOG'),
	(3, 'OP'),
	(2, 'PRO'),
	(5, 'WAR');
/*!40000 ALTER TABLE `tbl_log_category` ENABLE KEYS */;

-- Dumping structure for table data_dashboard.tbl_log_parameters
CREATE TABLE IF NOT EXISTS `tbl_log_parameters` (
  `prm_id` int(11) NOT NULL AUTO_INCREMENT,
  `prm_name` varchar(50) NOT NULL,
  PRIMARY KEY (`prm_id`),
  UNIQUE KEY `prm_name` (`prm_name`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table data_dashboard.tbl_log_parameters: ~162 rows (approximately)
/*!40000 ALTER TABLE `tbl_log_parameters` DISABLE KEYS */;
INSERT INTO `tbl_log_parameters` (`prm_id`, `prm_name`) VALUES
	(1, 'Arduino'),
	(101, 'Arduino1'),
	(66, 'Arduino1_LT41'),
	(125, 'Arduino1_LT42'),
	(126, 'Arduino1_LT43'),
	(119, 'Arduino1_LT45'),
	(127, 'Arduino1_LT51'),
	(64, 'Arduino1_LT52'),
	(115, 'Arduino1_LT53'),
	(118, 'Arduino1_LT54'),
	(121, 'Arduino1_LT55'),
	(160, 'Arduino1_PT10'),
	(161, 'Arduino1_PT11'),
	(129, 'Arduino2'),
	(122, 'Arduino2_LT10'),
	(67, 'Arduino2_LT61'),
	(128, 'Arduino2_LT62'),
	(113, 'Arduino2_LT63'),
	(116, 'Arduino2_LT64'),
	(114, 'Arduino2_LT65'),
	(123, 'Arduino2_LT71'),
	(65, 'Arduino2_LT72'),
	(111, 'Arduino2_LT73'),
	(120, 'Arduino2_LT74'),
	(117, 'Arduino2_LT75'),
	(162, 'Arduino2_noInUse'),
	(112, 'Arduino_CO2'),
	(154, 'Arduino_FT2'),
	(63, 'Arduino_LT1'),
	(54, 'Arduino_pH'),
	(152, 'Arduino_PT1'),
	(153, 'Arduino_PT2'),
	(148, 'Arduino_QB'),
	(149, 'Arduino_QC'),
	(53, 'Arduino_QG'),
	(147, 'Arduino_QR'),
	(155, 'Arduino_QT'),
	(124, 'Arduino_TT0'),
	(62, 'Arduino_TT1'),
	(68, 'AutoLink'),
	(9, 'autoSyncMonitor'),
	(110, 'AutoTemplateSync'),
	(12, 'calculations'),
	(88, 'chiller'),
	(58, 'CO2_V2'),
	(14, 'feeding'),
	(11, 'harvest'),
	(131, 'harvestTank'),
	(84, 'L1'),
	(96, 'L1B'),
	(94, 'L1FR'),
	(95, 'L1R'),
	(61, 'L1W'),
	(29, 'LEDlighting'),
	(74, 'LT1'),
	(97, 'LT10'),
	(78, 'M1'),
	(98, 'M10'),
	(150, 'P1'),
	(71, 'P10'),
	(81, 'P11'),
	(92, 'P12'),
	(13, 'P1L'),
	(56, 'P1R'),
	(151, 'P2'),
	(79, 'P2L'),
	(57, 'P2R'),
	(50, 'P42'),
	(69, 'P43'),
	(8, 'pneumatic'),
	(83, 'Products'),
	(2, 'program'),
	(104, 'PT10'),
	(26, 'PT1_V4'),
	(60, 'PTdiff_K2'),
	(59, 'R1'),
	(6, 'Reactor'),
	(82, 'Recipes'),
	(51, 'RM1'),
	(132, 'RM10'),
	(76, 'RM11'),
	(33, 'RM12'),
	(34, 'RM13'),
	(35, 'RM14'),
	(36, 'RM15'),
	(37, 'RM16'),
	(38, 'RM17'),
	(100, 'RM18'),
	(39, 'RM19'),
	(40, 'RM2'),
	(108, 'RM20'),
	(41, 'RM21'),
	(42, 'RM22'),
	(43, 'RM23'),
	(133, 'RM24'),
	(134, 'RM25'),
	(135, 'RM26'),
	(136, 'RM27'),
	(137, 'RM28'),
	(30, 'RM29'),
	(75, 'RM3'),
	(52, 'RM30'),
	(138, 'RM31'),
	(139, 'RM32'),
	(109, 'RM33'),
	(140, 'RM34'),
	(46, 'RM35'),
	(141, 'RM36'),
	(142, 'RM37'),
	(143, 'RM38'),
	(144, 'RM39'),
	(47, 'RM4'),
	(145, 'RM40'),
	(48, 'RM5'),
	(31, 'RM6'),
	(49, 'RM7'),
	(77, 'RM8'),
	(146, 'RM9'),
	(5, 'T10'),
	(157, 'T41'),
	(44, 'T41A'),
	(16, 'T42'),
	(10, 'T42A'),
	(28, 'T43'),
	(45, 'T43A'),
	(158, 'T44'),
	(159, 'T45'),
	(18, 'T51'),
	(24, 'T52'),
	(17, 'T53'),
	(25, 'T54'),
	(27, 'T55'),
	(3, 'T61'),
	(89, 'T62'),
	(22, 'T63'),
	(15, 'T64'),
	(21, 'T65'),
	(7, 'T71'),
	(23, 'T72'),
	(19, 'T73'),
	(20, 'T74'),
	(156, 'T75'),
	(130, 'triggers'),
	(105, 'TT0'),
	(86, 'V1'),
	(72, 'V11'),
	(55, 'V3'),
	(70, 'V42'),
	(93, 'V43'),
	(107, 'V51'),
	(102, 'V52'),
	(85, 'V6'),
	(80, 'V61'),
	(91, 'V62'),
	(99, 'V63'),
	(103, 'V64'),
	(90, 'V71'),
	(87, 'V72'),
	(32, 'V74'),
	(73, 'V8'),
	(106, 'waste'),
	(4, 'water');
/*!40000 ALTER TABLE `tbl_log_parameters` ENABLE KEYS */;

-- Dumping structure for table data_dashboard.tbl_pbr_lookup
CREATE TABLE IF NOT EXISTS `tbl_pbr_lookup` (
  `instance` int(11) NOT NULL AUTO_INCREMENT,
  `unit` int(11) NOT NULL,
  `species` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `remark` text DEFAULT NULL,
  `raw_file_name` text NOT NULL,
  PRIMARY KEY (`instance`),
  KEY `FK_tbl_pbr_lookup_tbl_unit` (`unit`),
  KEY `FK_tbl_pbr_lookup_tbl_species` (`species`),
  CONSTRAINT `FK_tbl_pbr_lookup_tbl_species` FOREIGN KEY (`species`) REFERENCES `tbl_species` (`species_id`),
  CONSTRAINT `FK_tbl_pbr_lookup_tbl_unit` FOREIGN KEY (`unit`) REFERENCES `tbl_unit` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='look up or search table for pbr data. Can use to slect the species trail (start to end) easily from PBR data table';

-- Dumping data for table data_dashboard.tbl_pbr_lookup: ~12 rows (approximately)
/*!40000 ALTER TABLE `tbl_pbr_lookup` DISABLE KEYS */;
INSERT INTO `tbl_pbr_lookup` (`instance`, `unit`, `species`, `start_date`, `end_date`, `remark`, `raw_file_name`) VALUES
	(1, 6, 1, 1629468000, 1633939195, 'missing values from 2021-10-3 2:56:55 to 2021-10-3 9:27:55. Reason: yet to update', '_1_FPC13_ChCal_1.csv'),
	(2, 6, 1, 1634652000, 1644488995, NULL, '_2_FPC13_ChCal_2.csv'),
	(3, 6, 11, 1625227200, 1628157595, NULL, '_3_FPC13_ThalaPs.csv'),
	(4, 1, 2, 1614763800, 1618392595, NULL, '_4_FPC14_chamu.csv'),
	(5, 1, 7, 1625486400, 1639564200, NULL, '_5_FPC14_RhoSa.csv'),
	(6, 1, 11, 1618561800, 1625228995, NULL, '_6_FPC14_thalaps.csv'),
	(7, 4, 2, 1634914800, 1646645395, NULL, '_7_FPC21_chamu.csv'),
	(8, 4, 9, 1623051000, 1626771600, NULL, '_8_FPC21_Techu.csv'),
	(9, 3, 3, 1620216000, 1634632200, NULL, '_9_FPC22_DiaLut.csv'),
	(10, 5, 7, 1616427000, 1626690600, NULL, '_10_FPC23_Rhosa.csv'),
	(11, 7, 8, 1620129600, 1633964395, NULL, '_11_FPC24_SkeMa_1.csv'),
	(12, 7, 8, 1635246000, 1641567595, NULL, '_12_FPC24_SkeMa_2.csv');
/*!40000 ALTER TABLE `tbl_pbr_lookup` ENABLE KEYS */;

-- Dumping structure for table data_dashboard.tbl_species
CREATE TABLE IF NOT EXISTS `tbl_species` (
  `species_id` int(11) NOT NULL AUTO_INCREMENT,
  `species_name` varchar(50) NOT NULL,
  PRIMARY KEY (`species_id`),
  UNIQUE KEY `species_name` (`species_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='index table for list of species using';

-- Dumping data for table data_dashboard.tbl_species: ~11 rows (approximately)
/*!40000 ALTER TABLE `tbl_species` DISABLE KEYS */;
INSERT INTO `tbl_species` (`species_id`, `species_name`) VALUES
	(1, 'Chaetoceros Calcitrans Pumilus'),
	(2, 'Chaetoceros Muelleri'),
	(3, 'Diacronema Lutheri (Pavlova)'),
	(4, 'Isochrysis Galbana'),
	(5, 'NannoChloropsis SP'),
	(6, 'Rhodomonas Baltica'),
	(7, 'Rhodomonas Salina'),
	(8, 'Skeletonema Marinoi'),
	(9, 'Tetraselmis Chuii'),
	(10, 'Tetraselmis Suecica'),
	(11, 'Thalassiosira Pseudonna'),
	(12, 'Thalassiosira Weissflogii');
/*!40000 ALTER TABLE `tbl_species` ENABLE KEYS */;

-- Dumping structure for table data_dashboard.tbl_unit
CREATE TABLE IF NOT EXISTS `tbl_unit` (
  `unit_id` int(8) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_name` (`unit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COMMENT='index table for storing photobioreactor unit names.';

-- Dumping data for table data_dashboard.tbl_unit: ~11 rows (approximately)
/*!40000 ALTER TABLE `tbl_unit` DISABLE KEYS */;
INSERT INTO `tbl_unit` (`unit_id`, `unit_name`) VALUES
	(2, 'FFU'),
	(8, 'FPC11'),
	(10, 'FPC12'),
	(6, 'FPC13'),
	(1, 'FPC14'),
	(4, 'FPC21'),
	(3, 'FPC22'),
	(5, 'FPC23'),
	(7, 'FPC24'),
	(11, 'FPP'),
	(9, 'Product');
/*!40000 ALTER TABLE `tbl_unit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
