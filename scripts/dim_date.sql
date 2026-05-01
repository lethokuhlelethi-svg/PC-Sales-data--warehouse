DROP TABLE [computer_std].[dbo].[dim_date];
CREATE TABLE [computer_std].[dbo].[dim_date](
  [Date_ID] int identity (1, 1) primary key,
  [Purchase_Date] datetime2(7) NOT NULL,
  [Ship_Date] nvarchar(50) NOT NULL,
);
INSERT INTO [computer_std].[dbo].[dim_date](
    [Purchase_Date],
    [Ship_Date]
)
SELECT DISTINCT
    [Purchase_Date],
    [Ship_Date]
FROM [computer_std].[dbo].[Raw_PC_Data];
SELECT * FROM [computer_std].[dbo].[dim_date];