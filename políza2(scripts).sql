-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema poliza2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema poliza2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `poliza2` DEFAULT CHARACTER SET utf8 ;
USE `poliza2` ;

-- -----------------------------------------------------
-- Table `poliza2`.`beneficiario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza2`.`beneficiario` (
  `dni` VARCHAR(16) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_nacim` VARCHAR(45) NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza2`.`políza_vid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza2`.`políza_vid` (
  `numero` INT NOT NULL,
  `fecha_ini` DATETIME NULL,
  `fecha_fin` DATETIME NULL,
  `beneficiario_dni` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_vid_beneficiario_idx` (`beneficiario_dni` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza2`.`políza_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza2`.`políza_vivienda` (
  `numero` INT NOT NULL,
  `fecha_ini` DATE NULL,
  `fecha_fin` DATE NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza2`.`políza_aut`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza2`.`políza_aut` (
  `numero` INT NOT NULL,
  `fecha_ini` DATE NULL,
  `fecha_fin` DATE NULL,
  `matricula` INT NULL,
  `políza_vivienda_numero` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_aut_políza_vivienda1_idx` (`políza_vivienda_numero` ASC) VISIBLE,
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
