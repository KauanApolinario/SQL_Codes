CREATE DATABASE IF NOT EXISTS `olympus_computingDB` ;
USE `olympus_computingDB` ;

CREATE TABLE IF NOT EXISTS `olympus_computingDB`.`produtos` (
  `cod_prod` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `preco` DOUBLE(10,2) NULL,
  PRIMARY KEY (`cod_prod`));

CREATE TABLE IF NOT EXISTS `olympus_computingDB`.`estoque` (
  `cod_prod` INT NOT NULL AUTO_INCREMENT,
  `quantidade` INT NULL,
  PRIMARY KEY (`cod_prod`));
  
CREATE TABLE IF NOT EXISTS `olympus_computingDB`.`vendas` (
  `cod_prod` INT NOT NULL,
  `cod_cliente` INT NOT NULL,
  `cod_funcionario` INT NOT NULL,
  `quantidade` INT NULL,
  `total` INT NULL,
  `data` DATE,
  `hora` TIME,
  PRIMARY KEY (`cod_prod`));

CREATE TABLE IF NOT EXISTS `olympus_computingDB`.`funcionarios` (
  `cod_funcionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45),
  `CPF` VARCHAR(12),
  `data_nascimento` date,
  `salario` DOUBLE(10,2),
  PRIMARY KEY (`cod_funcionario`));
  
  CREATE TABLE IF NOT EXISTS `olympus_computingDB`.`cliente` (
  `cod_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45),
  `CPF` VARCHAR(12),
  `e-mail` VARCHAR(50),
  `telefone` VARCHAR(18),
  PRIMARY KEY (`cod_cliente`));
  
  
  #DROP DATABASE olympus_computingdb;
  