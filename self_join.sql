--sql aula 24 - self join

--é uma forma de agrupar ou ordenar dadows dentro de uma mesma tabela,
--ou seja, filtrar uma informacao usando a mesma tabela
--para isso, deve-se sempre usar o AS, dando um apelido para a tabela.

/*sintaxe:
select nome_coluna
from tabela a, tabela b
where condicao*/

select *
from customers