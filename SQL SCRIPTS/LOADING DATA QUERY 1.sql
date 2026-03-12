-- Created by GitHub Copilot in SSMS - review carefully before executing

-- Enable Ad Hoc Distributed Queries
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
GO

EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO

-- Allow the ACE provider to run in-process
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 1;
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DynamicParameters', 1;
GO

-- Create and load FY18 table               
IF OBJECT_ID('dbo.SalesFigures_FY18', 'U') IS NOT NULL
    DROP TABLE dbo.SalesFigures_FY18;

SELECT *
INTO dbo.SalesFigures_FY18
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=C:\PROJECTS\SALES PROJECT\Sales figures.xlsx;HDR=YES',
    'SELECT * FROM [FY18$]'
);

-- Create and load FY19 table
IF OBJECT_ID('dbo.SalesFigures_FY19', 'U') IS NOT NULL
    DROP TABLE dbo.SalesFigures_FY19;

SELECT *
INTO dbo.SalesFigures_FY19
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=C:\PROJECTS\SALES PROJECT\Sales figures.xlsx;HDR=YES',
    'SELECT * FROM [FY19$]'
);

-- Create and load FY20 table
IF OBJECT_ID('dbo.SalesFigures_FY20', 'U') IS NOT NULL
    DROP TABLE dbo.SalesFigures_FY20;

SELECT *
INTO dbo.SalesFigures_FY20
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=C:\PROJECTS\SALES PROJECT\Sales figures.xlsx;HDR=YES',
    'SELECT * FROM [FY20$]'
);

-- Create and load FY21 table
IF OBJECT_ID('dbo.SalesFigures_FY21', 'U') IS NOT NULL
    DROP TABLE dbo.SalesFigures_FY21;

SELECT *
INTO dbo.SalesFigures_FY21
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=C:\PROJECTS\SALES PROJECT\Sales figures.xlsx;HDR=YES',
    'SELECT * FROM [FY21$]'
);

-- Create and load FY22 table
IF OBJECT_ID('dbo.SalesFigures_FY22', 'U') IS NOT NULL
    DROP TABLE dbo.SalesFigures_FY22;

SELECT *
INTO dbo.SalesFigures_FY22
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=C:\PROJECTS\SALES PROJECT\Sales figures.xlsx;HDR=YES',
    'SELECT * FROM [FY22$]'
);

-- Verify the data load
SELECT 'FY18' AS FiscalYear, COUNT(*) AS RecordCount FROM dbo.SalesFigures_FY18
UNION ALL
SELECT 'FY19', COUNT(*) FROM dbo.SalesFigures_FY19
UNION ALL
SELECT 'FY20', COUNT(*) FROM dbo.SalesFigures_FY20
UNION ALL
SELECT 'FY21', COUNT(*) FROM dbo.SalesFigures_FY21
UNION ALL
SELECT 'FY22', COUNT(*) FROM dbo.SalesFigures_FY22;
GO