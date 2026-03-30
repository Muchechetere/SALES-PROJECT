CREATE OR ALTER VIEW dbo.vw_SalesFigures_All
AS
SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], [Value], 'FY18' AS [Fiscal Year]
FROM dbo.SalesFigures_FY18
WHERE ISNULL([Value], 0) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], [Value], 'FY19' AS [Fiscal Year]
FROM dbo.SalesFigures_FY19
WHERE ISNULL([Value], 0) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], [Value], 'FY20' AS [Fiscal Year]
FROM dbo.SalesFigures_FY20
WHERE ISNULL([Value], 0) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], [Value], 'FY21' AS [Fiscal Year]
FROM dbo.SalesFigures_FY21
WHERE ISNULL([Value], 0) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], [Value], 'FY22' AS [Fiscal Year]
FROM dbo.SalesFigures_FY22
WHERE ISNULL([Value], 0) <> 0;
GO