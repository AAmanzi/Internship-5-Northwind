SELECT TOP 50 CompanyName, ContactName, ContactTitle, Address, City, Phone FROM Customers;

SELECT COUNT(CustomerID) FROM Customers
WHERE Fax IS NOT NULL AND REGION IS NOT NULL;

SELECT TOP 2 FirstName, LastName, Title, BirthDate FROM Employees
ORDER BY BirthDate ASC;

SELECT * FROM Customers
WHERE Address LIKE '[0-9]%' AND ContactName LIKE '__a%'
ORDER BY Country ASC;

SELECT TOP 1 * FROM [Order Details]
ORDER BY Quantity DESC;

SELECT COUNT(Customers.CustomerID) FROM Customers 
WHERE NOT EXISTS(SELECT * FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);