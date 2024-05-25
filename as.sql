--sql aula 15 - as + desafios (intermediario)

--as - serve para renomear (dar apelido)as colunas, para um select, uma agregação, etc
--obs: se o apelido for uma palavra só, nao precisa aspas, se for nome composto, coloca-se entre aspas

--ex: colocar a coluna listPrice da tabela abaixo em portugues
select top 10 * 
from Production.Product

select top 10 (listPrice) as 'lista de preço'
from Production.Product

--outros exemplos:
select top 10 avg (listPrice) as 'preço médio'
from Production.Product

--desafio:
--01 . encontrar o firstName (nome) e o lastName (sobrenome)da tabela person.person
select top 10 (firstName) as 'nome', (lastName) as 'sobrenome'
from person.person

--02. trocar productNumber da tabela production.product por 'numero do produto'
select top 10 (productNumber) as 'numero do produto'
from Production.Product

--03 . na tabela sales.SalesOrderDetail unitPrice por 'preco unitario'
select top 10 (unitPrice) as 'preco unitario'
from sales.SalesOrderDetail