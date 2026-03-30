
SELECT DISTINCT [Sell Region]
FROM [dbo].[SalesFigures_FY22]--checking invalid sell regions in the latest fiscal year
WHERE [Sell Region] IS NOT NULL
ORDER BY [Sell Region];