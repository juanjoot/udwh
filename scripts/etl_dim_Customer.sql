INSERT INTO adw_datawh.dim_Customer (
    CustomerID,
    AccountNumber,
    -- CustomerType,
    CustomerName,
    SalesTerritoryName
)
SELECT 
   Customer.CustomerID,
   Customer.AccountNumber,
   -- Customer.CustomerType,
   Store.Name as Store,
   SalesTerritory.Name as Territory
FROM adw.Sales_Customer as Customer
    JOIN adw.Sales_SalesTerritory as SalesTerritory using(TerritoryID)
    JOIN adw.Sales_Store as Store on Customer.StoreID=Store.BusinessEntityID;