-- Negative & 0 values
SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
FROM [dbo].[SalesFigures_FY18]-- Checking for zero or negative values in the SalesFigures_FY__ table(can alternate between 18 to 22)
WHERE [Value] <= 0