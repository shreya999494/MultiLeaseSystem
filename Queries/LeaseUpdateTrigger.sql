create table Leases_Audit
([Date of Change] datetime  null,
[Date Lease Begins Change] bit  null,
[Old Date Lease Begins] date  null,
[New Date Lease Begins] date,
[First Payment Change] bit  null,
[Old First Payment] date  null,
[New First Payment] date,
[Montly Payment Amount Change] bit  null,
[Old Monthly Payment Amount] money  null,
[New Monthly Payment Amount] money,
[Monthly Payment Number Change] bit  null,
[Old Monthly Payment Number] int  null,
[New Monthy Payment Number] int,
[VIN Change] bit  null,
[Old VIN] varchar(50)  null,
[New VIN] varchar(50),
[Lease Terms ID] int  null,
[Customer Name] varchar(50)  null,
[Customer ID] int  null
)

go
create trigger Leases_Update_Trigger
on Leases
for update 
as 
begin
	insert into Leases_Audit ([Lease Terms ID],
							  [Date of Change],
							  [Date Lease Begins Change], [Old Date Lease Begins],[New Date Lease Begins],
							  [First Payment Change],[Old First Payment],[New First Payment],
							  [Montly Payment Amount Change],[Old Monthly Payment Amount],[New Monthly Payment Amount],
							  [Monthly Payment Number Change],[Old Monthly Payment Number],[New Monthy Payment Number],
							  [VIN Change],[Old VIN],[New VIN], [Customer Name], [Customer ID])
	select inserted.Lease_Terms_ID,
		   [Date of Change]= GETDATE(), 
		   case when inserted.Date_Lease_Begins = deleted.Date_Lease_Begins then 0 else 1 end,
		   deleted.Date_Lease_Begins, inserted.Date_Lease_Begins,
		    case when inserted.First_Payment_Date = deleted.First_Payment_Date then 0 else 1 end , 
		   deleted.First_Payment_Date, inserted.First_Payment_Date, 
		    case when inserted.Monthly_Payment_Amount = deleted.Monthly_Payment_Amount then 0 else 1 end,
		   deleted.Monthly_Payment_Amount, inserted.Monthly_Payment_Amount, 
		    case when inserted.Monthly_Payment_Number = deleted.Monthly_Payment_Number then 0 else 1 end ,
		   deleted.Monthly_Payment_Number, inserted.Monthly_Payment_Number, 
		    case when inserted.Vehicle_VIN = deleted.Vehicle_VIN then 0 else 1 end ,
		   deleted.Vehicle_VIN, inserted.Vehicle_VIN,
		   inserted.Cust_Name,
		   inserted.Customer_ID
	from deleted INNER JOIN inserted ON deleted.Lease_Terms_ID = inserted.Lease_Terms_ID
end