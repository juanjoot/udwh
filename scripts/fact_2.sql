/* total ventas Socks de los representantes por Territorio */

USE adw_datawh;

SELECT   
     
    SalesPerson.SalesPersonID,
    SalesPerson.SalesTerritoryName,
    sum(sales.SubTotal) VentasTotalesMedias
       
FROM adw_datawh.fact_sales sales 
    inner join dim_Customer Customer using(CustomerKey)
    inner join dim_SalesPerson SalesPerson using (SalesPersonKey)
    inner join dim_Product Product using (ProductKey)
    inner join dim_Dates Dates using (DateKey)
where 
    Product.SubCategory = 'Socks'
group by 
    
    SalesPerson.SalesPersonID,
    SalesPerson.SalesTerritoryName
 
Order by sum(sales.SubTotal) desc
;