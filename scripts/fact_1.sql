/* total bicicletas vendidas de los clientes  */

USE adw_datawh;

SELECT   
    -- Product.ProductName,    
       Customer.CustomerName,
       Product.Category,
    -- Product.subcategory,
    -- Dates.OrderDate,
    sum(sales.OrderQty) Cantidad
       
FROM adw_datawh.fact_sales sales 
    inner join dim_Customer Customer using(CustomerKey)
    inner join dim_SalesPerson SalesPerson using (SalesPersonKey)
    inner join dim_Product Product using (ProductKey)
    inner join dim_Dates Dates using (DateKey)
where Product.Category = 'Bikes'
group by 
    -- Product.ProductName,    
    Product.Category,
    Customer.CustomerName
    -- Product.subcategory,
    -- Dates.OrderDate
Order by sum(sales.OrderQty) desc
;