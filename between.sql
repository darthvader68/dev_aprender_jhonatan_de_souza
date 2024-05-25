/*between (entre)- é usado para encontrar valor entre um valor minimo e um valor maximo*/

/*sintaxe: valor betwenn minimo and maximo*/

select *
from Production.Product
where listPrice between 1000 and 1500;

/*o oposto*/
select *
from Production.Product
where listPrice not between 1000 and 1500;

/*quais pessoas foram contratadas entre 2009 a 2010?*/
select *
from HumanResources.Employee
where HireDate between '2009/01/01' and '2010/01/01'
order by HireDate