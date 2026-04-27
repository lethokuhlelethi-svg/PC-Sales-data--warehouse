



-- DIM LOCATION
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_location];

SELECT DISTINCT
    [Continent],
    [Country_or_State],
    [Province_or_City]
INTO [computer_std].[dbo].[dim_location]
FROM [computer_std].[dbo].[raw_pc_data];


-- DIM PRIORITY

DROP TABLE IF EXISTS [computer_std].[dbo].[dim_priority];

SELECT DISTINCT
    [Priority]
INTO [computer_std].[dbo].[dim_priority]
FROM [computer_std].[dbo].[raw_pc_data];


-- DIM PAYMENT

DROP TABLE IF EXISTS [computer_std].[dbo].[dim_payment];

SELECT DISTINCT
    [Payment_Method]
INTO [computer_std].[dbo].[dim_payment]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- DIM STORE
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_store];

SELECT DISTINCT
    [Shop_Name],
    [Shop_Age]
INTO [computer_std].[dbo].[dim_store]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- DIM DATE
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_date];

SELECT DISTINCT
    [Purchase_Date],
    [Ship_Date]
INTO [computer_std].[dbo].[dim_date]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- DIM CUSTOMER
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_customer];

SELECT DISTINCT
    [Customer_Name],
    [Customer_Surname],
    [Customer_Contact_Number],
    [Customer_Email_Address],
    [Sales_Person_Name],
    [Sales_Person_Department]
INTO [computer_std].[dbo].[dim_customer]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- DIM PC SPEC
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_pc_spec];

SELECT DISTINCT
    [PC_Make],
    [PC_Model],
    [Storage_Type],
    [RAM],
    [Storage_Capacity]
INTO [computer_std].[dbo].[dim_pc_spec]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- DIM CHANNEL
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[dim_channel];

SELECT DISTINCT
    [Channel]
INTO [computer_std].[dbo].[dim_channel]
FROM [computer_std].[dbo].[raw_pc_data];

-------------------------
-- FACT TABLE
-------------------------
DROP TABLE IF EXISTS [computer_std].[dbo].[Fact_pc_sales];

SELECT DISTINCT
    [Cost_Price],
    [Sale_Price],
    [Discount_Amount],
    [Finance_Amount],
    [Credit_Score],
    [Cost_of_Repairs],
    [Total_Sales_per_Employee],
    [PC_Market_Price]
INTO [computer_std].[dbo].[Fact_pc_sales]
FROM [computer_std].[dbo].[raw_pc_data];

