SELECT * FROM vendas
INNER JOIN cliente
ON vendas.cod_cliente = cliente.cod_cliente;

SELECT * FROM estoque 
LEFT JOIN vendas 
ON estoque.cod_prod = vendas.cod_prod;

SELECT * FROM vendas
RIGHT JOIN funcionarios
ON vendas.cod_funcionario = funcionarios.cod_funcionario;