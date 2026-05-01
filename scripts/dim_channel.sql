---Dim channel inserting primary key 
DROP TABLE [computer_std].[dbo].[dim_channel] CREATE TABLE [computer_std].[dbo].[dim_channel](
  [Channel_ID] int identity (1, 1) primary key,
  [Channel] [nvarchar](50) NOT NULL,
  [Load_date] DATETIME DEFAULT GETDATE()
) 
INSERT INTO
  [computer_std].[dbo].[dim_channel]([Channel])
SELECT
  DISTINCT [Channel]
FROM
  [computer_std].[dbo].[Raw_PC_Data] 
SELECT
  *
FROM
  [computer_std].[dbo].[dim_channel]