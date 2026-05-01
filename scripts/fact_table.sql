-- fact_sales inserting primary key
DROP TABLE [computer_std].[dbo].[fact_sales];

CREATE TABLE [computer_std].[dbo].[fact_sales](
   [Sales_ID] int identity (1, 1) primary key,
   [Customer_ID] int,
   [Channel_ID] int,
   [Date_ID] int,
   [Location_ID] int,
   [Payment_ID] int,
   [Priority_ID] int,
   [Shop_ID] int,
   [PC_make_ID] int,
   [Cost_Price] int NOT NULL,
   [Sale_Price] int NOT NULL,
   [Discount_Amount] int NOT NULL,
   [Finance_Amount] nvarchar(50) NOT NULL,
   [Credit_Score] int NOT NULL,
   [Cost_of_Repairs] nvarchar(50) NOT NULL,
   [Total_Sales_per_Employee] int NOT NULL,
   [PC_Market_Price] int NOT NULL,


   CONSTRAINT fk_Customer_ID FOREIGN KEY (Customer_ID)
      REFERENCES [computer_std].[dbo].[dim_customer](Customer_ID),

   CONSTRAINT fk_Channel_ID FOREIGN KEY (Channel_ID)
      REFERENCES [computer_std].[dbo].[dim_channel](Channel_ID),

   CONSTRAINT fk_Date_ID FOREIGN KEY (Date_ID)
      REFERENCES [computer_std].[dbo].[dim_date](Date_ID),

   CONSTRAINT fk_Location_ID FOREIGN KEY (Location_ID)
      REFERENCES [computer_std].[dbo].[dim_location](Location_ID),

   CONSTRAINT fk_Payment_ID FOREIGN KEY (Payment_ID)
      REFERENCES [computer_std].[dbo].[dim_payment](Payment_ID),

   CONSTRAINT fk_Store_ID FOREIGN KEY (Shop_ID)
      REFERENCES [computer_std].[dbo].[dim_store](Shop_ID),

   CONSTRAINT fk_Priority_ID FOREIGN KEY (Priority_ID)
      REFERENCES [computer_std].[dbo].[dim_priority](Priority_ID),

   CONSTRAINT fk_PC_make_ID FOREIGN KEY (PC_make_ID)
      REFERENCES [computer_std].[dbo].[dim_pc_spec](PC_make_ID)
);

-- inserting data into table
INSERT INTO [computer_std].[dbo].[fact_sales](
   [Cost_Price],
   [Sale_Price],
   [Discount_Amount],
   [Finance_Amount],
   [Credit_Score],
   [Cost_of_Repairs],
   [Total_Sales_per_Employee],
   [PC_Market_Price]
)
SELECT DISTINCT
   [Cost_Price],
   [Sale_Price],
   [Discount_Amount],
   [Finance_Amount],
   [Credit_Score],
   [Cost_of_Repairs],
   [Total_Sales_per_Employee],
   [PC_Market_Price]
FROM
   [computer_std].[dbo].[Raw_PC_Data];
SELECT *
FROM [computer_std].[dbo].[fact_sales];