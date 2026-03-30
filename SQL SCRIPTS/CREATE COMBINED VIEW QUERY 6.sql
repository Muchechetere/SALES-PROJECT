CREATE VIEW dbo.vw_AllSalesFigures
AS
SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM dbo.SalesFigures_FY18

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM dbo.SalesFigures_FY19

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM dbo.SalesFigures_FY20

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM dbo.SalesFigures_FY21

UNION ALL

SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM dbo.SalesFigures_FY22;
GO