USE `olympus_computingDB`;

DELETE FROM produtos;
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (1,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (2,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (3,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (4,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (5,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (6,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (7,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (8,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (9,'',2019); 
INSERT INTO `produtos` (`cod_prod`,`nome`,`preco`) VALUES (10,'',2019); 

DELETE FROM estoque;
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (1,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (2,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (3,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (4,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (5,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (6,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (7,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (8,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (9,5);
INSERT INTO `estoque` (`cod_prod`,`quantidade`) VALUES (10,5);

DELETE FROM vendas;
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (1,1,1,1,/*mult*/"2022-01-07","11:36:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (2,2,2,2,/*mult*/"2022-02-04","17:41:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (3,3,3,3,/*mult*/"2022-03-12","22:09:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (4,4,4,4,/*mult*/"2022-04-21","23:22:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (5,5,5,5,/*mult*/"2022-05-09","00:57:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (6,6,6,6,/*mult*/"2022-06-22","13:13:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (7,7,7,7,/*mult*/"2022-07-16","09:30:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (8,8,8,8,/*mult*/"2022-08-01","16:09:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (9,9,9,9,/*mult*/"2022-09-24","12:08:58");
INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (10,10,10,10,/*mult*/"2022-10-30","06:57:58");

DELETE FROM funcionarios;
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (1,"Larissa",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (2,"Samanta",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (3,"Manuela",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (4,"Sandra",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (5,"Aline",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (6,"Thamiris",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (7,"Letícia",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (8,"Cauê",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (9,"Kauan",52261789760,"2001-09-06",1212);
INSERT INTO `funcionarios` (`cod_funcionario`,`nome`,`CPF`,`data_nascimento`,`salario`) VALUES (10,"Yago",52261789760,"2001-09-06",1212);

DELETE FROM cliente;
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Andressa",56389762436,"andressa.a.campos@gmail.com",19981253421);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Geovana",58184623740,"geovana.c.teodoro@gmail.com",19995627182);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Bruna",54851263485,"andressa.a.campos@gmail.com",19902715204);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Isabela",55312504216,"andressa.a.campos@gmail.com",19938124372);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Daniela",59841230654,"andressa.a.campos@gmail.com",19984930256);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Lívia",56642189450,"andressa.a.campos@gmail.com",19995742634);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Alana",55120364580,"andressa.a.campos@gmail.com",19907142516);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Mariana",50215468923,"andressa.a.campos@gmail.com",19989456723);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Murilo",53382150916,"andressa.a.campos@gmail.com",19974851063);
INSERT INTO `cliente` (`cod_cliente`,`nome`,`CPF`,`e-mail`,`telefone`) VALUES (NULL,"Marcos",54102356984,"andressa.a.campos@gmail.com",19974892546);





