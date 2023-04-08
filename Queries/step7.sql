Select c.First_Name, c.Last_Name, c.Phone_Number, 
	(
		Select COUNT (Customer_ID)
		FROM Leases
		WHERE Customer_ID = C.Customer_ID
	) AS Number_of_Leases
from Customers c

