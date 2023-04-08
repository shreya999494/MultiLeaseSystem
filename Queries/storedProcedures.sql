--Delete Customer 
create procedure DeleteCustomer (@CustID int)
as
begin
	DELETE from Customers
	where Customer_ID = @CustID
end

--Instert New Lease
create procedure InsertNewLease
(
	@DateBegin date, @DateFirstPay date, @MonthlyPayAmount money, 
	@MonthlyPayNumber int, @Veh_VIN varchar(25), @Name varchar(50), @custID int
)
as
Begin
	insert into Leases (Date_Lease_Begins, First_Payment_Date, Monthly_Payment_Amount, Monthly_Payment_Number, Vehicle_VIN, Cust_Name, Customer_ID)
	values (@DateBegin, @DateFirstPay, @MonthlyPayAmount, @MonthlyPayNumber, @Veh_VIN, @Name, @custID)
End

--Insert Payment
go
create procedure InsertPayment (@LeaseID int, @Date date, @Amount money)
as
begin
	insert into PAYMENTS (Lease_Terms_ID, Date, Amount)
	values (@LeaseID, @Date, @Amount)
end

--Select Lease by LeaseID
go
create procedure SelectLeaseByID (@LeaseID int)
as
Begin
	select * from Leases WHERE @LeaseID = Leases.Lease_Terms_ID
End
go
--Update Lease table by ID
create procedure UpdateLease (
	@id int, @dateLeaseBegins date = null, 
	@firstPaymentDate date = null, @monthlyPaymentAmount money = null, 
	@monthlyPaymentNumber money = null, @vehicleVIN varchar(25) = null,
	@customerID int = null, @custName varchar(50) = null
 )
 as
 Begin
	Update Leases
		SET Date_Lease_Begins = ISNULL(@dateLeaseBegins, Date_Lease_Begins),
			First_Payment_Date = ISNULL(@firstPaymentDate, First_Payment_Date),
			Monthly_Payment_Amount = ISNULL(@monthlyPaymentAmount, Monthly_Payment_Amount),
			Monthly_Payment_Number = ISNULL(@monthlyPaymentNumber, Monthly_Payment_Number),
			Vehicle_VIN = ISNULL(@vehicleVIN, Vehicle_VIN),
			Customer_ID = ISNULL(@customerID, Customer_ID),
			Cust_Name = ISNULL(@custName, Cust_Name)
		WHERE
			@id = Lease_Terms_ID
 End


 select * from Leases