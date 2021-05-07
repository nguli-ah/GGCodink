/*
	Daniel Yesayas Junior Wattimury
	200030349
	BD203
*/

-- LATIHAN #1
-- Nomor 1
USE Northwind;
-- Nomor 2
SELECT * FROM Suppliers;
-- Nomor 3
SELECT * FROM Employees;
-- Nomor 4
SELECT * FROM Customers;
-- Nomor 5
SELECT * FROM Orders;
-- Nomor 6
SELECT ProductName FROM Products;
-- Nomor 7
SELECT ProductID, ProductName, CategoryID FROM Products;
/* SELECT Products.ProductID, Products.ProductName, Categories.CategoryName FROM Products 
JOIN Categories ON (Products.CategoryID = Categories.CategoryID); */
-- Nomor 8 
SELECT SupplierID, CompanyName, Address  FROM Suppliers;
-- Nomor 9
SELECT OrderID, ProductID, Quantity FROM [Order Details];


-- LATIHAN #2
-- Nomor 1
SELECT DISTINCT Country FROM Suppliers;
-- Nomor 2
SELECT DISTINCT CustomerID FROM Orders;
-- Nomor 3
SELECT DISTINCT CustomerID, EmployeeID FROM Orders;
-- Nomor 4
SELECT DISTINCT EmployeeID, ShipCountry FROM Orders;
-- Nomor 5
SELECT DISTINCT ProductID FROM [Order Details];
-- Nomor 6
SELECT DISTINCT ProductID, Discount FROM [Order Details] ORDER BY ProductID ASC;


-- LATIHAN #3
-- Nomor 1
SELECT * FROM Suppliers WHERE Country = 'USA';
-- Nomor 2
SELECT * FROM Products WHERE CategoryID <> 8;
-- Nomor 3
SELECT * FROM Orders WHERE OrderDate = '1996-06-08';
-- Nomor 4
SELECT * FROM Orders WHERE ShippedDate = '1996-08-16';
-- Nomor 5
SELECT * FROM [Order Details] WHERE (OrderID = 10248 AND ProductID = 72);
-- Nomor 6
SELECT * FROM Employees WHERE (City = 'Tacoma' OR City = 'Seattle');


-- LATIHAN #4
-- Nomor 1
SELECT * FROM Products WHERE (SupplierID BETWEEN 3 AND 7);
-- Nomor 2 
SELECT * FROM Products WHERE (CategoryID NOT BETWEEN 4 AND 8);
-- Nomor 3
SELECT * FROM Orders WHERE (OrderDate NOT BETWEEN '1996-06-08' AND '1996-08-30');
-- Nomor 4
SELECT * FROM Orders WHERE (ShippedDate BETWEEN '1996-10-01' AND '1996-10-31');


-- LATIHAN #5
-- Nomor 1
SELECT * FROM Products WHERE ProductName LIKE 'R%';
-- Nomor 2
SELECT * FROM Products WHERE ProductName NOT LIKE '%A%';
-- Nomor 3
SELECT * FROM Employees WHERE FirstName NOT LIKE '_A%';
-- Nomor 4
SELECT * FROM Categories WHERE CategoryName LIKE 'C%S';

-- LATIHAN #6
-- Nomor 1
SELECT * FROM Orders WHERE (ShippedDate IN ('1996-07-16','1996-07-23','1996-07-10'));
-- Nomor 2
SELECT CompanyName,Country FROM Customers WHERE (Country NOT IN ('Germany','France','Spain','UK','Indonesia'));
-- Nomor 3
SELECT ProductID, ProductName, UnitPrice FROM products WHERE (CategoryID IN (1,2,8));
-- Nomor 4
SELECT * FROM Products WHERE (CategoryID IN(SELECT CategoryID FROM Categories WHERE(Categories.CategoryName IN ('Beverages','Condiments','Seafood'))));


-- LATIHAN #7
-- Nomor 1 TRUE
-- Nomor 2 FALSE
-- Nomor 3 FALSE
-- Nomor 4 FALSE
-- Nomor 5 FALSE
-- Nomor 6 FALSE
-- Nomor 7 TRUE
-- Nomor 8 TRUE
-- Nomor 9 TRUE
-- Nomor 10 FALSE
-- Nomor 11 TRUE
-- Nomor 12 TRUE


-- LATIHAN #8
-- Nomor 1
SELECT * FROM Products WHERE (ProductName NOT LIKE 'C%') AND (UnitPrice > 15);
-- Nomor 2
SELECT * FROM Customers WHERE (Country IN ('Germany', 'UK', 'Mexico')) AND (ContactName LIKE '%o%');
-- Nomor 3
SELECT * FROM Orders WHERE (ShippedDate IN ('1996-07-10','1996-07-23','1996-07-16')) AND (EmployeeID NOT IN (1,3));


-- LATIHAN #9
-- Nomor 1
SELECT * FROM Orders WHERE CustomerID = 'AROUT' ORDER BY ShippedDate DESC;
-- Nomor 2
SELECT * FROM Customers WHERE (City IN ('Madrid', 'London', 'Portland')) AND (CompanyName LIKE '%A%') ORDER BY CustomerID ASC;
-- Nomor 3
SELECT * FROM [Order Details] ORDER BY UnitPrice DESC, Quantity ASC, ProductID DESC;