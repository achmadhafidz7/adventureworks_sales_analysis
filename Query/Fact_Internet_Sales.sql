-- Query for FactInternetSales Table

SELECT 
  ProductKey AS [Product_key], 
  OrderDateKey AS [Date_Key], 
  CustomerKey AS [Customer_Key], 
  SalesOrderNumber AS [Sales_Order_Number], 
  SalesAmount AS [Sales_Amount], 
  SalesAmount - TotalProductCost [Profit] 
FROM 
  AdventureWorksDW2019.dbo.FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 4) >= 2021 
ORDER BY 
  OrderDateKey ASC