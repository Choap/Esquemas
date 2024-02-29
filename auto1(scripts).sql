-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Vehiculo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Vehiculo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Vehiculo` DEFAULT CHARACTER SET utf8 ;
USE `Vehiculo` ;

-- -----------------------------------------------------
-- Table `Vehiculo`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Vehiculo`.`Empleado` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Vehiculo`.`Vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Vehiculo`.`Vehiculo` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `fecha_de_inicio` DATETIME(15) NULL,
  `Empleado_codemp` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_Vehiculo_Empleado_idx` (`Empleado_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
