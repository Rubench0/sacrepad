-- MySQL Script generated by MySQL Workbench
-- mar 30 abr 2019 22:20:30 -04
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sacrepad
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sacrepad
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sacrepad` DEFAULT CHARACTER SET utf8 ;
USE `sacrepad` ;

-- -----------------------------------------------------
-- Table `sacrepad`.`facilitator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`facilitator` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `identification` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `profession` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_facilitator_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_facilitator_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `name2` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `surname2` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `identification` VARCHAR(45) NULL,
  `admitted` TINYINT(1) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_student_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_student_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`user_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`user_data` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `phone` VARCHAR(12) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL,
  `password` VARCHAR(1000) NULL,
  `email` VARCHAR(300) NULL,
  `is_active` TINYINT(1) NULL,
  `role` VARCHAR(45) NULL,
  `user_data_id` INT NULL,
  `student_id` INT NULL,
  `facilitator_id` INT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `attempts` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_user_data_idx` (`user_data_id` ASC),
  INDEX `fk_user_student1_idx` (`student_id` ASC),
  INDEX `fk_user_facilitator1_idx` (`facilitator_id` ASC),
  CONSTRAINT `fk_user_facilitator1`
    FOREIGN KEY (`facilitator_id`)
    REFERENCES `sacrepad`.`facilitator` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `sacrepad`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_user_data`
    FOREIGN KEY (`user_data_id`)
    REFERENCES `sacrepad`.`user_data` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`cohort`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`cohort` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `active` TINYINT(1) NULL,
  `initial_date` DATETIME NULL,
  `final_date` DATETIME NULL,
  `year` VARCHAR(45) NULL,
  `code` VARCHAR(45) NULL,
  `limix` VARCHAR(11) NULL DEFAULT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cohort_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_cohort_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`n_classification_subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`n_classification_subject` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_n_classification_subject_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_n_classification_subject_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`n_types_subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`n_types_subject` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_n_types_subject_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_n_types_subject_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`subject` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(1000) NULL,
  `n_classification_subject_id` INT NULL DEFAULT NULL,
  `n_types_subject_id` INT NULL DEFAULT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_subject_n_classification_subject1_idx` (`n_classification_subject_id` ASC),
  INDEX `fk_subject_n_types_subject1_idx` (`n_types_subject_id` ASC),
  INDEX `fk_subject_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_subject_n_classification_subject1`
    FOREIGN KEY (`n_classification_subject_id`)
    REFERENCES `sacrepad`.`n_classification_subject` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subject_n_types_subject1`
    FOREIGN KEY (`n_types_subject_id`)
    REFERENCES `sacrepad`.`n_types_subject` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subject_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`n_days`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`n_days` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `day` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_n_days_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_n_days_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`classroom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`classroom` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `edifice` VARCHAR(45) NULL,
  `floor` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_classroom_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_classroom_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`lection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`lection` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `subject_id` INT NULL DEFAULT NULL,
  `classroom_id` INT NULL DEFAULT NULL,
  `facilitator_id` INT NULL DEFAULT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  `cohort_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_class_subject1_idx` (`subject_id` ASC),
  INDEX `fk_class_classroom1_idx` (`classroom_id` ASC),
  INDEX `fk_class_facilitator1_idx` (`facilitator_id` ASC),
  INDEX `fk_class_user1_idx` (`user_id` ASC),
  INDEX `fk_lection_cohort1_idx` (`cohort_id` ASC),
  CONSTRAINT `fk_class_classroom1`
    FOREIGN KEY (`classroom_id`)
    REFERENCES `sacrepad`.`classroom` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_facilitator1`
    FOREIGN KEY (`facilitator_id`)
    REFERENCES `sacrepad`.`facilitator` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_subject1`
    FOREIGN KEY (`subject_id`)
    REFERENCES `sacrepad`.`subject` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lection_cohort1`
    FOREIGN KEY (`cohort_id`)
    REFERENCES `sacrepad`.`cohort` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`inscription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`inscription` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `student_id` INT NULL DEFAULT NULL,
  `aproved` TINYINT(1) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL,
  `cohort_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_inscription_student1_idx` (`student_id` ASC),
  INDEX `fk_inscription_user1_idx` (`user_id` ASC),
  INDEX `fk_inscription_cohort1_idx` (`cohort_id` ASC),
  CONSTRAINT `fk_inscription_cohort1`
    FOREIGN KEY (`cohort_id`)
    REFERENCES `sacrepad`.`cohort` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `sacrepad`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`qualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`qualification` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `qualification` INT(11) NULL DEFAULT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NOT NULL,
  `inscription_id` INT NOT NULL,
  `lection_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_qualification_user1_idx` (`user_id` ASC),
  INDEX `fk_qualification_inscription1_idx` (`inscription_id` ASC),
  INDEX `fk_qualification_lection1_idx` (`lection_id` ASC),
  CONSTRAINT `fk_qualification_inscription1`
    FOREIGN KEY (`inscription_id`)
    REFERENCES `sacrepad`.`inscription` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_qualification_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_qualification_lection1`
    FOREIGN KEY (`lection_id`)
    REFERENCES `sacrepad`.`lection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`binnacle_access_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`binnacle_access_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL DEFAULT NULL,
  `date` DATETIME NULL,
  `system` VARCHAR(1000) NULL,
  `device` VARCHAR(45) NULL,
  `adreess` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_binnacle_access_user_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_binnacle_access_user_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`binnacle_actions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`binnacle_actions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  `entity` VARCHAR(45) NULL DEFAULT NULL,
  `action` VARCHAR(45) NULL,
  `date` DATETIME NULL,
  `description` VARCHAR(3000) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_binnacle_actions_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_binnacle_actions_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`n_requirements_student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`n_requirements_student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_n_requirements_student_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_n_requirements_student_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`n_days_has_class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`n_days_has_class` (
  `n_days_id` INT NOT NULL,
  `class_id` INT NOT NULL,
  `class_time` VARCHAR(45) NULL,
  `hours` VARCHAR(45) NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`, `n_days_id`),
  INDEX `fk_n_days_has_class_class1_idx` (`class_id` ASC),
  INDEX `fk_n_days_has_class_n_days1_idx` (`n_days_id` ASC),
  INDEX `fk_n_days_has_class_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_n_days_has_class_class1`
    FOREIGN KEY (`class_id`)
    REFERENCES `sacrepad`.`lection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_n_days_has_class_n_days1`
    FOREIGN KEY (`n_days_id`)
    REFERENCES `sacrepad`.`n_days` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_n_days_has_class_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sacrepad`.`inscription_has_n_requirements_student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sacrepad`.`inscription_has_n_requirements_student` (
  `inscription_id` INT NOT NULL,
  `n_requirements_student_id` INT NOT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`inscription_id`, `n_requirements_student_id`),
  INDEX `fk_inscription_has_n_requirements_student_n_requirements_st_idx` (`n_requirements_student_id` ASC),
  INDEX `fk_inscription_has_n_requirements_student_inscription1_idx` (`inscription_id` ASC),
  INDEX `fk_inscription_has_n_requirements_student_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_inscription_has_n_requirements_student_inscription1`
    FOREIGN KEY (`inscription_id`)
    REFERENCES `sacrepad`.`inscription` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_has_n_requirements_student_n_requirements_stud1`
    FOREIGN KEY (`n_requirements_student_id`)
    REFERENCES `sacrepad`.`n_requirements_student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_has_n_requirements_student_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `sacrepad`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
