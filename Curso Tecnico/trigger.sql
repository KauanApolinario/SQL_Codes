DELIMITER $$
CREATE TRIGGER TR_ESTOQUE 
AFTER INSERT ON vendas 
FOR EACH ROW 
BEGIN
	CALL AtualizaEstoque(new.cod_prod,new.quantidade);
END 
DELIMITER $$;

INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`data`,`hora`) VALUES (3,1,1,1,/*mult*/"2022-01-07","11:36:58");












/*CREATE TRIGGER `TR_Subestoque` 
AFTER INSERT 
ON `vendas` 
BEGIN
	DECLARE @cod int, @quant INT;
            
	select @cod=cod_prod, @quant=quantidade from inserted;
    
    update estoque set quantidade = quantidade - @quant where cod_prod = @cod;
    
END*/