use adw;

-- Dimension Custumer
CREATE TABLE if not exists d_Customer (
    CustomerKey INTEGER NOT NULL AUTO_INCREMENT,
    CustomerID INTEGER NOT NULL,
    AccountNumber INTEGER NOT NULL,
    CustomerType  char(1),
    CustomerName nvarchar(50) NOT NULL,
PRIMARY KEY(CustomerKey),
INDEX customer_id (CustomerID) VISIBLE
);

-- Dimension SalesPerson
CREATE TABLE if not exists d_SalesPerson (
    SalesPersonKey INTEGER NOT NULL AUTO_INCREMENT,
    SalesPersonID INTEGER NOT NULL,    
    SalesPersonName nvarchar(50) NOT NULL,
PRIMARY KEY(SalesPersonKey),
INDEX salesperson_id (SalesPersonID) VISIBLE
);

-- Dimension Product
CREATE TABLE ifProductKey not exists d_Product (
    ProductKey INTEGER NOT NULL AUTO_INCREMENT,
    ProductID INTEGER NOT NULL,
    ProductName  nvarchar(50) NOT NULL,
    ProductNumber nvarchar(25) NOT NULL,
    ProductLine char(2) NOT NULL,
    Style char(2) NOT NULL,
PRIMARY KEY(ProductKey),
INDEX product_id (ProductID) VISIBLE
);

-- Dimension SalesTerritory

CREATE TABLE if not exists d_SalesTerritory (
    SalesTerritoryKey INTEGER NOT NULL AUTO_INCREMENT,
    SalesTerritoryID INTEGER NOT NULL,
    SalesTerritoryName  nvarchar(50) NOT NULL,    
PRIMARY KEY(SalesTerritoryKey),
INDEX salesterritory_id (SalesTerritoryID) VISIBLE
);


CREATE TABLE if not exists d_time (
    timeKey INTEGER NOT NULL AUTO_INCREMENT,
    Shipdate DATE NOT NULL,
    OrderDate  DATE NOT NULL,    
PRIMARY KEY(timeKey),
INDEX Shipdate (Shipdate) VISIBLE
INDEX OrderDate (OrderDate) VISIBLE
);