delimiter $$

CREATE FUNCTION `total`(id int, quant int) RETURNS decimal(11,2) 
begin
	declare val_unit decimal(10,2);
    declare valor_return decimal(11,2);
    
	select preco into val_unit  from vendas, produtos where vendas.cod_prod=produtos.cod_prod and id = cod_prod;
	
    set valor_return = val_unit*quant;
     

    return (valor_return);
end
$$