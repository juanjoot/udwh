 INSERT INTO adw_datawh.dim_SalesPerson (
    SalesPersonID,     
    SalesTerritoryName
 )
SELECT 
    SalesPerson.BusinessEntityID,
    SalesTerritory.Name as Territory    
FROM adw.Sales_SalesPerson as SalesPerson
    LEFT JOIN adw.Sales_SalesTerritory as SalesTerritory using(TerritoryID)
    