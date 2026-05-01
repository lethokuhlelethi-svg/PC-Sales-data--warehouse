--dim_payment inserting primary key 
DROP TABLE [computer_std].[dbo].[dim_payment]
CREATE TABLE [computer_std].[dbo].[dim_payment]
(
[payment_id] int identity (1, 1) primary key,
[payment_method] [nvarchar](50) NOT NULL,
)
--insert into dim_payment
INSERT INTO [computer_std].[dbo].[dim_payment]
SELECT DISTINCT 
payment_method 
FROM 
[computer_std].[dbo].[raw_pc_data]
SELECT * FROM computer_std.dbo.dim_payment 