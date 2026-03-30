CREATE VIEW dbo.vw_AllSalesFigures
AS
SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value],
    'FY18' AS [Fiscal Year]
FROM dbo.SalesFigures_FY18

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value],
    'FY19' AS [Fiscal Year]
FROM dbo.SalesFigures_FY19

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value],
    'FY20' AS [Fiscal Year]
FROM dbo.SalesFigures_FY20

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value],
    'FY21' AS [Fiscal Year]
FROM dbo.SalesFigures_FY21

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value],
    'FY22' AS [Fiscal Year]
FROM dbo.SalesFigures_FY22;
GO