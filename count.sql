SELECT COUNT (*) 
FROM person.Person

SELECT COUNT (title) 
FROM person.Person

SELECT COUNT (distinct title) 
FROM person.Person

/*desafio 1 - quantos produtos temos cadastrados em nossa tabela de produtos (production.Product)*/ 504
SELECT COUNT (*) 
FROM production.Product

/*2 - quantos tamanhosd de produtos temos cadastrados em nossa tabela(production.Product)?*/211
SELECT COUNT (size) 
FROM production.Product

/*3 - quantos tamanhos diferentes de produtos temos em nossa tabela(production.Product)?*/18
SELECT COUNT (distinct size) 
FROM production.Product
