UPDATE [dbo].[SalesFigures_FY22]--updating invalid sell regions in the respective fiscal year
SET [Sell Region] = 'APAC'
WHERE [Sell Region] IN ('CHINA', 'INDIA', 'JAPAN');