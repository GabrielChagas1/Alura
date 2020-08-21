-- trazendo todas as colunas da tabela person
SELECT * FROM Person.Person;

-- trazendo s� a coluna firstName da tabela person
SELECT FirstName FROM Person.Person;	

-- trazendo o total de registro que comecem com gabriel
SELECT FirstName, COUNT(FirstName) FROM Person.Person WHERE FirstName = 'Gabriel' GROUP BY FirstName ;

--EXERC�CIOS

--A equipe de marketing precisa de fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa do nome e sobrenome de todos os clientes que est�o cadastrados no sistema.

--Query para trazer o total de cada nome em ordem descrescente
SELECT FirstName, COUNT(FirstName) AS total_Name FROM Person.Person GROUP BY FirstName ORDER BY total_Name DESC;

--Query
SELECT FirstName, LastName FROM Person.Person;