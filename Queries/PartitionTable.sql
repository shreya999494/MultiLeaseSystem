CREATE PARTITION FUNCTION LeaseBackUpFunc(date)
as RANGE LEFT FOR Values (DATEADD(year, -5, GETDATE()));

CREATE PARTITION SCHEME LeasesBackUp
AS PARTITION LeaseBackUpFunc ALL TO ([PRIMARY]);

CREATE TABLE LeasesPartition
	(
		[Date_Lease_Begins] [date] NULL,
		[First_Payment_Date] [date] NULL,
		[Monthly_Payment_Amount] [money] NULL,
		[Monthly_Payment_Number] [int] NULL,
		[Vehicle_VIN] [int] NULL,
		[Customer_Leasing] [VARCHAR](30) NULL,
		Lease_Terms_ID int Null
	)
	ON LeasesBackUp([Date_Lease_Begins]);