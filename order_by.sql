/* comando order by - permite que se ordene os itens das colunas em ordem crescente ou decrescente.

sintaxe:
select coluna 1, coluna 2
from tabela
order by coluna 1 asc/desc*/

select *
from person.Person
order by FirstName asc

select *
from person.Person
order by FirstName desc

select FirstName, LastName
from person.Person
order by FirstName asc, LastName desc

select FirstName, LastName, MiddleName
from person.Person
order by MiddleName asc

/*desafio 1 - obter o productId dos 10 produtos mais caros cadastrados no sitema, listando do mais caro para o mais barato*/

select top 10 ProductId
from Production.Product
order by ListPrice desc  

/* 2 - obter o nome e o numero dos produtos que tem o productId ente 1~4*/

select top 4 name,ProductNumber
from Production.Product
order by ProductID

select *
from Production.Product