
DROP TABLE [computer_std].[dbo].[dim_location] CREATE TABLE [computer_std].[dbo].[dim_location](
     [location_id] int identity (1, 1) primary key,
     [continent] [nvarchar](50) NOT NULL,
     [country_or_state] [nvarchar](50) NOT NULL,
     [province_or_city] [nvarchar](100) NOT NULL,
     ) 
INSERT INTO
     [computer_std].[dbo].[dim_location](
          [continent],
          [country_or_state],
          [province_or_city]
     )
SELECT
     DISTINCT [continent],
     [country_or_state],
     [province_or_city]
FROM
     [computer_std].[dbo].[raw_pc_data] 
SELECT
     *
FROM
     [computer_std].[dbo].[dim_location]