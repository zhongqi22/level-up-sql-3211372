-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.


select * from customers where firstname = 'Norby';
select * from reservations where customerID = 64 and date > '2022-07-24'

Delete From reservations where ReservationID = 2000

Update reservations set date = null where ReservationID = 2000

select * from reservations where ReservationID = 2000

Select C.CustomerID, R.ReservationID from Customers C 
Join Reservations R on R.customerID = C.customerID 
where R.date > '2022-07-24'