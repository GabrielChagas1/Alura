--trazendo todos os registros que come�am com el
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'el%';

--trazendo todos os registros que terminam com el
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%el';

--trazendo todos os registros que cont�m o el
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%el%';

--trazendo todos os registros que cont�m apenas um caractere ap�s o el
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%el_';