use AdventureWorks2017;

--Quais pessoas tem o cart�o de cr�dito e quais n�o os n�meros dessas pessoas
SELECT P.FirstName, C.CreditCardID, CC.CardNumber
FROM Person.Person P
INNER JOIN Sales.PersonCreditCard C
ON P.BusinessEntityID = C.BusinessEntityID
INNER JOIN Sales.CreditCard CC 
ON C.CreditCardID = CC.CreditCardID;

--Quais pessoas tem o cart�o de cr�dito
SELECT P.FirstName, C.CreditCardID
FROM Person.Person P
RIGHT JOIN Sales.PersonCreditCard C
ON P.BusinessEntityID = C.BusinessEntityID
ORDER BY CreditCardID DESC;

--Trazendo todas as pessoas que n�o tem um cart�o cadastrado
SELECT P.FirstName, C.CreditCardID
FROM Person.Person P
LEFT JOIN Sales.PersonCreditCard C
ON P.BusinessEntityID = C.BusinessEntityID
WHERE c.BusinessEntityID IS NULL;

