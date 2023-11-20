# Kauan Guilherme Apolinario Costa Camargo 2°A - TI


#1.) Listar todos os dados da tabela - tb_estados
select * 
from tb_estados;


/*2.) Listar todos os dados da tabela - tb_cidades  */
select * 
from tb_cidades;


/*3.) Listar todas as cidades do estado de "Alagoas"  */
select nome 
FROM tb_cidades
where uf = 'AL';


/*4.) Listar todos os estados que possuem na sigla uma letra "R"  */
select nome
as sigla_R
from tb_estados
where sigla like '%r%';


/*5.) Listar as cidades do estado do Amazonas que comecem com a letra "M"  */
select nome 
as cmc_m
from tb_cidades
where uf = 'AM' and nome like 'M%';


/*6.) Listar os estados por ordem crescente de tamanho  */
select nome 
as crescente
from tb_estados
order by tamanho asc;


/*7.) Listar os estados por ordem decrescente de tamanho */
select nome
as decrescente
from tb_estados
order by tamanho desc;


/*8.) Listar a soma total de KM2 do Brasil  */
select SUM(tamanho)
from tb_estados;

/*9.) Listar a media de km2 do Brasil */
select AVG(tamanho)
as media
from tb_estados;


/*10.) Listar a soma em KM2 dos estados que começam o nome com a letra "P" */
select nome, sum(tamanho)
as soma_km
from tb_estados 
where nome like 'p%';


/*11.) Listar a quantidade de cidades de Sergipe  */
select count(nome)
as qtde_cidades
from tb_cidades
where uf = 'se';


/*12.) Listar a quantidade de cidades de todos os estados  */
select count(nome)
as qtde_tot
from tb_cidades;


/*13.) Listar o nome das cidades cujo estado possua um tamanho maior que 500 km2  */
select tb_cidades.nome, tb_estados.tamanho
as tamanho_maior_500km
from tb_cidades, tb_estados
where tb_estados.tamanho > 500.00; #ficou confuso


/*14.) Listar as cidades cuja primeira letra do nome seja igual a primeira letra da sigla*/
select tb_cidades.nome 
as primeira_letra_igual
from tb_cidades, tb_estados
where left(tb_cidades.nome,1) = left(tb_estados.sigla,1);


/*15.) Listar as cidades cuja primeira letra do nome seja igual a primeira letra da sigla 
e o tamanho do estado seja maior que 300. */
select tb_cidades.nome
from tb_cidades, tb_estados
where left(tb_cidades.nome,1) = left(tb_estados.sigla,1)
and tb_estados.tamanho > 300;


/*16.) listar as cidades e estados cuja cidade possua um nome maior que 15 caracteres */
select nome
as maior_15
from tb_cidades 
where length(tb_cidades.nome)>15; 