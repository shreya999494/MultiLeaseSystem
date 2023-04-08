Select v.Vehicle_VIN, v.Model, v.Type, v.Colour
FROM Vehicles v
left outer join Leases l
on v.Vehicle_VIN = l.Vehicle_VIN
where l.Lease_Terms_ID IS NULL



