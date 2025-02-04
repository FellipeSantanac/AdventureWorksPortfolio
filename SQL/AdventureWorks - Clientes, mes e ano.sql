
USE AdventureWorksDW2022

--TOTAL DE CLIENTES

SELECT
	COUNT(DISTINCT CustomerKey) AS 'QTDE_CLIENTES'
FROM FactInternetSales


--TOTAL DE CLIENTES POR PAIS

SELECT
	COUNT(F.CustomerKey) AS 'CLIENTES',
	D.SalesTerritoryCountry AS 'PAIS'
FROM FactInternetSales F
INNER JOIN DimSalesTerritory D ON D.SalesTerritoryKey = F.SalesTerritoryKey
GROUP BY D.SalesTerritoryCountry
ORDER BY CLIENTES DESC


--TOTAL DE VENDAS POR CADA REGIAO

SELECT
	FORMAT(SUM(F.SalesAmount), 'C0') AS 'VENDAS',
	D.SalesTerritoryGroup AS 'REGIAO'
FROM FactInternetSales F
INNER JOIN DimSalesTerritory D ON D.SalesTerritoryKey = F.SalesTerritoryKey
GROUP BY D.SalesTerritoryGroup
ORDER BY VENDAS ASC


--TOTAL DE VENDAS POR MES E ANO

SELECT
	DATEPART(MONTH, F.ShipDate) AS 'MES',
	DATEPART(YEAR, F.ShipDate) AS 'ANO',
	FORMAT(SUM(F.SalesAmount), 'C0') AS 'VENDAS'
FROM FactInternetSales F
GROUP BY DATEPART(MONTH, F.ShipDate), DATEPART(YEAR, F.ShipDate)
ORDER BY ANO ASC, MES ASC
