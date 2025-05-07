use lesson
--Create table Users (
--Id int Primary key not null,
--Name nvarchar(100),
--Email nvarchar(100),
--City Nvarchar(100));

--Create table Products (
--Id int Primary key Not null,
--Name nvarchar(100),
--Price decimal(10,2)
--);

--Create table Orders (
--   Id INT PRIMARY KEY NOT NULL,
--    UserId INT FOREIGN KEY REFERENCES Users(Id),
--    ProductId INT FOREIGN KEY REFERENCES Products(Id),
--    Quantity INT,
--    OrderDate DATE
--);


--INSERT INTO Users (Id, Name, Email, City) VALUES
--(1, 'Ali Hasanov', 'ali@example.com', 'Baku'),
--(2, 'Aysel Quliyeva', 'aysel@example.com', 'Ganja'),
--(3, 'Mehdi Ibrahimov', 'mehdi@example.com', 'Sumgait'),
--(4, 'Fatma Mammadova', 'fatma@example.com', 'Baku'),
--(5, 'Vugar Aliyev', 'vugar@example.com', 'Shirvan');


--INSERT INTO Products (Id, Name, Price) VALUES
--(1, 'Laptop', 1200.00),
--(2, 'Smartphone', 800.50),
--(3, 'Tablet', 450.75),
--(4, 'Monitor', 320.00),
--(5, 'Keyboard', 85.25);


--INSERT INTO Orders (Id, UserId, ProductId, Quantity, OrderDate) VALUES
--(1, 1, 1, 1, '2023-01-15'),
--(2, 1, 2, 2, '2023-02-20'),
--(3, 2, 3, 1, '2023-03-05'),
--(4, 3, 4, 3, '2023-04-10'),
--(5, 4, 5, 2, '2023-05-15'),
--(6, 5, 1, 1, '2023-06-20'),
--(7, 2, 2, 1, '2023-07-25'),
--(8, 3, 3, 2, '2023-08-30'),
--(9, 4, 4, 1, '2023-09-05'),
--(10, 5, 5, 3, '2023-10-10');

--SELECT 
--    Users.Name,
--    Users.Email,
--    Orders.Quantity
--FROM 
--    Users
--INNER JOIN 
--    Orders ON Users.Id = Orders.UserId

--SELECT U.Name İstifadəçi, SUM(P.Price * O.Quantity) ÜmumiXərc
--FROM Users U, Orders O, Products P
--WHERE U.Id = O.UserId AND O.ProductId = P.Id
--GROUP BY U.Name
--ORDER BY ÜmumiXərc 

--SELECT U.City Şəhər, AVG(P.Price * O.Quantity) OrtalamaXərc
--FROM Users U, Orders O, Products P
--WHERE U.Id = O.UserId AND O.ProductId = P.Id
--GROUP BY U.City
--ORDER BY OrtalamaXərc

--SELECT TOP 1 U.Name İstifadəçi, SUM(P.Price * O.Quantity) Xərc
--FROM Users U, Orders O, Products P
--WHERE U.Id = O.UserId AND O.ProductId = P.Id
--GROUP BY U.Name
--ORDER BY Xərc 

--SELECT P.Name Məhsul, SUM(ISNULL(O.Quantity, 0)) SifarişSayı
--FROM Products P
--LEFT JOIN Orders O ON P.Id = O.ProductId
--GROUP BY P.Name
--ORDER BY SifarişSayı 

--SELECT U.Name İstifadəçi, P.Name Məhsul, O.OrderDate Tarix, 
--       (P.Price * O.Quantity) Məbləğ
--FROM Users U, Orders O, Products P
--WHERE U.Id = O.UserId AND O.ProductId = P.Id
--  AND O.OrderDate >= DATEADD(day, -30, GETDATE())
--ORDER BY O.OrderDate 

--SELECT U.Name İstifadəçi, SUM(P.Price * O.Quantity) ÜmumiXərc
--FROM Users U
--LEFT JOIN Orders O ON U.Id = O.UserId
--LEFT JOIN Products P ON O.ProductId = P.Id
--GROUP BY U.Name
--ORDER BY ÜmumiXərc DESC

--SELECT U.Name İstifadəçi, SUM(P.Price * O.Quantity) ÜmumiXərc
--FROM Users U, Orders O, Products P
--WHERE U.Id = O.UserId AND O.ProductId = P.Id
--GROUP BY U.Name
--HAVING SUM(P.Price * O.Quantity) > 300
--ORDER BY ÜmumiXərc DESC

--SELECT 
--    P.Name AS 'Məhsul adı',
--    AVG(ISNULL(O.Quantity, 0)) AS 'Ortalama satış miqdarı'
--FROM 
--    Products P
--LEFT JOIN 
--    Orders O ON P.Id = O.ProductId
--GROUP BY 
--    P.Name
--ORDER BY 
--    AVG(ISNULL(O.Quantity, 0)) DESC;
