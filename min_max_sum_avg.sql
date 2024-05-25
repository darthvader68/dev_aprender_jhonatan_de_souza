/*sql aula 12 min max sum avg:

sao funcoes de agregacao que agregam ou combinam dados de uma tabela
em 01 resultado so.*/

/*tabela de vendas (top 10)*/

select top 10 *
from sales.SalesOrderDetail

/*total geral de todas as vendas*/

select top 10 sum (LineTotal)
from sales.SalesOrderDetail

/*colocando apelido nas colunas*/
select top 10 sum (LineTotal) as 'soma'
from sales.SalesOrderDetail

/*menor valor da tabela*/
select top 10 min (LineTotal)
from sales.SalesOrderDetail

/*maior valor da tabela*/
select top 10 max (LineTotal)
from sales.SalesOrderDetail

/*media dos valores da tabela*/
select top 10 avg (LineTotal)
from sales.SalesOrderDetail