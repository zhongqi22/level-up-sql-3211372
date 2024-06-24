-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

select * from Patrons P
where firstname = 'Jack' and lastname='Vaan' and email = 'jvaan@wisdompets.com'
--50

Insert Into Loans(BookID, PatronID, LoanDate, DueDate)
select BookID, 50, '2022-08-25', '2022-09-08' from Books where Barcode in ('2855934983', '4043822646')

select * from Loans Order by LoanID desc 
limit 2