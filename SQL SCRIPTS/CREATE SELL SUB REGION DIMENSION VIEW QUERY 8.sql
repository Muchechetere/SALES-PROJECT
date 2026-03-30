CREATE VIEW vw_Dim_SellSubRegion AS
SELECT DISTINCT [Sell Region], [Sell Sub-Region]
FROM vw_SalesFigures_All;