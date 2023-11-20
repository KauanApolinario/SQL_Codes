/*
CREATE PROCEDURE `total`(id int, quant int, datacomp date, hr time) 
begin
	declare val_unit decimal(10,2);
    declare valor_return decimal(11,2);
    
	select produtos.preco into val_unit  from produtos where id = produtos.cod_prod;

    set valor_return = val_unit*quant;
     
	#INSERT INTO `vendas` (`cod_prod`,`cod_cliente`,`cod_funcionario`,`quantidade`,`total`,`data`,`hora`) VALUES (1,1,1,1,1,now(),curtime());
    update vendas set total = valor_return where data = datacomp and hora = hr;

end
$$
*/
#drop procedure total;

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
drop function total;