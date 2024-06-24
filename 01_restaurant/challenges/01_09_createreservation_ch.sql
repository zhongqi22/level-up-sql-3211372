-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

  Insert into Customers (FirstName, LastName, Email) 
  Select 'Sam', 'McAdams', 'smac@kinetecoinc.com'
  Where not exists (Select CustomerID from Customers where Email='smac@kinetecoinc.com');

Insert into Reservations (CustomerID, PartySize, Date) 
select CustomerID, 5, '2022-08-12 18:00' from Customers where email = 'smac@kinetecoinc.com';



Select * from Customers where email = 'smac@kinetecoinc.com';

select * from Reservations where CustomerID = 102

update customers set phone='555-555-1212' where CustomerID = 102