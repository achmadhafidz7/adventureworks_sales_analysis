-- Query for DimDate Table

SELECT 
  DateKey AS [Date_Key], 
  FullDateAlternateKey AS [Date], 
  EnglishDayNameOfWeek AS [Day], 
  EnglishMonthName AS [Month], 
  LEFT (EnglishMonthName, 3) AS [Month_Short], 
  MonthNumberOfYear AS [Month_Number], 
  CalendarYear AS [Year] 
FROM 
  AdventureWorksDW2019.dbo.DimDate 
WHERE 
  CalendarYear >= 2021 
ORDER BY 
  FullDateAlternateKey ASC