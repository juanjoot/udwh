CREATE DATABASE IF NOT EXISTS adw_datawh;
USE adw_datawh;

CREATE TABLE IF NOT EXISTS fact_sales (
    CustomerKey INT NULL,
    SalesPersonKey INT NULL,
    ProductKey INT NOT NULL,    
    DateKey INT NOT NULL,
    UnitPrice decimal(19,4) NOT NULL,
    OrderQty smallint NOT NULL,
    UnitPriceDiscount decimal(19,4) NULL,
    TaxAmt decimal(19,4) NOT NULL,
    SubTotal decimal(19,4) NOT NULL,
    Freight decimal(19,4) NOT NULL,  

  INDEX fk_CustomerKey_idx (CustomerKey ASC) VISIBLE,
  INDEX fk_SalesPersonKey_idx (SalesPersonKey ASC) VISIBLE,
  INDEX fk_ProductKey_idx (ProductKey ASC) VISIBLE,  
  INDEX fk_DateKey_idx (DateKey ASC) VISIBLE,
  CONSTRAINT fk_customer
    FOREIGN KEY (CustomerKey)
    REFERENCES dim_Customer (CustomerKey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT fk_SalesPerson
    FOREIGN KEY (SalesPersonKey)
    REFERENCES dim_SalesPerson (SalesPersonKey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Product
    FOREIGN KEY (Productkey)
    REFERENCES dim_Product (Productkey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,  
  CONSTRAINT fk_Date
    FOREIGN KEY (Datekey)
    REFERENCES dim_Dates (Datekey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);