CREATE DATABASE IF NOT EXISTS adw_datawh;
USE adw_datawh;

-- Dimension Custumer
CREATE TABLE if not exists dim_Customer (
    CustomerKey INTEGER NOT NULL AUTO_INCREMENT,
    CustomerID INTEGER NOT NULL,
    AccountNumber varchar(10) NOT NULL,
    -- CustomerType  char(1),
    CustomerName nvarchar(50) NOT NULL,
    SalesTerritoryName  nvarchar(50) NOT NULL, 
PRIMARY KEY(CustomerKey),
INDEX customer_id (CustomerID) VISIBLE
);

-- Dimension SalesPerson
CREATE TABLE if not exists dim_SalesPerson (
    SalesPersonKey INTEGER NOT NULL AUTO_INCREMENT,
    SalesPersonID INTEGER NOT NULL,
    SalesTerritoryName  nvarchar(50) NULL, 
PRIMARY KEY(SalesPersonKey),
INDEX salesperson_id (SalesPersonID) VISIBLE
);

-- Dimension Product
CREATE TABLE if not exists dim_Product (
    ProductKey INTEGER NOT NULL AUTO_INCREMENT,
    ProductID INTEGER NOT NULL,
    ProductName  nvarchar(50) NOT NULL,
    ProductNumber nvarchar(25) NOT NULL,
    ProductLine char(2) NULL,
    Style char(2) NULL,
    Category  nvarchar(50) NOT NULL,
    SubCategory  nvarchar(50) NOT NULL,
PRIMARY KEY(ProductKey),
INDEX product_id (ProductID) VISIBLE
);

-- Dimension SalesTerritory

/* CREATE TABLE if not exists dim_SalesTerritory (
    SalesTerritoryKey INTEGER NOT NULL AUTO_INCREMENT,
    SalesTerritoryID INTEGER NOT NULL,
    SalesTerritoryName  nvarchar(50) NOT NULL,    
PRIMARY KEY(SalesTerritoryKey),
INDEX salesterritory_id (SalesTerritoryID) VISIBLE
); */


CREATE TABLE if not exists dim_Dates (
    DateKey INTEGER NOT NULL,    
    OrderDate  DATE NOT NULL,    
    date_medium CHAR(18) NOT NULL,
    month_number TINYINT(3) NOT NULL,
    month_name CHAR(12) NOT NULL,
    year4 SMALLINT(5) NOT NULL,
    year_month_number CHAR(7) NOT NULL,
PRIMARY KEY(DateKey),
INDEX OrderDate (OrderDate) VISIBLE
)