-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema MiPortafolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema MiPortafolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MiPortafolio` DEFAULT CHARACTER SET utf8 ;
USE `MiPortafolio` ;

-- -----------------------------------------------------
-- Table `MiPortafolio`.`PERFIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`PERFIL` (
  `id_perfil` INT NOT NULL,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `ocupacion` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MiPortafolio`.`EXPERIENCIA_LABORAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`EXPERIENCIA_LABORAL` (
  `id_experiencia` INT NOT NULL,
  `titulo` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `descripcion` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `periodo` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `lugar` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id_experiencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MiPortafolio`.`EDUCACION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`EDUCACION` (
  `id_institucion` INT NOT NULL,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `ubicacion` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `titulo` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `periodo` INT NOT NULL,
  PRIMARY KEY (`id_institucion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MiPortafolio`.`HABILIDADES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`HABILIDADES` (
  `id_habilidad` INT NOT NULL,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NULL,
  `porcentaje` INT NULL,
  PRIMARY KEY (`id_habilidad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MiPortafolio`.`PROYECTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`PROYECTOS` (
  `id_proyecto` INT NOT NULL,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `descripcion` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id_proyecto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MiPortafolio`.`ACERCA_DE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MiPortafolio`.`ACERCA_DE` (
  `id_acerca` INT NOT NULL,
  `descripcion` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `residencia` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id_acerca`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
