-- dim_pc_spec inserting primary key 
DROP TABLE [computer_std].[dbo].[dim_pc_spec]
CREATE TABLE [computer_std].[dbo].[dim_pc_spec]
(
[pc_make_id] INT IDENTITY(1,1) PRIMARY KEY , 
[pc_make] [nvarchar] (50) NOT NULL,
[pc_model] [nvarchar] (50) NOT NULL,
[storage_type] [nvarchar] (50) NOT NULL,
[storage_capacity] [nvarchar] (50) NOT NULL, 
[ram] [nvarchar] (50)  
)
-- inserting into dim_pc_spec
INSERT INTO [computer_std].[dbo].[dim_pc_spec](
[pc_make],
[pc_model],
[storage_type],
[storage_capacity],
[ram]
)
SELECT DISTINCT 
[pc_make], 
[pc_model], 
[storage_type],
[storage_capacity],
[ram]
FROM 
[computer_std].[dbo].[raw_pc_data]
SELECT * FROM dim_pc_spec 
