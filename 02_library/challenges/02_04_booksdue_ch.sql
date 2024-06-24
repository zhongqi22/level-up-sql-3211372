-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

Select 
 L.DueDate,
 B.title,
 P.FirstName,
 P.Email
from Loans L
Join Books B On B.BookID = L.BookID
Join Patrons P On P.PatronID = L.PatronID
where L.DueDate='2022-07-13' and L.ReturnedDate is Null
