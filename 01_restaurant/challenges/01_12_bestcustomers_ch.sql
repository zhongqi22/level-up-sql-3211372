-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

--first name, last name, email
-- sort by order number 
Select C.firstname, c.lastname, c.email, count(1) as OrderNumber
from Orders O 
Join Customers C On C.CustomerID = O.CustomerID
Group By O.CustomerID
Order By OrderNumber Desc
Limit 6