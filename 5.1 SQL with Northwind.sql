-- Select all the records from the "Customers" table. 
SELECT * from customers;

-- Get distinct countries from the Customers table. 
SELECT distinct Country FROM customers;
-- Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT * FROM customers WHERE CustomerID LIKE 'BL%';

-- Get the first 100 records of the orders table.
SELECT * FROM orders LIMIT 100;

-- Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM customers WHERE PostalCode IN ('1010', '3012', '12209', '05023');

-- Get all orders where the ShipRegion is not equal to NULL.
SELECT * FROM orders WHERE ShipRegion IS NOT NULL;

-- Get all customers ordered by the country, then by the city.
SELECT * FROM customers ORDER BY Country, City;

-- Add a new customer to the customers table. You can use whatever values/
INSERT INTO customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
	VALUES ('12345', 'Company Name', 'John Doe', 'Hunter', '123 Main St', 'Troy', 'MI', '48083', 'USA', '248-555-2424', '248-555-2425');

-- Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France. (Note: this requires safe updates to be turned off. Search online for more info.)


-- Delete all orders from `order details` that have quantity of 1. 
DELETE FROM `order details` WHERE OrderID AND Quantity='1';

-- Calculate the average, max, and min of the quantity at the `order details` table.


-- Calculate the average, max, and min of the quantity at the `order details` table, grouped by the orderid. This will show the average, max, and min for each order.


-- Find the CustomerID that placed order 10290 (orders table)
SELECT CustomerID FROM orders WHERE OrderID='10290';

-- Do an inner join, left join, right join on orders and customers tables. (These are three separate queries, one for each type of join.)


-- Use a join to get the ship city and ship country of all the orders which are associated with an employee who is in London.


-- Use a join to get the ship name of all orders that include a discontinued product. (See orders, order details, and products. 1 means discontinued.)


-- Get employees’ firstname for all employees who report to no one.
SELECT FirstName FROM employees WHERE ReportsTo IS NULL;

-- Get employees’ firstname for all employees who report to Andrew.
SELECT FirstName FROM employees WHERE ReportsTo = '2';

