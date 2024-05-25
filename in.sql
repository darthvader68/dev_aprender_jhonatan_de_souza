/*operador IN - usa-se junto com o WHERE, para verificar se um valor corresponde com qualquer valor passado na lista de valores.
sintaxe: valor in (valor1, valor2)*/

select *
from Person.Person
where BusinessEntityID in (2,7,13)

