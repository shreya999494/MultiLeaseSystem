ALTER TABLE LEASE_TERMS
ADD CHECK (Number_of_Years >= 0 AND Number_of_Years <= 4);

ALTER TABLE Leases
ADD CHECK (Monthly_Payment_Number <= 48);

ALTER TABLE Leases
ADD CHECK (First_Payment_Date > Date_Lease_Begins);

ALTER TABLE LEASE_TERMS
ADD CHECK (Max_Kilometres <= 150000);
