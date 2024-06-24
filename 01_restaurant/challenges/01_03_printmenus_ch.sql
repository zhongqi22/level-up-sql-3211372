-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Type, Name, Price, Description FROM Dishes order by Price;

SELECT Type, Name, Price, Description FROM Dishes Where Type in ('Appetizer', 'Beverage') Order By Type;

SELECT Type, Name, Price, Description FROM Dishes Where Type <> 'Beverage' ORDER BY Type;