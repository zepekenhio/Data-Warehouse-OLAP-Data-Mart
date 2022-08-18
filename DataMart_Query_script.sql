SELECT SalesTerritoryRegion ,SUM(SalesAmount) AS MONTANT
from FactinternetSales INNER JOIN DimSalesTerritory ON DimSalesTerritory.SalesTerritoryKey=FactinternetSales.SalesTerritoryKey
where SalesTerritoryRegion='France' GROUP BY SalesTerritoryRegion;


select sum([SalesAmount]) AS MONTANT
from [dbo].[FactInternetSales], [dbo].[DimSalesTerritory]
where [dbo].[FactInternetSales].[SalesTerritoryKey]=[dbo].[DimSalesTerritory].SalesTerritoryKey 
and [dbo].[DimSalesTerritory].[SalesTerritoryCountry]='France';
