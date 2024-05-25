--aula 19 - union - combina dois ou mais resultados de um select em um resultado apenas.

/*sintaxe:
select coluna1, coluna2
from tabela1
union
select coluna1, coluna2
from tabela2 */

select [productId], [Name], [productNumber] 
from Production.Product where name like '%Chain%'
union
select [productId], [Name], [productNumber] 
from Production.Product where name like '%Decal%'

select firstName, title, MiddleName
from Person.Person
where title = 'Mr.'
union
select firstName, title, MiddleName
from Person.Person
where MiddleName =  'A'