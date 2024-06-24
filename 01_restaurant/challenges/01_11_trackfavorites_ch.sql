-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Select * from customers where firstname='Cleo' and lastname='Goldwater';
--42

Select * from dishes where name='Quinoa Salmon Salad'
--9

Update Customers Set FavoriteDish = (Select DishID from Dishes where name='Quinoa Salmon Salad')
Where firstname='Cleo' and lastname='Goldwater'

Select C.customerid, d.dishid, d.name From Customers C Join Dishes D on D.name='Quinoa Salmon Salad'
Where C.firstname='Cleo' and C.lastname='Goldwater'

Select * from dishes where dishid = 14