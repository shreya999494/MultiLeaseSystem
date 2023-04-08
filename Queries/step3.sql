USE ML635221553 
	CREATE TABLE Customers
	(
		[Customer_ID] [int] NOT NULL,
		[First_Name][VARCHAR](50) NOT NULL,
		[Last_Name] [VARCHAR](50) NOT NULL,
		[Address] [VARCHAR](50) NOT NULL,
		[City] [VARCHAR](20) NOT NULL,
		[Province] [VARCHAR](20) NOT NULL,
		[Postal_Code] [VARCHAR](6) NOT NULL,
		[Phone_Number] [VARCHAR](12) NOT NULL,
	)
	CREATE TABLE Leases
	(
		[Date_Lease_Begins] [date] NOT NULL,
		[First_Payment_Date] [date] NOT NULL,
		[Monthly_Payment_Amount] [money] NOT NULL,
		[Monthly_Payment_Number] [int] NOT NULL,
		[Vehicle_VIN] [int] NOT NULL,
		[Customer_Leasing] [VARCHAR](30) NOT NULL,
		[Lease_Terms_ID] [int] NOT NULL,
	)

	CREATE TABLE Vehicles
	(
		[Vehicle_VIN] [VARCHAR](25) NOT NULL,
		[Model] [VARCHAR](20) NOT NULL,
		[Type] [VARCHAR](30) NOT NULL,
		[Colour] [VARCHAR](15) NOT NULL,
		[Year] [date] NOT NULL,
		[Kilometres_Travelled] [int] NOT NULL,
		[Current_Vehicle_Val] [money] NOT NULL,
		[Vehicle_Options] [bit] NOT NULL, 
	)

	CREATE TABLE LEASE_TERMS
	(
		[Lease_Terms_ID] [int] NOT NULL,
		[Number_of_Years] [int] NOT NULL,
		[Max_Kilometres] [int] NOT NULL,
		[Extra_Mileage_Cost] [money] NOT NULL,
	)

	CREATE TABLE MODELS
	(
		[Vehicle_VIN] [VARCHAR](25) NOT NULL,
		[Car_Models] [VARCHAR](30)NOT NULL,
	)

	CREATE TABLE COLORS
	(
		[Vehicle_VIN] [VARCHAR](25) NOT NULL,
		[Car_Colors] [VARCHAR](30)NOT NULL,
	)

	CREATE TABLE V_TYPE
	(
		[Vehicle_VIN] [VARCHAR](25) NOT NULL,
		[Car_Models] [VARCHAR](30)NOT NULL,
	)

	CREATE TABLE PAYMENTS
	(
		[Lease_Terms_ID] [int] NOT NULL,
		[Date] [date] NOT NULL,
		[Amount] [money] NOT NULL,
	)

