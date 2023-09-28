INSERT INTO adw_datawh.dim_Dates (      
    OrderDate,    
    date_medium,
    month_number,
    month_name,
    year4,
    year_month_number
)
SELECT
    fecha,
    DATE_FORMAT(fecha, '%d %M %Y') AS date_medium,
    MONTH(fecha) AS month,
    MONTHNAME(fecha) AS month_name,
    YEAR(fecha) AS year4,
    DATE_FORMAT(fecha, '%Y-%m') AS  year_month_number
FROM (
    SELECT distinct DATE(OrderDate) as fecha
    FROM adw.Sales_SalesOrderHeader
) AS fechas;