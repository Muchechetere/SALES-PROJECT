-- Created by GitHub Copilot in SSMS - review carefully before executing
-- WARNING: This will completely restructure dbo.SalesFigures_FY18 and cannot be undone

-- Step 1: Delete header/total rows
DELETE FROM dbo.SalesFigures_FY18
WHERE [Sum of Value] = 'Sell Region'
   OR [Sum of Value] LIKE '%Total%';
GO

-- Step 2: Create backup and unpivot in one step
SELECT 
    [Sum of Value] AS [Sell Region],
    F2 AS [Sell Sub-Region],
    CASE MonthColumn
        WHEN 'Fiscal Month' THEN 'FY18M01'
        WHEN 'F4' THEN 'FY18M02'
        WHEN 'F5' THEN 'FY18M03'
        WHEN 'F6' THEN 'FY18M04'
        WHEN 'F7' THEN 'FY18M05'
        WHEN 'F8' THEN 'FY18M06'
        WHEN 'F9' THEN 'FY18M07'
        WHEN 'F10' THEN 'FY18M08'
        WHEN 'F11' THEN 'FY18M09'
        WHEN 'F12' THEN 'FY18M10'
        WHEN 'F13' THEN 'FY18M11'
        WHEN 'F14' THEN 'FY18M12'
    END AS [Fiscal Month],              
    SalesValue AS [Value]
INTO #TempUnpivoted
FROM dbo.SalesFigures_FY18
UNPIVOT (
    SalesValue FOR MonthColumn IN ([Fiscal Month], F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14)
) AS unpvt;
GO

-- Step 3: Drop the original table
DROP TABLE dbo.SalesFigures_FY18;
GO

-- Step 4: Recreate table with 4 columns only
SELECT 
    [Sell Region],
    [Sell Sub-Region],
    [Fiscal Month],
    [Value]
INTO dbo.SalesFigures_FY18
FROM #TempUnpivoted;
GO

-- Step 5: Cleanup
DROP TABLE #TempUnpivoted;
GO

-- Step 6: Verify (4 columns only)
SELECT TOP 20 *
FROM dbo.SalesFigures_FY18
ORDER BY 1, 3;
GO