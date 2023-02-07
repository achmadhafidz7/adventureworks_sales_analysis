-- Query for DimCustomer Table
-- Joined to DimGeography Table with GeographyKey to get Customer State and Country

SELECT 
  c.CustomerKey AS [Customer_Key], 
  c.FirstName AS [First_Name], 
  c.LastName AS [Last_Name], 
  c.FirstName + ' ' + c.LastName AS [Full_Name], 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END As [Gender],
  g.StateProvinceName AS [Customer_State], 
  g.EnglishCountryRegionName AS [Country] 
FROM 
  AdventureWorksDW2019.dbo.DimCustomer AS c 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey ASC