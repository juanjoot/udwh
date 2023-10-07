
insert into adw_datawh.fact_sales(CustomerKey, SalesPersonKey, ProductKey, DateKey, UnitPrice, OrderQty, UnitPriceDiscount , TaxAmt , SubTotal , Freight )

select 
    customer.CustomerKey,
    SalesPerson.SalesPersonKey,
    Product.ProductKey,    
    DDate.DateKey, 
    DATE_FORMAT(Header.OrderDate, '%d %MM %YYYY') ,  
    Detail.UnitPrice,
    Detail.OrderQty,
    Detail.UnitPriceDiscount,
    Header.TaxAmt ,
    Header.SubTotal ,
    Header.Freight
    
from
    adw.Sales_SalesOrderHeader Header join adw.Sales_SalesOrderDetail Detail using (SalesOrderID)
        left join adw_datawh.dim_Customer customer on Header.CustomerID=customer.CustomerID
        left join adw_datawh.dim_SalesPerson SalesPerson on Header.SalesPersonID=SalesPerson.SalesPersonID
        left join adw_datawh.dim_Product Product on Detail.ProductID = Product.ProductID
        left join adw_datawh.dim_Dates DDate on Header.OrderDate=DDate.OrderDate 
   limit 10;

