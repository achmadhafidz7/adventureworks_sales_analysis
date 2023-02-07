-- Query for DimProduct Table
-- Joined to DimProductSubcategory Table with ProductSubcategoryKey to get Product Sub Category
-- Joined to DimProductCategory Table with ProductCategoryKey to get Product Category

SELECT 
  p.ProductKey AS [Product_Key], 
  p.ProductAlternateKey AS [Product_Item_Code], 
  p.EnglishProductName AS [Product_Name], 
  ISNULL(pc.EnglishProductCategoryName, 'Miscellaneous') AS [Product_Category], 
  ISNULL(psc.EnglishProductSubcategoryName, 'Miscellaneous') AS [Sub_Category] 
FROM 
  AdventureWorksDW2019.dbo.DimProduct AS p 
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey 
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory AS pc ON psc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC