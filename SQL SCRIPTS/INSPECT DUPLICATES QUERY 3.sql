SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    COUNT(*) as DuplicateCount,
    STRING_AGG(CAST([Value] AS VARCHAR(50)), ', ') as [Values]
FROM [master].[dbo].[SalesFigures_FY18]  -- Checking for duplicates in the SalesFigures_FY__ table(can alternate between 18 to 22)
GROUP BY 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month]
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;
