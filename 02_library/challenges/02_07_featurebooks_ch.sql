-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

Select Title, Barcode From Books B 
Where BookID Not In (Select BookID From Loans Where ReturnedDate Is Null)
and Published between 1890 and 1899
Order By Title