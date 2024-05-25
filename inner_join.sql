--sql aula 16 inner join + desafios (intermediario)

--objetivo: trabalhar com informacoes de tabelas diferentes

--existem 03 tipos gerais de joins:
--inner join, outer join e self join

--exemplo: saber o BusinessEntityId, FirstName, LastName, EmaillAddress
select top 10 *
from Person.Person

select top 10 *
from Person.EmailAddress

select p.BusinessEntityId, p.FirstName, p.LastName, pe.EmailAddress
from Person.Person as p
inner join Person.EmailAddress pe on p.BusinessEntityId = pe.BusinessEntityId

--informar os nomes dos produtos e as suas subcategorias, e tambem o preço de cada um
--ou seja: ListPrice, nome do produto e nome da subcategoria
select top 10 *
from Production.Product

select top 10 *
from Production.ProductSubcategory

select pr.ListPrice, pr.Name, pc.Name
from Production.Product as pr
inner join Production.ProductSubcategory pc on pc.ProductSubcategoryId = pr.ProductSubcategoryId

--juntando informações de tabelas em comum:
select top 10 *
from person.BusinessEntityAddress

select top 10 *
from person.Address

--vamos dizer que nos queremos os nomes dos produtos e as informacoes de suas subcatregorias
--lisPrice, Nome do produto, Nome da subcategoria
select top 10 *
from production.Product

select top 10 *
from production.ProductSubcategory

select pr.ListPrice, pr.Name, pc.Name
from production.Product pr
inner join production.ProductSubcategory pc on pc.ProductSubcategoryID = pr.ProductSubcategoryID

--outro exemplo, dadas as tabelas abaixo, juntar as duas

select top 10 *
from person.BusinessEntityAddress

select top 10 *
from person.Address

--logo:
select top 10 *
from person.BusinessEntityAddress BA
inner join person.Address pa on pa.AddressID = ba.AddressID

--desafio: 
--01. dadas as tabelas abaixo:
select top 10 *
from person.PhoneNumberType

select top 10 *
from person.PersonPhone
--encontrar o businesEntityId, Name, PhoneNumberTypeId, PhoneNumber das duas tabelas:

select pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeId, pp.PhoneNumber
from person.PersonPhone pp
inner join person.PhoneNumberType pt on pt.PhoneNumberTypeId = pp.PhoneNumberTypeId

--02. dadas as tabelas abaixo:
select top 10 *
from person.StateProvince

select top 10 *
from person.Address
--juntar em uma tabela o AddressId,City,  StateProvinceId, o Name do estado:

select top 10 pa.AddressId,pa.City, ps.StateProvinceId, ps.Name
from person.Address pa
inner join person.StateProvince ps on ps.StateProvinceId = pa.StateProvinceId