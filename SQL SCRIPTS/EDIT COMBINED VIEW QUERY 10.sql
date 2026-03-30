CREATE OR ALTER VIEW dbo.vw_SalesFigures_All
AS
SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], 
    CAST(ISNULL([Value], 0) AS DECIMAL(18,2)) AS [Value], 
    'FY18' AS [Fiscal Year]
FROM dbo.SalesFigures_FY18
WHERE ROUND(ISNULL([Value], 0), 4) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], 
    CAST(ISNULL([Value], 0) AS DECIMAL(18,2)) AS [Value], 
    'FY19' AS [Fiscal Year]
FROM dbo.SalesFigures_FY19
WHERE ROUND(ISNULL([Value], 0), 4) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], 
    CAST(ISNULL([Value], 0) AS DECIMAL(18,2)) AS [Value], 
    'FY20' AS [Fiscal Year]
FROM dbo.SalesFigures_FY20
WHERE ROUND(ISNULL([Value], 0), 4) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], 
    CAST(ISNULL([Value], 0) AS DECIMAL(18,2)) AS [Value], 
    'FY21' AS [Fiscal Year]
FROM dbo.SalesFigures_FY21
WHERE ROUND(ISNULL([Value], 0), 4) <> 0

UNION ALL

SELECT 
    [Sell Region], [Sell Sub-Region], [Fiscal Month], 
    CAST(ISNULL([Value], 0) AS DECIMAL(18,2)) AS [Value], 
    'FY22' AS [Fiscal Year]
FROM dbo.SalesFigures_FY22
WHERE ROUND(ISNULL([Value], 0), 4) <> 0;
GO