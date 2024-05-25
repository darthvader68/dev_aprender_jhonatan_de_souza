--sql aula 14 - having (somente) +  desafios(intermediario)

-- having é muito usado em juncao com o group by para filtrar resultados de um agrupamento.

--sintaxe:
/*select coluna1, funcaoAgregacao(coluna2)
from nome da tabela
group by coluna 1
having condição*/

--ex1: quais nomes no sistema tem ocorrencia maior que 10 vezes?
select firstName, count(firstName) as 'quantidade'	
from person.Person
group by firstName
having count(firstName) >10

--ex2: quais produtos que no total de vendas estao entre 162k e 500k?

select top 10 *
from sales.SalesOrderDetail

select productId, sum(lineTotal) as 'total'	
from sales.SalesOrderDetail
group by productId
having sum(lineTotal) between 162000 and 500000

--ex3: quais nomes no sistema tem ocorrencia maior que 10 vezes, porem somente onde o titulo é "Mr."?
select *	
from person.Person

select firstName, count(firstName) as 'quantidade'	
from person.Person
where Title = 'Mr.'
group by firstName
having count(firstName) >10


--desafio:
/*1. identificar as provincias(stateProvinceId) com o maior numero de cadastros no nosso sistema, 
logo é preciso encontrar quais provincias(stateProvinceId) estao registradas no banco de dados 
mais de 1000 vezes?*/

select *
from person.Address

select stateProvinceId, count(stateProvinceId) as 'quantidade'	
from person.Address
group by stateProvinceId
having count(stateProvinceId) >1000

/*2. tratando-se de uma multinacional, os gerentes querem saber quais produtos (productId)
nao estao trazendo em media no minimo 1 milhao em total de vendas (lineTotal)?*/
select *
from sales.SalesOrderDetail

select productId, avg(lineTotal) as 'media'	
from sales.SalesOrderDetail
group by productId
having avg (lineTotal) <1000000
