CREATE PROCEDURE sp_create_dim_store
AS
BEGIN
DROP TABLE [computer_std].[dbo].[dim_store];
CREATE TABLE [computer_std].[dbo].[dim_store](
        [Shop_ID] int identity (1, 1) primary key,
        [Shop_Name] nvarchar(50) NOT NULL,
        [Shop_Age] nvarchar(50) NOT NULL
    );

    INSERT INTO [computer_std].[dbo].[dim_store](
        [Shop_Name],
        [Shop_Age]
    )
    SELECT DISTINCT
        [Shop_Name],
        [Shop_Age]
    FROM [computer_std].[dbo].[raw_pc_data];

    SELECT *
    FROM [computer_std].[dbo].[dim_store];

END;
