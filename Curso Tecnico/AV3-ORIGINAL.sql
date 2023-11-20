

### Cauê Cezar, Kauan G. Apolinario, Yago Bastos 2A-TI ###


#1.) Listar todos os elementos da tabela clientes
SELECT clientes.* FROM clientes;

#2.) listar todos os elementos da tabela veículos
SELECT veiculos.* FROM veiculos;

#3.) listar todos os elementos da tabela serviços
SELECT servicos.* FROM servicos;

#4.) listar os elementos da tabela “Clientes” que moram no estado de São Paulo
SELECT clientes.* FROM clientes WHERE estado LIKE "SP";

#5.) listar os elementos da tabela “Clientes” que não moram no estado de São Paulo
SELECT clientes.* FROM clientes WHERE estado NOT LIKE "SP";

#6.) listar os elementos da tabela “Clientes” que moram no bairro Centro em Campinas
SELECT clientes.* FROM clientes WHERE bairro LIKE "Centro" AND cidade LIKE "Campinas";

#7.) listar os elementos da tabela “Clientes” que moram no bairro Centro em qualquer cidade
SELECT clientes.* FROM clientes WHERE bairro LIKE "Centro";

#8.) listar todos os estados existentes na tabela “Clientes”
SELECT clientes.estado FROM clientes;

#9.) listar todos os bairros existentes na tabela “Clientes” sem repetição
SELECT DISTINCT(clientes.bairro) FROM clientes;

#10.)listar os nomes da tabela “Clientes” que começam com a letra “R”
SELECT clientes.nome FROM clientes WHERE clientes.nome LIKE "R%";

#11.)listar os carros que a Marcos Palhares possui
SELECT veiculos.* FROM veiculos, clientes WHERE veiculos.codigo = clientes.codigo AND clientes.nome LIKE "Marcos Palhares";

#12.)listar os carros de 1996 em diante
SELECT veiculos.* FROM veiculos WHERE ano >= 96;

#13.)listar os chapas dos carros de cor Branca
SELECT veiculos.* FROM veiculos WHERE cor LIKE "Branca";

#14.)listar as chapas dos carros que possuam o número “2” na placa
SELECT veiculos.* FROM veiculos WHERE chapa LIKE "%2%";

#15.)listar quantos gols existem na tabela veículos
SELECT COUNT(veiculos.modelo) FROM veiculos WHERE veiculos.modelo LIKE "Gols";

#16.)listar os itens relacionados a “Mercedes”
SELECT veiculos.modelo FROM veiculos WHERE veiculos.modelo LIKE "Mercedes";

#17.)listar todos os carros de cor “cinza”
SELECT veiculos.* FROM veiculos WHERE veiculos.cor LIKE "cinza";

#18.)listar todos os carros cuja cor começa pela letra “V”
SELECT veiculos.* FROM veiculos WHERE veiculos.cor LIKE "V%";

#19.)listar o carro mais velho
SELECT veiculos.* FROM veiculos ORDER BY(veiculos.ano) LIMIT 1;

#20.)listar os serviços que ainda estão em aberto
SELECT servicos.* from servicos WHERE servicos.termino IS NULL;

#21.)listar os serviços que foram feitos em menos de 10 dias
SELECT servicos.* FROM servicos WHERE datediff(servicos.termino,servicos.inicio)<=10;

#22.)listar os serviços feitos no ano de 1995
SELECT servicos.* FROM servicos WHERE YEAR(servicos.termino)=1995;

#23.) exiba a ordem de serviço cujo placa igual a GGF-2111
select serv.*
from servicos serv
where serv.chapa = 'GGF-2111';

#24.) listar as ordens de serviços que já foram finalizadas
select serv.*
from servicos serv
where serv.termino is not null;

#25.) verifique o valor final gasto pela ordem de serviço número 1
select sum(pecas.preco_unitario*itens.quantidade) as val_tot_os10
from servicos serv, itens, pec_serv pecas
where serv.ordem_servico = 'OS10' and itens.ordem_servico = 'OS10'
and itens.codigo = pecas.cod_peca;

#26.) verifique o valor final gasto pela ordem de serviço número 10
select sum(pecas.preco_unitario*itens.quantidade) as val_tot_os100
from servicos serv, itens, pec_serv pecas
where serv.ordem_servico = 'OS100' and itens.ordem_servico = 'OS100'
and itens.codigo = pecas.cod_peca;

#27.) exiba os itens avaliados pela ordem de serviço número 4
select pecas.descricao as itens_os4
from pec_serv pecas, itens
where itens.ordem_servico = 'OS40' and itens.codigo = pecas.cod_peca;

#28.) exiba a quantidade geral de cada ordem de serviço na tabela itens
select itens.ordem_servico as OS, sum(itens.quantidade) as qtde_itens
from itens
group by itens.ordem_servico;

#29.) exiba o valor de cada peça juntamente com a descrição
select pecas.descricao as nome, pecas.preco_unitario as valor 
from pec_serv pecas;

#30.) exiba tudo do carro GGF-2111, tais como: modelo, ordem_serviço, quantidade de cada item utilizado e quais as peças/itens utilzados.
select serv.ordem_servico, cars.modelo, pecas.descricao as nome_peca, itens.quantidade as qtde
from veiculos cars, servicos serv, itens, pec_serv pecas
where serv.chapa = 'GGF-2111' and cars.chapa = serv.chapa
and serv.ordem_servico = itens.ordem_servico
and itens.codigo = pecas.cod_peca;

#31.) Exibir todas as cidades que os clientes moram (sem repetições)
select distinct cli.cidade as cidade_clientes
from clientes cli;

#32.) Colocar os nomes dos clientes em ordem decrescente
select cli.nome
from clientes cli
order by cli.nome desc;

#33.) Exibir os nomes começados por “R” em ordem crescente
select cli.nome
from clientes cli 
where cli.nome like 'R%'
order by cli.nome asc;

#34.) Listar as pessoas que moram em “SP” e possuem CORSA
select cli.nome as donos_corsa
from clientes cli, veiculos cars
where cli.codigo = cars.codigo and 
cli.estado = 'SP' and cars.modelo = 'Corsa';

#35.) Listar todas as cores possíveis de veículos
select distinct cars.cor
from veiculos cars;

#36.) Exibir o cód_peça, descrição para as peças mais caras que R$ 1,00
select pecas.cod_peca as codigo, pecas.descricao as nome
from pec_serv pecas
where pecas.preco_unitario > 1.00;

#37.) Exibir a média de valores da tabela PEC_SERV
select format(avg(pecas.preco_unitario),2) as media_values
from pec_serv pecas;

#38.) Listar os carros que já tiveram mais de uma ordem de serviço
select cars.modelo
from servicos serv, veiculos cars
where (select(count(serv.ordem_servico)) 
		from servicos 
        group by serv.chapa) > 2 and serv.chapa = cars.chapa		#(select(count(serv.chapa)) from servicos) > 1
group by cars.modelo;

#39.) Listar as ordens de serviço que utilizaram mais de 2 itens
select itens.ordem_servico, count(quantidade)
from itens 
group by itens.ordem_servico having count(quantidade) >1;

#40.) Listar a quantidade total de itens utilizados em cada ordem de serviço
select itens.ordem_servico, sum(itens.quantidade) as total_pecas
from itens
group by itens.ordem_servico;

#41.) Listar todas as peças utilizadas pelo cliente “3”
select pecas.descricao
from servicos serv, pec_serv pecas, itens, clientes cli, veiculos cars
where serv.ordem_servico = itens.ordem_servico 
and itens.codigo = pecas.cod_peca
and serv.chapa = cars.chapa
and cars.codigo = cli.codigo
and cli.codigo = '3'
group by pecas.descricao;

#42.) Listar todos os veículos que utilizaram a peça com código “2”
select cars.modelo
from servicos serv, pec_serv pecas, itens, veiculos cars
where cars.chapa = serv.chapa
and serv.ordem_servico = itens.ordem_servico
and itens.codigo = pecas.cod_peca
and pecas.cod_peca = '2'
group by cars.modelo;

#43.) Exibir as peça que começam com a letra “R” e “C”
select pecas.descricao as R_or_C
from pec_serv pecas
where pecas.descricao like 'R%'
or pecas.descricao like 'C%';

#44.) Exibir a descrição das peças cujos valores variam entre 100 e 500
select pecas.descricao as value_100_500
from pec_serv pecas
where pecas.preco_unitario between 100 and 500;

#45.) Exibir a somatória de valores da tabela pec_serv
select sum(pecas.preco_unitario) as soma_tot
from pec_serv pecas;

#46.) Exibir as ordens de serviço que utilizaram o item número 1
select itens.ordem_servico
from itens
where itens.codigo = '1';

#47.) Exibir os veículos que ainda estão com a ordem de serviço em aberto.
select cars.modelo as serv_aberto
from servicos serv, veiculos cars
where serv.chapa = cars.chapa 
and serv.termino is null
group by cars.modelo;

#48.) Exibir o valor gasto por um usuário se fosse comprar 5 pneus e 4 calotas
select sum(t) as Tot
from (
select (preco_unitario*4) t from pec_serv where descricao = "calotas"
union 
select (preco_unitario*5) t from pec_serv where descricao = "pneus") p;

#49.)Exibir os valores e os clientes que gastaram mais que R$ 500,00
SELECT clientes.nome, SUM( itens.quantidade*pec_serv.preco_unitario)
FROM clientes, pec_serv, itens, servicos, veiculos
WHERE
clientes.codigo = veiculos.codigo AND
veiculos.chapa = servicos.chapa AND
servicos.ordem_servico = itens.ordem_servico AND
itens.codigo = pec_serv.cod_peca
GROUP BY clientes.codigo having SUM( itens.quantidade*pec_serv.preco_unitario) > 500;

#50.)Dada uma determinada chapa (escolhida por você), exiba as peças, quantidades e valor gasto com o carro.
SELECT pec_serv.descricao, itens.quantidade, pec_serv.preco_unitario*itens.quantidade 
FROM pec_serv, itens, servicos 
WHERE pec_serv.cod_peca=itens.codigo AND itens.ordem_servico=servicos.ordem_servico AND servicos.chapa LIKE "LKA-6422";

#51.)Indique a ordem de serviço já finalizada que demorou mais para ser executada
SELECT servicos.ordem_servico,DATEDIFF(servicos.termino,servicos.inicio) FROM servicos WHERE DATEDIFF(servicos.termino,servicos.inicio) = (SELECT (MAX(DATEDIFF(servicos.termino,servicos.inicio)))t FROM servicos);

#52.)Indique os veículos que ainda estão em manutenção
SELECT veiculos.modelo from veiculos, servicos where servicos.chapa=veiculos.chapa and servicos.termino is null;

#53.)Indique a quantidade de veículos por cliente.
SELECT clientes.nome, COUNT(veiculos.modelo) from veiculos, clientes where veiculos.codigo=clientes.codigo group by clientes.codigo;

#54.)Exiba com letras maiúsculas os nomes dos clientes
SELECT upper(clientes.nome) from clientes;

#55.)Exiba o valor médio gasto por carro.
SELECT ROUND(AVG(t),2) AS Valor_medio FROM (SELECT (pec_serv.preco_unitario*itens.quantidade)t FROM pec_serv, itens WHERE pec_serv.cod_peca = itens.codigo GROUP BY itens.ordem_servico) p;

#56.)Exiba a chapa do carro, ano dos carros que apresentaram manutenção com apenas um ano de uso.
SELECT veiculos.*,servicos.data_entrada FROM servicos, veiculos WHERE veiculos.chapa = servicos.chapa AND RIGHT(YEAR(servicos.data_entrada),2) = (veiculos.ano);

#57.)Atualize as peças em 15%.
Update pec_serv set preco_unitario = preco_unitario + (preco_unitario*0.15);
SELECT NULL;

#58.)Indique a diferença em dias da primeira manutenção até a última (já finalizada)
SELECT DATEDIFF(MAX(servicos.termino),MIN(servicos.termino)) FROM servicos;

#59.)Exiba o nome do cliente e carro cuja inicial da placa seja igual a inicial do nome
SELECT clientes.nome, veiculos.modelo from clientes, veiculos where clientes.codigo=veiculos.codigo and substring(veiculos.chapa,1,1)=substring(clientes.nome,1,1) ;

#60.)Quantidade de carros de cada montadora existente no arquivo.
SELECT veiculos.modelo, count(veiculos.modelo) from veiculos GROUP by modelo;