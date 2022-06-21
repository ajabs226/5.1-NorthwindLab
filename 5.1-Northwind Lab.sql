-- Select all the records from the "Customers" table. 
SELECT * FROM customers;

-- Get distinct countries from the Customers table. 
SELECT distinct country_region FROM customers;

-- Get all the records from the table Customers where the Customer’s ID starts with “BL”.
-- NOTE: ID values are numerical, so couldn't find with "BL"
SELECT * FROM customers WHERE id LIKE '2%';

-- Get the first 100 records of the orders table.
SELECT * FROM orders LIMIT 100;

-- Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM customers WHERE zip_postal_code IN ('1010', '3012', '12209', '05023');

-- Get all orders where the ShipRegion is not equal to NULL.
SELECT * FROM orders WHERE ship_country_region IS NOT NULL;

-- Get all customers ordered by the country, then by the city.
SELECT * FROM customers ORDER BY country_region, city ASC;

-- Add a new customer to the customers table. You can use whatever values/
INSERT INTO customers(first_name, last_name, mobile_phone)
	VALUES('First', 'Last', '248-555-2424');

-- Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France. (Note: this requires safe updates to be turned off. Search online for more info.)
UPDATE orders SET ship_country_region = 'EuroZone' WHERE ship_country_region = 'France';

-- Delete all orders from `order details` that have quantity of 1. 
DELETE FROM order_details WHERE quantity = 1;

-- Calculate the average, max, and min of the quantity at the `order details` table.
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;

-- Calculate the average, max, and min of the quantity at the `order details` table, grouped by the orderid. This will show the average, max, and min for each order.
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;

-- Find the CustomerID that placed order 10290 (orders table)
SELECT customer_id FROM orders WHERE id = 10290;

-- Do an inner join, left join, right join on orders and customers tables. (These are three separate queries, one for each type of join.)
SELECT * FROM customers
	INNER JOIN orders on orders.customer_id = customers.id;
SELECT * FROM customers
	LEFT JOIN orders ON orders.customer_id = customers.id;
SELECT * FROM customers
	RIGHT JOIN orders ON orders.customer_id = customers.id;
    
-- Use a join to get the ship city and ship country of all the orders which are associated with an employee who is in London.
SELECT ship_country_region, ship_city FROM orders
	INNER JOIN employees ON employees.id = orders.employee_id
	AND employees.country_region = 'London';   

-- Use a join to get the ship name of all orders that include a discontinued product. (See orders, order details, and products. 1 means discontinued.)
SELECT ship_name FROM orders
	JOIN order_details od ON orders.id = od.order_id
    JOIN products ps on od.product_id = ps.id 
    WHERE discontinued = 1;

-- Get employees’ firstname for all employees who report to no one.
-- column not available
SELECT first_name FROM employees

-- Get employees’ firstname for all employees who report to Andrew.
-- column not available