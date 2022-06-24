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
DROP DATABASE IF EXISTS `data_dashboard`;
CREATE DATABASE IF NOT EXISTS `data_dashboard` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `data_dashboard`;

-- Dumping structure for table data_dashboard.table_feed_ffp_data
DROP TABLE IF EXISTS `table_feed_ffp_data`;
CREATE TABLE IF NOT EXISTS `table_feed_ffp_data` (
  `time_epoch` int(32) NOT NULL,
  `date_time` datetime NOT NULL,
  `LT10` float DEFAULT NULL,
  `PT10` float DEFAULT NULL,
  `PT11` float DEFAULT NULL,
  `LT41` float DEFAULT NULL,
  `LT42` float DEFAULT NULL,
  `LT43` float DEFAULT NULL,
  `LT44` float DEFAULT NULL,
  `LT45` float DEFAULT NULL,
  `LT51` float DEFAULT NULL,
  `LT52` float DEFAULT NULL,
  `LT53` float DEFAULT NULL,
  `LT54` float DEFAULT NULL,
  `LT55` float DEFAULT NULL,
  `LT61` float DEFAULT NULL,
  `LT62` float DEFAULT NULL,
  `LT63` float DEFAULT NULL,
  `LT64` float DEFAULT NULL,
  `LT65` float DEFAULT NULL,
  `LT71` float DEFAULT NULL,
  `LT72` float DEFAULT NULL,
  `LT73` float DEFAULT NULL,
  `LT74` float DEFAULT NULL,
  `LT75` float DEFAULT NULL,
  PRIMARY KEY (`time_epoch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table for feed data from ffp unit';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_cumulative_per_day
DROP TABLE IF EXISTS `tbl_cumulative_per_day`;
CREATE TABLE IF NOT EXISTS `tbl_cumulative_per_day` (
  `time_epoch` int(32) NOT NULL,
  `unit` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `instance` int(11) NOT NULL,
  `D_Algae` float DEFAULT NULL,
  `D_CD` float DEFAULT NULL,
  `D_CO2` float DEFAULT NULL,
  `D_PAR` float DEFAULT NULL,
  `D_eff` float DEFAULT NULL,
  `D_feed` float DEFAULT NULL,
  `D_g` float DEFAULT NULL,
  `D_harvest` float DEFAULT NULL,
  `D_Co2_m2` float DEFAULT NULL,
  `C02_Conv` float DEFAULT NULL,
  `D_g_total` float DEFAULT NULL,
  `D_cd_measure` float DEFAULT NULL,
  `D_cd_update` float DEFAULT NULL,
  PRIMARY KEY (`time_epoch`,`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table to store cumulative production parameters per day.';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_cumulative_per_hour
DROP TABLE IF EXISTS `tbl_cumulative_per_hour`;
CREATE TABLE IF NOT EXISTS `tbl_cumulative_per_hour` (
  `time_epoch` int(32) NOT NULL,
  `unit` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `instance` int(11) NOT NULL,
  `D_Algae` float DEFAULT NULL,
  `D_CD` float DEFAULT NULL,
  `D_CO2` float DEFAULT NULL,
  `D_PAR` float DEFAULT NULL,
  `D_eff` float DEFAULT NULL,
  `D_feed` float DEFAULT NULL,
  `D_g` float DEFAULT NULL,
  `D_harvest` float DEFAULT NULL,
  `D_Co2_m2` float DEFAULT NULL,
  `C02_Conv` float DEFAULT NULL,
  `D_g_total` float DEFAULT NULL,
  `D_cd_measure` float DEFAULT NULL,
  `D_cd_update` float DEFAULT NULL,
  PRIMARY KEY (`time_epoch`,`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table to store cumulative production parameters per hour.';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_feed_ffu_data
DROP TABLE IF EXISTS `tbl_feed_ffu_data`;
CREATE TABLE IF NOT EXISTS `tbl_feed_ffu_data` (
  `time_epoch` int(32) NOT NULL,
  `date_time` datetime NOT NULL,
  `LT10_DB` float DEFAULT NULL,
  `LT41_DB` float DEFAULT NULL,
  `pH` float DEFAULT NULL,
  `LT71_DB` float DEFAULT NULL,
  `PT_air` float DEFAULT NULL,
  `PT_CO2` float DEFAULT NULL,
  `PT_300mbar` float DEFAULT NULL,
  `PT_water` float DEFAULT NULL,
  `TTin` float DEFAULT NULL,
  `TTout` float DEFAULT NULL,
  PRIMARY KEY (`time_epoch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='feeding data from scada unit ffu';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_feed_lookup
DROP TABLE IF EXISTS `tbl_feed_lookup`;
CREATE TABLE IF NOT EXISTS `tbl_feed_lookup` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` int(11) NOT NULL,
  `species` int(11) NOT NULL,
  `instance` int(11) NOT NULL,
  `start_time` int(32) NOT NULL,
  `end_time` int(32) NOT NULL,
  `date` date NOT NULL,
  `recipe_ID` int(11) NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table to record feeding data related to each PBR,  ie start and end  time of one feeding instance and what recepies feed during that time';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_log_category
DROP TABLE IF EXISTS `tbl_log_category`;
CREATE TABLE IF NOT EXISTS `tbl_log_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_log_data
DROP TABLE IF EXISTS `tbl_log_data`;
CREATE TABLE IF NOT EXISTS `tbl_log_data` (
  `date_time` datetime NOT NULL,
  `time_epoch` int(64) NOT NULL,
  `category` int(64) DEFAULT NULL,
  `unit` int(64) DEFAULT NULL,
  `parameter` int(64) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `new_value` longtext DEFAULT NULL,
  `old_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_log_parameters
DROP TABLE IF EXISTS `tbl_log_parameters`;
CREATE TABLE IF NOT EXISTS `tbl_log_parameters` (
  `prm_id` int(11) NOT NULL AUTO_INCREMENT,
  `prm_name` varchar(50) NOT NULL,
  PRIMARY KEY (`prm_id`),
  UNIQUE KEY `prm_name` (`prm_name`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_pbr_data
DROP TABLE IF EXISTS `tbl_pbr_data`;
CREATE TABLE IF NOT EXISTS `tbl_pbr_data` (
  `trial_no` int(64) NOT NULL,
  `primary_key` bigint(20) NOT NULL,
  `_timeString` datetime NOT NULL,
  `unit` int(16) NOT NULL DEFAULT 0,
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
  `C_PAR` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='table to store photobioreactor process parameters';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_pbr_lookup
DROP TABLE IF EXISTS `tbl_pbr_lookup`;
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
DROP TABLE IF EXISTS `tbl_species`;
CREATE TABLE IF NOT EXISTS `tbl_species` (
  `species_id` int(11) NOT NULL AUTO_INCREMENT,
  `species_name` varchar(50) NOT NULL,
  PRIMARY KEY (`species_id`),
  UNIQUE KEY `species_name` (`species_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='index table for list of species using';

-- Data exporting was unselected.

-- Dumping structure for table data_dashboard.tbl_unit
DROP TABLE IF EXISTS `tbl_unit`;
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


/* New tbl_cumulative_per_day */;
CREATE TABLE `tbl_cumulative_per_day` (
	`time_stamp` INT(64) NOT NULL,
	`date_time` DATETIME NOT NULL,
	`unit` INT(16) NOT NULL,
	`trial_no` INT(16) NOT NULL,
	`species` INT(16) NOT NULL,
	`D_CD_gpl` FLOAT(32) NULL DEFAULT NULL,
	`Co2_Conv` FLOAT(32) NULL DEFAULT NULL,
	`D_CO2_g` FLOAT(32) NULL DEFAULT NULL,
	`D_CO2_gpm` FLOAT(32) NULL DEFAULT NULL,
	`D_Co2_Conv_gpg` FLOAT(32) NULL DEFAULT NULL,
	`D_Feed_l` FLOAT(32) NULL DEFAULT NULL,
	`D_Harvest_l` FLOAT(32) NULL DEFAULT NULL,
	`D_Harvest_Algae_g` FLOAT(32) NULL DEFAULT NULL,
	`D_PAR_molpm` FLOAT(32) NULL DEFAULT NULL,
	`D_eff_percent` FLOAT(32) NULL DEFAULT NULL,
	`D_Productivity_g` FLOAT(32) NULL DEFAULT NULL,
	`D_Productivity_gpm` FLOAT(32) NULL DEFAULT NULL,
	`PAR_2Algae_Conv` FLOAT(32) NULL DEFAULT NULL,
	`R_Surface_m` FLOAT(32) NULL DEFAULT NULL,
	`R_Biomass_kg` FLOAT(32) NULL DEFAULT NULL,
	`R_Volume_l` FLOAT(32) NULL DEFAULT NULL,
	PRIMARY KEY (`time_stamp`, `unit`)
)
COMMENT='cumulative photobio reactor data per day'
COLLATE='utf8mb3_general_ci'
;
