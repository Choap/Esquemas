-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Auto2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Auto2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Auto2` DEFAULT CHARACTER SET utf8 ;
USE `Auto2` ;

-- -----------------------------------------------------
-- Table `Auto2`.`vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto2`.`vehiculo` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auto2`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto2`.`empleado` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `matricula` VARCHAR(45) NULL,
  `fecha_inicio` DATE NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
