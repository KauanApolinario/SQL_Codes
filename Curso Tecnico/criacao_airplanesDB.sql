CREATE DATABASE IF NOT EXISTS `airplanesDB` ;
USE `airplanesDB` ;

CREATE TABLE IF NOT EXISTS `airplanesDB`.`avioes` (
  `cod_aviao` INT NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(45) NULL,
  `registro` VARCHAR(45) NULL,
  `ano` INT(4) NULL,
  `img` varchar(500) NULL,
  PRIMARY KEY (`cod_aviao`));

CREATE TABLE IF NOT EXISTS `airplanesDB`.`pecas` (
  `cod_peca` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `duracao` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_peca`));
  
CREATE TABLE IF NOT EXISTS `airplanesDB`.`pecas_avioes` (
  `cod_aviao` INT NOT NULL,
  `cod_peca` INT NOT NULL,
  `horas_restantes` INT(6));

