-- 1. SELECT *
SELECT * FROM Orders;
SELECT * FROM Customers;
SELECT * FROM Menu;

-- 2. LIKE
-- Menu name with the word "Chicken" in it
SELECT * FROM Menu
WHERE MenuName LIKE '%Chicken%';

-- 3. INNER JOIN
-- Orders with customer info
SELECT Orders.OrderDate, Orders.OrderMenu, Customers.CustomerName, Customers.DateOfBirth
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID
ORDER BY OrderDate ASC;

-- 4. LEFT JOIN
-- Orders only with missing customer info
SELECT Orders.OrderDate, Orders.OrderMenu, Customers.CustomerName, Customers.DateOfBirth
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE Customers.CustomerName IS NULL
OR Customers.DateOfBirth IS NULL
ORDER BY OrderDate ASC;

-- 5. RIGHT JOIN
-- Customers that didn't order anything
SELECT Orders.OrderDate, Orders.OrderMenu, Customers.CustomerName, Customers.DateOfBirth
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE Orders.OrderID IS NULL
ORDER BY OrderDate ASC;

-- 6. UNION
-- Orders and Menu in one table
SELECT * FROM Menu
UNION
SELECT Orders.OrderID, Orders.OrderMenu FROM Orders;

-- 7. GROUP BY
-- Number of orders made each date
SELECT COUNT(OrderID), OrderDate FROM Orders
GROUP BY OrderDate;

-- 8. OFFSET
-- 5 first orders made in November
SELECT * FROM Orders
LIMIT 5 OFFSET 3;
