-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema poliza3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema poliza3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `poliza3` DEFAULT CHARACTER SET utf8 ;
USE `poliza3` ;

-- -----------------------------------------------------
-- Table `poliza3`.`poliza_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza3`.`poliza_vivienda` (
  `domicilio` INT NOT NULL,
  PRIMARY KEY (`domicilio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza3`.`poliza_auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza3`.`poliza_auto` (
  `matricula` INT NOT NULL,
  `poliza_vivienda_domicilio` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_poliza_auto_poliza_vivienda1_idx` (`poliza_vivienda_domicilio` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `poliza3`.`políza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `poliza3`.`políza` (
  `numero` INT NOT NULL,
  `fecha_ini` VARCHAR(45) NULL,
  `fecha_fin` VARCHAR(45) NULL,
  `tipo` VARCHAR(45) NULL,
  `matricula` VARCHAR(45) NULL,
  `domicilio` VARCHAR(45) NULL,
  `poliza_auto_matricula` INT NOT NULL,
  `poliza_vivienda_domicilio` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_políza_poliza_auto_idx` (`poliza_auto_matricula` ASC) VISIBLE,
  INDEX `fk_políza_poliza_vivienda1_idx` (`poliza_vivienda_domicilio` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
