--Trazendo todas as ordem de vendas do m�s atual
SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia, DATEPART(MONTH, OrderDate) AS M�s, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
WHERE DATEPART(MONTH, OrderDate) = DATEPART(MONTH, GETDATE())
ORDER BY M�s ASC;

--Trazendo a m�dia dos valores que precisam ser pagos mensalmente
SELECT DATEPART(MONTH, OrderDate) AS M�s, AVG(TotalDue) AS M�dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY M�s ASC;

--Trazendo a m�dio dos valores que precisam ser pagos di�riamente junto com o m�s correspondente
SELECT DATEPART(DAY, OrderDate) AS DIA, DATEPART(MONTH, OrderDate) AS MES, AVG(TotalDue) AS MEDIA
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate), DATEPART(MONTH, OrderDate)
ORDER BY MES, DIA;




