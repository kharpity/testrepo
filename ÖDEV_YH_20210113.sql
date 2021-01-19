USE NORTHWND
GO
INSERT INTO Categories (CategoryName) VALUES ('Urunsuz')
INSERT INTO Products (ProductName) VALUES ('Kategorisiz')
INSERT INTO Employees (LastName,FirstName) VALUES ('Çalışkan','Süleyman')

--SORU 1in YÖNTEMI LEFT JOIN:
GO
SELECT CategoryName
FROM Categories LEFT JOIN Products
ON Categories.CategoryID=Products.CategoryID
WHERE products.categoryid is null;

--SORU 2in YÖNTEMI RIGHT JOIN:
SELECT ProductName
FROM Categories RIGHT JOIN Products
ON Categories.CategoryID=Products.CategoryID
WHERE products.categoryid is null


--SORU 3ün YÖNTEMI FULL OUTER JOIN:
SELECT Categoryname, ProductName
FROM Categories FULL OUTER JOIN Products
ON Categories.CategoryID=Products.CategoryID

--SORU 4ün YÖNTEMI FULL OUTER JOIN (kesisen küme haric):
SELECT Categoryname, ProductName
FROM Categories FULL OUTER JOIN Products
ON Categories.CategoryID=Products.CategoryID
WHERE Categories.categoryid is null or Products.categoryid is null

--SORU 5in YÖNTEMI INNER JOIN:

SELECT lastname + ', ' + firstname AS 'Personel', SUM (Quantity) AS 'Satis Adedi'
FROM Employees
INNER JOIN Orders
ON Employees.EmployeeID =Orders.EmployeeID 
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
GROUP BY Employees.FirstName,Employees.LastName

ILK DENEME :
SELECT lastname + ', ' + firstname AS 'Personel'
FROM Employees
INNER JOIN Orders
ON Orders.OrderID = [Order Details].OrderID

SELECT SUM (Quantity) AS 'Satis Adedi'
FROM [Order Details]
Inner Join Orders
ON Orders.OrderID = [Order Details].OrderID

--SORU 6nin YÖNTEMI INNER JOIN:

SELECT lastname + ', ' + firstname AS 'Personel', SUM(Quantity*UnitPrice) AS 'Satis Tutari'
FROM Employees
INNER JOIN Orders
ON Employees.EmployeeID =Orders.EmployeeID 
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
GROUP BY Employees.FirstName,Employees.LastName

--SORU 7nin YÖNTEMI INNER JOIN:

SELECT lastname + ', ' + firstname AS 'Personel', SUM(Quantity*UnitPrice) AS 'Satis Tutari'
FROM Employees
LEFT JOIN Orders
ON Employees.EmployeeID=Orders.EmployeeID 
LEFT JOIN [Order Details]
ON [Order Details].OrderID=Orders.OrderID 
GROUP BY FirstName,LastName








