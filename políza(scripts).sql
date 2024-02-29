-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema poliza
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema poliza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `poliza` DEFAULT CHARACTER SET utf8 ;
USE `poliza` ;

-- -----------------------------------------------------
-- Table `poliza`.`políza_aut`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza`.`políza_aut` (
  `numero` INT NOT NULL,
  `matricula` INT NULL,
  PRIMARY KEY (`numero`),
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza`.`políza_viv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza`.`políza_viv` (
  `numero` INT NOT NULL,
  `domicilio` VARCHAR(45) NULL,
  `políza_aut_numero` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_viv_políza_aut1_idx` (`políza_aut_numero` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza`.`políza_vida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza`.`políza_vida` (
  `numero` INT NOT NULL,
  `beneficiario` VARCHAR(45) NULL,
  `políza_viv_numero` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_vida_políza_viv1_idx` (`políza_viv_numero` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza`.`políza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza`.`políza` (
  `numero` INT NOT NULL,
  `fecha_ini` VARCHAR(45) NULL,
  `fecha_fin` VARCHAR(45) NULL,
  `políza_vida_numero` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_políza_vida_idx` (`políza_vida_numero` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
