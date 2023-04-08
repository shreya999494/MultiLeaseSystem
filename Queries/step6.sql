
INSERT INTO Customers (First_Name, Last_Name, [Address], [City], Province, Postal_Code, Phone_Number)
VALUES 
	   ('Scalli','Wag','80 Plank Walk', 'Halifax', 'NS', 'B2L1L1', '(902) 812-4567'),
	   ('Inna','Chambers','2 Politician Street','Halifax','NS','B3M1M1','(902) 314-4212')

insert into Leases ([Date_Lease_Begins], [First_Payment_Date], [Monthly_Payment_Amount], [Monthly_Payment_Number])
values
	('2004/01/15','2004/02/15',650,36),
	('2002/02/20','2002/03/01',450,48),
	('2004/03/16','2004/04/16',350,12),
	('2004/04/01','2004/05/01',600,24),
	('2004/07/01','2004/07/15',300,12);

select * from Leases

INSERT INTO  COLORS (Car_Colors)
VALUES ('Deep Blue'),
		('Racey Red'),
		('Lemon Yellow'),
		('Lime Green'),
		('Silver Grey')

insert into vehicles ([Vehicle_VIN], [Model], [Type], [Colour], [Year], [Kilometres_Travelled], [Leased_Before], [Current_Vehicle_Val], [Vehicle_Options], [Transmission])
values
	('3W9T1-2Q10D-12D0P-12D0P','SC-40','2dr Coupe','Deep Blue','2003',0,0,90000,1,'Auto'),
	('7D901-9W120-Z0029-021P2','Pirate','2dr Coupe','Racey Red','2000',100000,1,45000,1,'Manual'),
	('Z1221-X129A-K0212-9021J','Expensive','4dr Sedan','Lemon Yellow','2003',0,0,70000,0,'Auto'),
	('M21L1-3129S-V1292-L12X1','Rock','Truck','Silver Grey','2001',127000,1,45000,1,'Manual')

insert into vehicles ([Vehicle_VIN], [Model], [Type], [Colour], [Year], [Kilometres_Travelled], [Leased_Before], [Current_Vehicle_Val], [Vehicle_Options], [Transmission])
values
	('K219M-K129P-V12BP-210G4','Speedy','2dr Coupe','Silver Grey','2003',0,0,60000,1,'Auto')

Insert into MODELS (Vehicle_VIN)
values
	('3W9T1-2Q10D-12D0P-12D0P'),
	('7D901-9W120-Z0029-021P2'),
	('Z1221-X129A-K0212-9021J'),
	('M21L1-3129S-V1292-L12X1')

UPDATE Leases
SET Leases.Vehicle_VIN = 'M21L1-3129S-V1292-L12X1'
FROM Leases l
WHERE l.Monthly_Payment_Amount = 300

UPDATE COLORS
SET
	[Vehicle_VIN] = 'Z1221-X129A-K0212-9021J'
WHERE 
	Car_Colors = 'Lemon Yellow'

Select * from Vehicles

SELECT * from Leases

Insert Into LEASE_TERMS ([Number_of_Years], [Max_Kilometres], [Extra_Mileage_Cost])
values
	(3,120000,0.25),
	(1,85000,0.20),
	(2,150000,0.20),
	(4,130000,0.15),
	(1,150000,0.35)


ALTER TABLE Leases
Add Cust_Name varchar(50)


UPDATE LEASE_TERMS
SET
	LEASE_TERMS.Lease_Terms_ID = 6
WHERE
	LEASE_TERMS.Extra_Mileage_Cost = 0.35

Select * from LEASE_TERMS
Select * FROM Leases
Select * from COLORS
Select * FROM MODELS
Select * from PAYMENTS
Select * FROM Customers
Select * from V_TYPE
Select * FROM Vehicles


ALTER TABLE MODELS
Add Car_Models varchar(30) NULL
--('3W9T1-2Q10D-12D0P-2E1R2','2dr Coupe'),
--		('Z1221-X129A-KO212-9021J','4dr Sedan'),
--		('7D901-9W120-Z0029-021P2', '2dr Coupe'),
--		('M21L1-3129S-V1292-L12X1','Truck'),
--		--('K219M-K129P-V12BP-210G4','2dr Coupe')


