DROP TABLE [computer_std].[dbo].[dim_priority]
CREATE TABLE [computer_std].[dbo].[dim_priority]
(
priority_id int identity (1,1) PRIMARY KEY, 
[priority] [nvarchar] (50)
)
INSERT INTO [computer_std].[dbo].[dim_priority] 
SELECT DISTINCT [priority] 
FROM [computer_std].[dbo].[dim_priority] 
SELECT 
*
FROM [computer_std].[dbo].[dim_priority]


