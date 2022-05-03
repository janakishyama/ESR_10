CREATE DATABASE `data_dashboard` /*!40100 COLLATE 'utf8mb3_general_ci' */;
SHOW DATABASES;
USE `data_dashboard`;


CREATE TABLE `tbl_unit` (
	`unit_id` INT(8) NOT NULL AUTO_INCREMENT,
	`unit_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`unit_id`),
	UNIQUE INDEX `unit_name` (`unit_name`)
)
COMMENT='index table for storing photobioreactor unit names.'
COLLATE='utf8mb3_general_ci'
;

INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('1', 'FFU');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('2', 'FFP');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('3', 'FPC11');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('4', 'FPC12');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('5', 'FPC13');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('6', 'FPC14');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('7', 'FPC21');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('8', 'FPC22');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('9', 'FPC23');
INSERT INTO `data_dashboard`.`tbl_unit` (`unit_id`, `unit_name`) VALUES ('10', 'FPC24');


CREATE TABLE `tbl_species` (
	`species_id` INT NOT NULL AUTO_INCREMENT,
	`species_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`species_id`),
	UNIQUE INDEX `species_name` (`species_name`)
)
COMMENT='index table for list of species using'
COLLATE='utf8mb3_general_ci'
;

INSERT INTO `data_dashboard`.`tbl_species` (`species_id`, `species_name`) VALUES ('1', 'Chaetoceros Calcitrans Pumilus');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Chaetoceros Muelleri');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Diacronema Lutheri (Pavlova)');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Isochrysis Galbana');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('NannoChloropsis SP');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Rhodomonas Baltica');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Rhodomonas Salina');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Skeletonema Marinoi');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Tetraselmis Chuii');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Tetraselmis Suecica');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Thalassiosira Pseudonna');
INSERT INTO `data_dashboard`.`tbl_species` (`species_name`) VALUES ('Thalassiosira Weissflogii');

CREATE TABLE `tbl_log_category` (
	`category_id` INT NOT NULL AUTO_INCREMENT,
	`category_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`category_id`),
	UNIQUE INDEX `category_name` (`category_name`)
)
COLLATE='utf8mb3_general_ci'
;


CREATE TABLE `tbl_log_parameter` (
	`parameter_id` INT NOT NULL AUTO_INCREMENT,
	`parameter_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`parameter_id`),
	UNIQUE INDEX `parameter_name` (`parameter_name`)
)
COMMENT='index table for parameters logged in log data set'
COLLATE='utf8mb3_general_ci'
;


CREATE TABLE `tbl_pbr_data` (
	`time_epoch` INT(32) NOT NULL,
	`unit` INT NOT NULL,
	`date_time` DATETIME NOT NULL,
	`species` INT NOT NULL,
	`trial_no` INT NOT NULL,
	`qt` FLOAT NULL DEFAULT 0,
	`qc` FLOAT NULL DEFAULT 0,
	`qb` FLOAT NULL DEFAULT 0,
	`qr` FLOAT NULL DEFAULT 0,
	`qg` FLOAT NULL DEFAULT 0,
	`qt_corr` FLOAT NULL DEFAULT 0,
	`tt0` FLOAT NULL DEFAULT 0,
	`tt1` FLOAT NULL DEFAULT 0,
	`ph` FLOAT NULL DEFAULT 0,
	`l_reactor` FLOAT NULL DEFAULT 0,
	`c_g` FLOAT NULL DEFAULT 0,
	`c_eff` FLOAT NULL DEFAULT 0,
	`c_cd` FLOAT NULL DEFAULT 0,
	`t_cd` FLOAT NULL DEFAULT 0,
	`c_d_g` FLOAT NULL DEFAULT 0,
	`c_d_eff` FLOAT NULL DEFAULT 0,
	`ft1` FLOAT NULL DEFAULT 0,
	`ft2` FLOAT NULL DEFAULT 0,
	`pt1_v4` FLOAT NULL DEFAULT 0,
	`pt2` FLOAT NULL DEFAULT 0,
	`ft3` FLOAT NULL DEFAULT 0,
	`co2_in` FLOAT NULL DEFAULT 0,
	`co2_v2` FLOAT NULL DEFAULT 0,
	`co2_sys` FLOAT NULL DEFAULT 0,
	`lt1` FLOAT NULL DEFAULT 0,
	`c_par` FLOAT NULL DEFAULT 0,
	PRIMARY KEY (`time_epoch`, `unit`)
)
COMMENT='table to store photobioreactor process parameters'
COLLATE='utf8mb3_general_ci'
;

CREATE TABLE `tbl_log_data` (
	`time_epoch` INT(32) NOT NULL,
	`unit` INT NOT NULL,
	`date_time` DATETIME NOT NULL,
	`parameter` INT NOT NULL,
	`category` INT NOT NULL,
	`message` VARCHAR(128) NULL DEFAULT '',
	`old_value` VARCHAR(64) NULL DEFAULT '',
	`new_value` VARCHAR(64) NULL DEFAULT '',
	PRIMARY KEY (`time_epoch`, `unit`)
)
COMMENT='table to store SCADA log messages'
COLLATE='utf8mb3_general_ci'
;

CREATE TABLE `tbl_cumulative_per_hour` (
	`time_epoch` INT(32) NOT NULL,
	`unit` INT NOT NULL,
	`date_time` DATETIME NOT NULL,
	`instence` INT NOT NULL,
	`D_Algae` FLOAT NULL,
	`D_CD` FLOAT NULL,
	`D_CO2` FLOAT NULL,
	`D_PAR` FLOAT NULL,
	`D_eff` FLOAT NULL,
	`D_feed` FLOAT NULL,
	`D_g` FLOAT NULL,
	`D_harvest` FLOAT NULL,
	`D_Co2_m2` FLOAT NULL,
	`C02_Conv` FLOAT NULL,
	`D_g_total` FLOAT NULL,
	`D_cd_measure` FLOAT NULL,
	`D_cd_update` FLOAT NULL,
	PRIMARY KEY (`time_epoch`, `unit`)
)
COMMENT='table to store cumulative production parameters per hour.'
COLLATE='utf8mb3_general_ci'
;


CREATE TABLE `tbl_cumulative_per_day` (
	`time_epoch` INT(32) NOT NULL,
	`unit` INT NOT NULL,
	`date_time` DATETIME NOT NULL,
	`instence` INT NOT NULL,
	`D_Algae` FLOAT NULL,
	`D_CD` FLOAT NULL,
	`D_CO2` FLOAT NULL,
	`D_PAR` FLOAT NULL,
	`D_eff` FLOAT NULL,
	`D_feed` FLOAT NULL,
	`D_g` FLOAT NULL,
	`D_harvest` FLOAT NULL,
	`D_Co2_m2` FLOAT NULL,
	`C02_Conv` FLOAT NULL,
	`D_g_total` FLOAT NULL,
	`D_cd_measure` FLOAT NULL,
	`D_cd_update` FLOAT NULL,
	PRIMARY KEY (`time_epoch`, `unit`)
)
COMMENT='table to store cumulative production parameters per day.'
COLLATE='utf8mb3_general_ci'
;


CREATE TABLE `tbl_feed_ffu_data` (
	`time_epoch` INT(32) NOT NULL,
	`date_time` DATETIME NOT NULL,
	`LT10_DB` FLOAT NULL,
	`LT41_DB` FLOAT NULL,
	`pH` FLOAT NULL,
	`LT71_DB` FLOAT NULL,
	`PT_air` FLOAT NULL,
	`PT_CO2` FLOAT NULL,
	`PT_300mbar` FLOAT NULL,
	`PT_water` FLOAT NULL,
	`TTin` FLOAT NULL,
	`TTout` FLOAT NULL,
	PRIMARY KEY (`time_epoch`)
)
COMMENT='feeding data from scada unit ffu'
COLLATE='utf8mb3_general_ci'
;

CREATE TABLE `table_feed_ffp_data` (
	`time_epoch` INT(32) NOT NULL,
	`date_time` DATETIME NOT NULL,
	`LT10` FLOAT NULL,
	`PT10` FLOAT NULL,
	`PT11` FLOAT NULL,
	`LT41` FLOAT NULL,
	`LT42` FLOAT NULL,
	`LT43` FLOAT NULL,
	`LT44` FLOAT NULL,
	`LT45` FLOAT NULL,
	`LT51` FLOAT NULL,
	`LT52` FLOAT NULL,
	`LT53` FLOAT NULL,
	`LT54` FLOAT NULL,
	`LT55` FLOAT NULL,
	`LT61` FLOAT NULL,
	`LT62` FLOAT NULL,
	`LT63` FLOAT NULL,
	`LT64` FLOAT NULL,
	`LT65` FLOAT NULL,
	`LT71` FLOAT NULL,
	`LT72` FLOAT NULL,
	`LT73` FLOAT NULL,
	`LT74` FLOAT NULL,
	`LT75` FLOAT NULL,
	PRIMARY KEY (`time_epoch`)
)
COMMENT='table for feed data from ffp unit'
COLLATE='utf8mb3_general_ci'
;

CREATE TABLE `tbl_pbr_lookup` (
	`instance` INT NOT NULL AUTO_INCREMENT,
	`unit` INT NOT NULL,
	`species` INT NOT NULL,
	`start_date` INT NOT NULL,
	`end_date` INT NOT NULL,
	`remark` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`instance`)
)
COMMENT='look up or search table for pbr data. Can use to slect the species trail (start to end) easily from PBR data table'
COLLATE='utf8mb3_general_ci'
;

CREATE TABLE `tbl_feed_lookup` (
	`feed_id` INT NOT NULL AUTO_INCREMENT,
	`unit` INT NOT NULL,
	`species` INT NOT NULL,
	`instance` INT NOT NULL,
	`start_time` INT(32) NOT NULL,
	`end_time` INT(32) NOT NULL,
	`date` DATE NOT NULL,
	`recipe_ID` INT NOT NULL,
	PRIMARY KEY (`feed_id`)
)
COMMENT='table to record feeding data related to each PBR,  ie start and end  time of one feeding instance and what recepies feed during that time'
COLLATE='utf8mb3_general_ci'
;
