--- Nama : Daniel Yesayas Junior Wattimury
--- Kelas: BD203
--- NIM  : 200030349

USE Northwind

select * from Orders
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID

SELECT * FROM  Products as P
INNER JOIN Categories as C
ON P.CategoryID = C.CategoryID
INNER JOIN Suppliers as S
on P.SupplierID = S.SupplierID

SELECT * FROM Orders AS O
INNER JOIN Customers as C
ON O.CustomerID = C.CustomerID

SELECT        Suppliers.*, Products.*, [Order Details].*, Categories.*, Orders.*
FROM            Suppliers INNER JOIN
                         Products ON Suppliers.SupplierID = Products.SupplierID INNER JOIN
                         [Order Details] ON Products.ProductID = [Order Details].ProductID INNER JOIN
                         Categories ON Products.CategoryID = Categories.CategoryID INNER JOIN
                         Orders ON [Order Details].OrderID = Orders.OrderID

SELECT        Orders.*, Customers.*, Employees.*, Shippers.*
FROM            Orders INNER JOIN
                         Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                         Customers ON Orders.CustomerID = Customers.CustomerID INNER JOIN
                         Shippers ON Orders.ShipVia = Shippers.ShipperID