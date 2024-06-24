-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

Update Loans Set ReturnedDate='2022-07-05'
Where BookID in (
Select BookID From Books Where Barcode in (
'6435968624', '5677520613', '8730298424'
)
)
and ReturnedDate Is Null

Select * from Loans 
Where BookID in (
Select BookID From Books Where Barcode in (
'6435968624', '5677520613', '8730298424'
)
)
and ReturnedDate is null

select * from loans where ReturnedDate='2022-07-05'
