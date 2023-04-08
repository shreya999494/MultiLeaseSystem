Create view Leases_View
as
	select Cust_Name, Customers.Phone_Number, Leases.Vehicle_VIN, Vehicles.Model, Vehicles.Year, PAYMENTS.Date, PAYMENTS.Amount
	From Leases
	Left join PAYMENTS ON Leases.Lease_Terms_ID = PAYMENTS.Lease_Terms_ID
	Left Join Vehicles ON Leases.Vehicle_VIN = Vehicles.Vehicle_VIN
	Left Join Customers ON Leases.Customer_ID = Customers.Customer_ID
