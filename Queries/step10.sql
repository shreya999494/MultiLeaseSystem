Select v.Vehicle_VIN, v.Model, v.Type, v.Colour, lt.Max_Kilometres
FROM Vehicles v, Leases l, LEASE_TERMS lt
WHERE  v.Vehicle_VIN = l.Vehicle_VIN AND l.Lease_Terms_ID = lt.Lease_Terms_ID
