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


