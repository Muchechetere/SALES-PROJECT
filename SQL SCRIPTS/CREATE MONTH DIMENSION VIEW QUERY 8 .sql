CREATE VIEW vw_Dim_FiscalMonth AS
SELECT DISTINCT
    [Fiscal Year],
    [Fiscal Month],
    CAST(RIGHT([Fiscal Month], 2) AS INT) AS Month_Number
FROM vw_SalesFigures_All;