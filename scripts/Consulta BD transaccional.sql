select 
    customer.CustomerID,
    SalesPerson.BusinessEntityID,
    Product.ProductID,    
    Header.OrderDate, 
    Detail.UnitPrice,
    Detail.OrderQty,
    Detail.UnitPriceDiscount,
    Header.TaxAmt ,
    Header.SubTotal ,
    Header.Freight
    
from
    adw.Sales_SalesOrderHeader Header join adw.Sales_SalesOrderDetail Detail using (SalesOrderID)
        left join adw.Sales_Customer customer on Header.CustomerID=customer.CustomerID
        left join adw.Sales_SalesPerson SalesPerson on Header.SalesPersonID=SalesPerson.BusinessEntityID
        left join adw.Production_Product Product on Detail.ProductID = Product.ProductID
    limit 10;
