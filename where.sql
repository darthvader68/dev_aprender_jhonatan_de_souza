SELECT name
FROM production.Product
WHERE Weight > 500 and Weight < 700

SELECT * 
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and SalariedFlag =  1

SELECT * 
FROM person.person
WHERE lastName = 'Krebs' and firstName = 'Peter'

SELECT * 
FROM person.EmailAddress
WHERE businessEntityId = 26