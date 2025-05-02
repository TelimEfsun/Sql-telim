--create database Company
--use Company

--Create table Customers(
--Id int Primary key,
--Name nvarchar(20),
--Surname nvarchar(30),
--Salary float
--)


--insert into Customers(Id,Name,Surname,Salary)
--values
--(1, 'Efsun', 'Yusubzade', 1000.00),
--(2, 'Fatime', 'Quliyeva', 1100.50),
--(3, 'Nicat', 'Əliyev', 1200.75);

--update Customers set Surname='Eliyev' where Id = 3

--delete Customers where Id=3

--select AVG(Salary) from Customers

--select * from Customers where Salary > (select AVG(Salary) from Customers)

--select Name
--From Customers
--where Salary = (select Max(Salary) from Customers)

--select Surname
--From Customers
--where Salary = (select Min(Salary) from Customers)


