
create database Homework2 use Homework2

-- Basic-Level Tasks (10)

CREATE SCHEMA task1;

-- task1 CREATE table task1.Employees (EmpID Int, Name Varchar(50), Salary Decimal (10,2)) Select * from task1.Employees;

-- task2 Insert into task1.Employees values (1, 'Bakhodir', 1500.29),
(2, 'Jasur', 2000.00), (3, 'Ali', 1750.50);

-- task3 Update task1.Employees Set salary = 7000 Where EmpID = 1

Select * from task1.Employees;

-- task4 Delete from task1.Employees where EmpID=2

-- task5 -- Drop jadval yoki databazani butunlay o'chiradi -- Turncate jadval ichidagi ma'lumotlarni o'chiradi -- Delete jadval ichidagi ma'lumotlarni where kalit so'zi orqali istalganini o'chiradi va databazani butunlay o'chiradi

-- task6 Alter Table task1.Employees Alter column Name VARCHAR(100); Select * from task1.Employees;

-- task7 ALTER TABLE task1.Employees Add Department VARCHAR(50);

Select * from task1.Employees;

-- task8 ALTER TABLE task1.Employees Alter column Salary float(50);

Select * from task1.Employees;

-- task9 create table Departments (DepartmentID INT PRIMARY KEY,DepartmentName Varchar(50)) Select * from departments

-- task10 Truncate table Departments Select * from departments

-- Intermediate-Level Tasks (6)

-- task11 Insert into Departments values (1, 'Finance'),
(2, 'Accounting'), (3, 'Insurance'), (4, 'Banking'), (5, 'Tax and Taxation'); Select * from departments

-- task12 Exec sp_rename 'task1.Employees.Department', 'Management', 'COLUMN';

Select * from task1.Employees; -- task13 Truncate table task1.Employees

-- task14 Alter table task1.Employees Drop Column Department;

-- task15 EXEC sp_rename 'task1.Employees', 'StaffMembers';

Select * from task1.StaffMembers;

-- task16 Drop table task1.StaffMembers

--Advanced-Level Tasks (9)

-- task17 & task18 CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100) NOT NULL, Category VARCHAR(50), Price DECIMAL(10,2) NOT NULL, Check (Price > 0), ); Select * from Products;

--task19 Alter table Products ADD StockQuantity int(50) default 50

--task20 Exec sp_rename 'Products.Category', 'ProductCategory','Column'

--task21 Insert into Products values( 2,'Beer', 'Baverage', 1000, 32), (3,'Beer', 'Baverage', 1000, 32), (4,'Beer', 'Baverage', 1000, 32), (5,'Beer', 'Baverage', 1000, 32), (6,'Beer', 'Baverage', 1000, 32);

--task22 Select * into Products_Backup from Products

Select * from Products_Backup;

--task23 Exec sp_rename 'dbo.Products', 'Inventory' Select * from Inventory;

--task24

ALTER TABLE Inventory DROP CONSTRAINT CK__Products__Price__3B75D760;

ALTER TABLE Inventory ALTER COLUMN Price FLOAT;

--task25 Alter table Inventory Add ProductCode int identity(1000,5)
