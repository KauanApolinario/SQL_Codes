#criação banco

#GRUPO 1 CAue, Kauan, Yago     TI-2A

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
  `hora` TIME
  );
  
  

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
  
  #isersão banco
  
  USE `olympus_computingDB`;

DELETE FROM produtos;
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Memória RAM",363.29); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Fonte de alimentação",316.19); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Monitor",609.88); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Processador",397.49); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Placa-mãe",576.45); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Teclado",199.99); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Mouse",70.00); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Placa de vídeo",415.29); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Cartão SD",35.00); 
INSERT INTO `produtos` (`nome`,`preco`) VALUES ("Cooler",174.99); 

DELETE FROM estoque;
INSERT INTO `estoque` (`quantidade`) VALUES (7);
INSERT INTO `estoque` (`quantidade`) VALUES (4);
INSERT INTO `estoque` (`quantidade`) VALUES (3);
INSERT INTO `estoque` (`quantidade`) VALUES (5);
INSERT INTO `estoque` (`quantidade`) VALUES (2);
INSERT INTO `estoque` (`quantidade`) VALUES (12);
INSERT INTO `estoque` (`quantidade`) VALUES (9);
INSERT INTO `estoque` (`quantidade`) VALUES (4);
INSERT INTO `estoque` (`quantidade`) VALUES (21);
INSERT INTO `estoque` (`quantidade`) VALUES (6);

DELETE FROM vendas;
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (1,1,1,1,363.29,"2022-01-07","11:36:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (2,2,2,2,632.38,"2022-02-04","17:41:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (3,3,3,3,1829.64,"2022-03-12","22:09:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (4,4,1,4,1589.96,"2022-04-21","23:22:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (5,5,2,5,2882.25,"2022-05-09","00:57:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (6,6,3,6,1199.94,"2022-06-22","13:13:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (7,7,1,7,490.00,"2022-07-16","09:30:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (8,8,2,8,3322.32,"2022-08-01","16:09:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (9,9,3,9,315.00,"2022-09-24","12:08:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (10,10,2,10,1749.90,"2022-10-30","06:57:58");

DELETE FROM funcionarios;
INSERT INTO `funcionarios` (`nome`,`CPF`,`data_nascimento`,`salario`) VALUES ("Cauê",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`nome`,`CPF`,`data_nascimento`,`salario`) VALUES ("Kauan",52261789760,"2001-09-06",3142);
INSERT INTO `funcionarios` (`nome`,`CPF`,`data_nascimento`,`salario`) VALUES ("Yago",52261789760,"2001-09-06",1215);

DELETE FROM cliente;
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Andressa",56389762436,"andressa.a.campos@gmail.com",19981253421);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Geovana",58184623740,"geovana.c.teodoro@gmail.com",19995627182);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Bruna",54851263485,"bruna.c.teo@gmail.com",19902715204);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Isabela",55312504216,"isa.c.pereira@gmail.com",19938124372);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Daniela",59841230654,"andressa.a.campos@gmail.com",19984930256);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Lívia",56642189450,"livia.borges@gmail.com",19995742634);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Alana",55120364580,"alana.borges@gmail.com",19907142516);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Letícia",50215468923,"leticia.politano@gmail.com",19989456723);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Larissa",53382150916,"lari.f.goes@gmail.com",19974851063);
INSERT INTO `cliente` (`nome`,`CPF`,`e-mail`,`telefone`) VALUES ("Rebeca",54102356984,"rebeca.trindade@gmail.com",19974892546);

#join`s
delimiter $$
SELECT * FROM vendas
INNER JOIN cliente
ON vendas.cod_cliente = cliente.cod_cliente;

SELECT * FROM estoque 
LEFT JOIN vendas 
ON estoque.cod_prod = vendas.cod_prod;

SELECT * FROM vendas
RIGHT JOIN funcionarios
ON vendas.cod_funcionario = funcionarios.cod_funcionario;
$$

#procedimento

delimiter $$
CREATE PROCEDURE `AtualizaEstoque`(`cod` int, `qtde_comprada` int)
BEGIN
    update estoque set quantidade = quantidade - qtde_comprada where cod_prod = cod;
END

$$

#função
delimiter $$
CREATE FUNCTION `total`(id int, quant int) RETURNS decimal(11,2)
begin
	declare val_unit decimal(10,2);
    declare valor_return decimal(11,2);
    
	select preco into val_unit  from produtos where id = cod_prod;
	
    set valor_return = val_unit*quant;
     
    return (valor_return);
end
$$

delimiter //
CREATE FUNCTION `Rendimento_mes`(frase_entrada char(70)) RETURNS varchar(100) CHARSET latin1
begin
	declare soma_tot decimal(10,2);
    declare situacao varchar(90);

     select sum(total) into soma_tot  from vendas;
     
	if soma_tot <= 10000
    then
		set situacao = concat(frase_entrada,"baixa");
    elseif soma_tot > 1000 and soma_tot <= 1500
	then
		set situacao = concat(frase_entrada,"media");
	elseif soma_tot >= 1500
    then
		set situacao = concat(frase_entrada,"alta");
	end if;
    return (situacao);
end
//

#triggers

delimiter $$
CREATE TRIGGER `olympus_computingdb`.`vendas_AFTER_INSERT` AFTER INSERT ON `vendas` FOR EACH ROW
BEGIN
	CALL AtualizaEstoque(new.cod_prod,new.quantidade);
END
$$

/**/
delimiter //
CREATE TRIGGER `olympus_computingdb`.`vendas_BEFORE_INSERT` BEFORE INSERT ON `vendas` FOR EACH ROW
BEGIN
	set new.total = total(new.cod_prod,new.quantidade);
END
//

delimiter $$
create event `renova_estoque`
on schedule every 1 minute
starts now()
do
begin
declare val_inicial int;
set val_inicial = 5;
    update estoque set quantidade = val_incial;
end
$$

delimiter //
SELECT * FROM estoque
INNER JOIN vendas
ON vendas.cod_prod = estoque.cod_prod;
#SELECT * FROM olympus_computingdb.vendas;

INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`data`,`hora`) VALUES (1,1,1,1,now(),curtime());

SELECT * FROM olympus_computingdb.estoque;
SELECT * FROM olympus_computingdb.vendas;

show events;
show triggers;
//
