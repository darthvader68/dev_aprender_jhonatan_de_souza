--left outer join ou left join

--quero descobrir quais pessoas tem um cartao de credito registrado
select *
from person.Person pp
inner join Sales.PersonCreditCard pc
on pp.BusinessEntityID = pc.BusinessEntityID

--resultado unsando o inner join: 19118 linhas
select *
from person.Person pp
left join Sales.PersonCreditCard pc
on pp.BusinessEntityID = pc.BusinessEntityID

--caso use o left join, o resultado será: 19972
--se quiser saber a diferenca entre os dois resultados, é so usar:

select 19972 - 19118
--resultado 854

--se quiser saber quem sao essas pessoas (854) que nao tem o cartao de credito registrado:
select *
from person.Person pp
left join Sales.PersonCreditCard pc
on pp.BusinessEntityID = pc.BusinessEntityID
where pc.BusinessEntityID is null