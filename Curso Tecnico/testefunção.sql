delimiter $$

CREATE DEFINER=`root`@`localhost` FUNCTION `Rendimento_mes`(frase_entrada char(70)) RETURNS varchar(100) CHARSET latin1
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
end;
$$