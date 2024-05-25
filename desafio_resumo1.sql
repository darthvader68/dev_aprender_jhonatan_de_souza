AULA 11 - DESAFIO FUNDAMENTOS SQL (FUMDAMENTOS)

1 - quantos produtos temos no sistema que custam mais que 1500 dolares?

select count (ListPrice)
from Production.Product
where ListPrice > 1500 

2 - quantas pessoas temos que iniciam o sobrenome com a letra P?

select count (LastName)
from person.person
where LastName like 'p%'

3 - em quantas cidades unicas estao cadastrados nossos clientes?

select count (distinct City)
from Person.Address

4 - quais sao as cidades unicas que temos cadastradas em nosso sistema?

select distinct (City)
from Person.Address

5 - quantos produtos vermelhos tem o preco de 500 a 1000 dolares?

select *
from Production.Product
WHERE Color = 'red' 
and ListPrice between 500 and 1000

6 - quantos produtos cadastrados tem a palavra road no nome deles?

select count (*) 
from Production.Product
where name like '%road%'
