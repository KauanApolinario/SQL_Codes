CREATE DEFINER=`root`@`localhost` PROCEDURE `AtualizaEstoque`(`cod` int, `qtde_comprada` int)
BEGIN
	
	#select cod=cod_prod, quant=quantidade from vendas;
    
    update estoque set quantidade = quantidade - qtde_comprada where cod_prod = cod;
END