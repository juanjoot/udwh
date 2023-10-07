INSERT INTO adw_datawh.dim_Product (
    ProductID,
    ProductName,    
    ProductNumber,
    ProductLine,
    Style,
    Category,
    SubCategory
)
SELECT 
    Product.ProductID,
    Product.Name,
    Product.ProductNumber,
    Product.ProductLine,
    Product.Style,
    Category.Name as category,
    SubCategory.Name as subcategory    
FROM adw.Production_Product as Product
    JOIN adw.Production_ProductSubcategory as SubCategory using(ProductSubcategoryID)   
    JOIN adw.Production_ProductCategory as Category using(ProductcategoryID);