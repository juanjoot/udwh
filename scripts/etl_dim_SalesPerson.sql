INSERT INTO adw_datawh.dim_SalesPerson (
    SalesPersonID,
    SalesPersonName,    
    SalesTerritoryName
)
SELECT 
    SalesPerson.BusinessEntityID,
    SalesTerritory.Name as Territory,
    Store.Name as Store
FROM adw.Sales_SalesPerson as SalesPerson
    JOIN adw.Sales_SalesTerritory as SalesTerritory using(TerritoryID)
    JOIN adw.Sales_Store as Store on SalesPerson.BusinessEntityID=Store.SalesPersonID;