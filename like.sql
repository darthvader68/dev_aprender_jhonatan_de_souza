/* IN - realiza buscas no banco atravez de poucas ou palavras inteiras
ex: marinalva, mari, oda, pedr

sintaxe: 
select *
from person.person
where firstName like 'ovi%'(para duvida no final), '%ton'(para duvida no inicio), %lto% (para duvida no meio) 
ou ainda %lto_ (limitando a apenas um caractere depois do trecho pesquisado)*/

select *
from person.person
where firstName like 'ovi%'

select *
from person.person
where firstName like 'mil%'

select *
from person.person
where firstName like '%ro_'
