use AdventureWorks2017;

/*
Desafios
*/

-- 1) Encontrar o FirstName e o LastName person.person
SELECT 
FirstName AS "Nome", LastName AS "Sobrenome" 
FROM Person.Person;

--2) ProductNumber da tabela production.product "Numero do produto"
SELECT ProductNumber AS "N�mero do produto"
FROM Production.Product


--3) Sales.SalesOrderDetail unitPrice "Pre�o Unit�rio"
SELECT UnitPrice AS "Pre�o Unit�rio"
FROM Sales.SalesOrderDetail