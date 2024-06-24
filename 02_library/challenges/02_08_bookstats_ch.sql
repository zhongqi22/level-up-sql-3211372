-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select * from books where published = 1375


Select Published, Count(distinct Title) as PublishedTitle
--, group_concat(distinct title) as PublishedBooks
 From Books 
Group By Published
Order By PublishedTitle desc

Select B.Title, Count(1) as LoanedCount From Loans L
Join Books B On B.BookID = L.BookID
Group By B.Title
Order By LoanedCount desc
Limit 5

