/*sql aula 13 group by + desafios

o group by basicamente vai dividir o resultado da sua pesquisa em grupos
-  para cada grupo voce pode aplicar uma funcao de agregacao, por exemplo:
. calcular a soma de itens;
. contar o numero de itens naquele grupo

sintaxe:
SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1;*/

select *
from Sales.SalesOrderDetail

SELECT SpecialOfferId, sum(unitprice) as 'soma'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferId

--exibir quanto de cada produto foi vendido ate hoje?

SELECT ProductID, count(ProductID) as 'contagem'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--exibir quantos nomes de cada nome temos cadastrados em nosso bd??

select * from Person.Person

SELECT firstName, count(firstName) as 'contagem'
FROM Person.Person
GROUP BY firstName

--na tabela production.product, saber a media de preco (avg) para os produtos que sao pratas (silver)?

select * from production.product

SELECT color, avg(ListPrice) as 'media de preco'
FROM production.product
where color = 'silver'
GROUP BY Color

--desafios:

--1 . quantas pessoas tem o mesmo midlename agrupadas por o midlename?
select * from Person.Person

SELECT MiddleName, count(MiddleName) as 'mesmo sobrenome'
FROM Person.Person
GROUP BY MiddleName

--2 . saber em media(avg) qual é a quantidade (quantity) que cada produto é vendido na loja?
select * from Sales.SalesOrderDetail

SELECT ProductID, avg(OrderQty) as 'media de quantidade'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--saber quais foram as 10 vendas que no total tiveram os maiores valores de venda (linetotal) por produto, do maior valor para o menor?
SELECT top 10 ProductID, sum (linetotal)as 'maiores valores'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
order by sum (linetotal) desc

--quantos produtos e qual a quantidade media de produtos temos cadastrados em nossas ordens de servico (workorder), agrupados por productId?
select * from Production.WorkOrder

SELECT ProductID, count (ProductID)as 'contagem', avg (orderqty) as 'media'
from Production.WorkOrder
GROUP BY ProductID
