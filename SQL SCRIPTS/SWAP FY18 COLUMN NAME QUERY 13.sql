-- 1. Rename 'Sell Region' to a temporary name
EXEC sp_rename 'dbo.SalesFigures_FY18.[Sell Region]', 'TempRegion', 'COLUMN';
GO

-- 2. Rename 'Sell Sub-Region' to 'Sell Region'
EXEC sp_rename 'dbo.SalesFigures_FY18.[Sell Sub-Region]', 'Sell Region', 'COLUMN';
GO

-- 3. Rename the temporary column to 'Sell Sub-Region'
EXEC sp_rename 'dbo.SalesFigures_FY18.TempRegion', 'Sell Sub-Region', 'COLUMN';
GO
