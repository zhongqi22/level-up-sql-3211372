-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

--Insert into orders based on customer info
Insert into Orders (CustomerID, OrderDate) 
select CustomerID, '2022-09-20 14:00:00' from Customers C
Where C.firstName='Loretta' and c.lastName='Hundey'
and C.Address='6939 Elka Place' 
and Not Exists (Select O.CustomerID from Orders O Where O.CustomerID = C.CustomerID and OrderDate = '2022-09-20 14:00:00')

--Created order id: 1001
--Insert into OrdersDishes based on Dishes Items
Insert Into OrdersDishes (OrderID, DishID)
Select 1001, DishID From Dishes 
where name in 
('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie') 
and Not Exists (Select OrderID from OrdersDishes where OrderID = 1001)

--Show total price
Select sum(D.price) From OrdersDishes OD 
Join Dishes D On D.DishID = OD.DishID
Where OD.OrderID = 1001


select * from orders where customerid = 70 order by orderid desc

select * from ordersdishes where orderid = 1001 order by DishID

select * from Customers C
Where C.firstName='Loretta' and c.lastName='Hundey'
and C.Address='6939 Elka Place' -- 70

select * from dishes where name in 
('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')
--4, 7, 20