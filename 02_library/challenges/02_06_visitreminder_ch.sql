-- Prepare a report of the library patrons
-- who have checked out the fewest books.


Select P.FirstName, P.Email, Count(1) as CheckedOutLoans from Loans L
Join Patrons P On P.PatronID = L.PatronID
Group By L.PatronID 
Order By CheckedOutLoans 
Limit 5