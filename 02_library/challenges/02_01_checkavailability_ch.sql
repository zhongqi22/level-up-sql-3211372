-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

Select Count(1) As AvailableCopies from Books B
Left Join Loans L On L.BookID = B.BookID and L.ReturnedDate Is Null
where B.Title='Dracula' and L.LoanID is Null

Select * From Books where Title='Dracula'

Select * from Loans where BookID in (12,60,73) and ReturnedDate is null