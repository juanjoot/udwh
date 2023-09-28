CREATE DATABASE IF NOT EXISTS adw_datawh;
USE adw_datawh;

CREATE TABLE IF NOT EXISTS fact_sales (
    CustomerKey INT NOT NULL,
    SalesPersonKey INT NOT NULL,
    ProductKey INT NOT NULL,
    SalesTerritoryKey INT NOT NULL,
    DateKey INT NOT NULL,
    UnitPrice money NOT NULL,
    OrderQty INT NOT NULL,
    UnitPriceDiscount money NOT NULL,
    TaxAmt money NOT NULL,
    SubTotal money NOT NULL,
    Freight money NOT NULL,  

  INDEX fk_CustomerKey_idx (CustomerKey ASC) VISIBLE,
  INDEX fk_SalesPersonKey_idx (SalesPersonKey ASC) VISIBLE,
  INDEX fk_ProductKey_idx (ProductKey ASC) VISIBLE,
  INDEX fk_SalesTerritoryKey_idx (SalesTerritoryKey ASC) VISIBLE,
  INDEX fk_DateKey_idx (DateKey ASC) VISIBLE,
  CONSTRAINT fk_customer
    FOREIGN KEY (CustomerKey)
    REFERENCES dim_customer (CustomerKey)
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
  CONSTRAINT fk_SalesTerritory
    FOREIGN KEY (SalesTerritorykey)
    REFERENCES dim_SalesTerritory (SalesTerritorykey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Date
    FOREIGN KEY (Datekey)
    REFERENCES dim_Date (Datekey)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);