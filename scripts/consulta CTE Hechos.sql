
insert into dwh.fact_sales(CustomerKey, SalesPersonKey, ProductKey, DateKey, UnitPrice, OrderQty, UnitPriceDiscount , TaxAmt , SubTotal , Freight )

with datos as (

select 
    customer.CustomerKey,
    SalesPerson.SalesPersonKey,
    Product.ProductKey,    
    DDate.DateKey,
    Detail.UnitPrice,
    Detail.OrderQty,
    Detail.UnitPriceDiscount,
    Header.TaxAmt ,
    Header.SubTotal ,
    Header.Freight 
from
    adw.Sales_SalesOrderHeader Header join adw.Sales_SalesOrderDetail Detail using (SalesOrderID)
    join adw_datawh.dim_customer customer using (CustomerID)
    join adw_datawh.dim_SalesPerson SalesPerson using (SalesPersonID)
    join adw_datawh.dim_Product Product using(ProductID)
    join adw_datawh.dim_Date DDate using(OrderDate)

)
select rental_id,date_key,store_key,customer_key, 1 as count_rental
from datos;  