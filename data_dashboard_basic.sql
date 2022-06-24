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

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_log_data
CREATE TABLE IF NOT EXISTS `tbl_log_data` (
  `date_time` datetime NOT NULL,
  `time_epoch` int(64) NOT NULL,
  `category` int(64) DEFAULT NULL,
  `unit` int(64) DEFAULT NULL,
  `parameter` int(64) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `new_value` longtext DEFAULT NULL,
  `old_value` longtext DEFAULT NULL,
  KEY `FK_tbl_log_data_tbl_unit` (`unit`),
  KEY `FK_tbl_log_data_tbl_log_parameters` (`parameter`),
  KEY `FK_tbl_log_data_tbl_log_category` (`category`),
  CONSTRAINT `FK_tbl_log_data_tbl_log_category` FOREIGN KEY (`category`) REFERENCES `tbl_log_category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_log_data_tbl_log_parameters` FOREIGN KEY (`parameter`) REFERENCES `tbl_log_parameters` (`prm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_log_data_tbl_unit` FOREIGN KEY (`unit`) REFERENCES `tbl_unit` (`unit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_log_parameters
CREATE TABLE IF NOT EXISTS `tbl_log_parameters` (
  `prm_id` int(11) NOT NULL AUTO_INCREMENT,
  `prm_name` varchar(50) NOT NULL,
  PRIMARY KEY (`prm_id`),
  UNIQUE KEY `prm_name` (`prm_name`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_pbr_data
CREATE TABLE IF NOT EXISTS `tbl_pbr_data` (
  `trial_no` int(64) NOT NULL,
  `primary_key` bigint(20) NOT NULL,
  `_timeString` datetime NOT NULL,
  `unit` int(16) NOT NULL,
  `species` int(16) NOT NULL DEFAULT 0,
  `FT1` float DEFAULT 0,
  `FT2` float DEFAULT 0,
  `PT1_V4` float DEFAULT 0,
  `PT2` float DEFAULT 0,
  `FT3` float DEFAULT 0,
  `CO2in` float DEFAULT 0,
  `CO2_V2` float DEFAULT 0,
  `CO2sys` float DEFAULT 0,
  `LT1` float DEFAULT 0,
  `LReactor` float DEFAULT 0,
  `C_g` float DEFAULT 0,
  `C_Eff` float DEFAULT 0,
  `C_CD` float DEFAULT 0,
  `T_CD` float DEFAULT 0,
  `C_D_g` float DEFAULT 0,
  `C_D_Eff` float DEFAULT 0,
  `QT` float DEFAULT 0,
  `QC` float DEFAULT 0,
  `QB` float DEFAULT 0,
  `QR` float DEFAULT 0,
  `QG` float DEFAULT 0,
  `QT_corr` float DEFAULT 0,
  `TT0` float DEFAULT 0,
  `TT1` float DEFAULT 0,
  `pH` float DEFAULT 0,
  `C_PAR` float DEFAULT 0,
  PRIMARY KEY (`primary_key`,`unit`),
  KEY `FK_tbl_pbr_data_tbl_pbr_lookup` (`trial_no`),
  KEY `FK_tbl_pbr_data_tbl_species` (`species`),
  KEY `FK_tbl_pbr_data_tbl_unit` (`unit`),
  CONSTRAINT `FK_tbl_pbr_data_tbl_pbr_lookup` FOREIGN KEY (`trial_no`) REFERENCES `tbl_pbr_lookup` (`instance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_pbr_data_tbl_species` FOREIGN KEY (`species`) REFERENCES `tbl_species` (`species_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_pbr_data_tbl_unit` FOREIGN KEY (`unit`) REFERENCES `tbl_unit` (`unit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table to store photobioreactor process parameters';

-- Data exporting was unselected.

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

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_species
CREATE TABLE IF NOT EXISTS `tbl_species` (
  `species_id` int(11) NOT NULL AUTO_INCREMENT,
  `species_name` varchar(50) NOT NULL,
  PRIMARY KEY (`species_id`),
  UNIQUE KEY `species_name` (`species_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='index table for list of species using';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_unit
CREATE TABLE IF NOT EXISTS `tbl_unit` (
  `unit_id` int(8) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_name` (`unit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COMMENT='index table for storing photobioreactor unit names.';

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
