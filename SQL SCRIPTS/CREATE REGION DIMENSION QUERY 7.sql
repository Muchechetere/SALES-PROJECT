CREATE VIEW dbo.vw_DimRegion
AS
SELECT DISTINCT
    [Sell Region],
    [Sell Sub-Region]
FROM dbo.vw_AllSalesFigures;
GO