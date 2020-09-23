-- MySQL Script generated by MySQL Workbench
-- Wed Sep 23 14:30:53 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema loja_veiculos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema loja_veiculos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loja_veiculos` DEFAULT CHARACTER SET utf8 ;
USE `loja_veiculos` ;

-- -----------------------------------------------------
-- Table `loja_veiculos`.`proprietarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_veiculos`.`proprietarios` (
  `id_dono` INT NOT NULL AUTO_INCREMENT,
  `nome_dono` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dono`),
  UNIQUE INDEX `id_dono_UNIQUE` (`id_dono` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_veiculos`.`tb_veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_veiculos`.`tb_veiculo` (
  `id_veiculo` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `placa` VARCHAR(45) NOT NULL,
  `ano` VARCHAR(45) NOT NULL,
  `proprietarios_id_dono` INT NOT NULL,
  PRIMARY KEY (`id_veiculo`, `proprietarios_id_dono`),
  INDEX `fk_tb_veiculo_proprietarios_idx` (`proprietarios_id_dono` ASC),
  UNIQUE INDEX `id_veiculo_UNIQUE` (`id_veiculo` ASC),
  CONSTRAINT `fk_tb_veiculo_proprietarios`
    FOREIGN KEY (`proprietarios_id_dono`)
    REFERENCES `loja_veiculos`.`proprietarios` (`id_dono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
