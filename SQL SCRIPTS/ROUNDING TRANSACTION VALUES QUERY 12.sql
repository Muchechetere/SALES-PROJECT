ALTER VIEW vw_SalesFigures_All AS
SELECT 'FY18' AS Fiscal_Year, [Sell Region], [Sell Sub-Region], [Fiscal Month], ROUND([Value], 2) AS [Value]
FROM SalesFigures_FY18 WHERE [Value] <> 0
UNION ALL
SELECT 'FY19', [Sell Region], [Sell Sub-Region], [Fiscal Month], ROUND([Value], 2) AS [Value]
FROM SalesFigures_FY19 WHERE [Value] <> 0
UNION ALL
SELECT 'FY20', [Sell Region], [Sell Sub-Region], [Fiscal Month], ROUND([Value], 2) AS [Value]
FROM SalesFigures_FY20 WHERE [Value] <> 0
UNION ALL
SELECT 'FY21', [Sell Region], [Sell Sub-Region], [Fiscal Month], ROUND([Value], 2) AS [Value]
FROM SalesFigures_FY21 WHERE [Value] <> 0
UNION ALL
SELECT 'FY22', [Sell Region], [Sell Sub-Region], [Fiscal Month], ROUND([Value], 2) AS [Value]
FROM SalesFigures_FY22 WHERE [Value] <> 0;