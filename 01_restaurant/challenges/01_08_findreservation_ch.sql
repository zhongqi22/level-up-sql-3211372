-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

Select R.*, C.FirstName, C.LastName From Reservations R 
join Customers C On C.CustomerID = R.CustomerID
Where (C.FirstName like 'ste%'
or C.LastName like 'ste%')
and R.date like '%06-14%'
 and R.PartySize = 4 
 order by R.date desc