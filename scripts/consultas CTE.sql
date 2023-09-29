with datos as (
     
SELECT 
    Customer.CustomerID,
    Product.ProductID,
    Product.Name as Product,
    Product.ProductNumber,
    Product.ProductLine,
    Product.Style,
    Category.Name as category,
    SubCategory.Name as subcategory,
    SalesOrderDetail.OrderQty,
    YEAR(SalesOrderHeader.OrderDate) as OrderDate
       
FROM adw.Production_Product as Product
    JOIN adw.Production_ProductSubcategory as SubCategory using(ProductSubcategoryID)   
    JOIN adw.Production_ProductCategory as Category using(ProductcategoryID) 
    JOIN adw.Sales_SalesOrderDetail as SalesOrderDetail using(ProductID)
    JOIN adw.Sales_SalesOrderHeader as SalesOrderHeader using (SalesOrderID)
    JOIN adw.Sales_Customer as Customer using (CustomerID)
)
select 
    Product,    
    category,
    subcategory,
    OrderDate,
    sum(OrderQty) Contidad
from datos
group by 
    Product,
    category,
    subcategory,
    OrderDate
;