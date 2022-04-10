# Kauan Guilherme Apolinario Costa Camargo 2°A - TI

#1.Listar todos os itens da tabela “PESSOAS”
SELECT * FROM pessoas;

#2.Listar todos os Bairros que não pertencem a cidade de Campinas.
select bairro
from ceps 
where cidade != "Campinas";

#3.Listar CEP e Logradouro existentes no Bairro “Cambuí” em Campinas
select cep, logradouro
from ceps
where bairro='Cambuí' and cidade='Campinas';

#4.Exibir  todos os ceps da “Avenida Benjamin Constant”
select cep
from ceps
where logradouro='Avenida Benjamin Constant';


#5.Listar o cepda pessoa que possui o RG 17333999
select pessoas.cep
from pessoas
where rg='17333999';


#6.Exibir a localização da pessoa que possui o RG 20733290 (“bairro / logradouro/ numero/...)
select pessoas.nome, ceps.*, pessoas.numero
from ceps, pessoas
where ceps.cep='010142' and pessoas.rg='20733290';

#7.Listar todos os logradouros em ordem crescente
select logradouro
from ceps
order by length(logradouro) asc; #Não ficou claro se o Sr. queria pelo tamanho do campo... (length)


#8.Listar todos os logradouros em ordem decrescente
select logradouro 
from ceps 
order by length(logradouro) desc; #length...


#9.Listar todas as cidades existentes na tabela CEPS (Distinct)
select distinct cidade
from ceps;

#10.Listar a quantidade de logradouros do Bairro “Centro” (Count)
select count(logradouro) 
as quantidade_total
from ceps
where bairro='Centro';

#11.Listar os Ceps que possuem “2” no numero (Like)
select cep
from ceps
where cep like '%2%';


#12.Conte a quantidade de Ceps que possuem “2” no numero
select count(cep like '%2%')
as total_ceps_num2
from ceps;
