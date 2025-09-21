
 -- Easy-Level Tasks (10)

--- task 1
Select Top 5* From Orders

 -- task 2
Select Distinct Category from Products

 -- task 3
Select * From Products 
Where Price > 100

 -- task 4
 -- Write a query to select all Customers whose FirstName start with 'A' using the LIKE operator.
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

 -- task 5
-- Order the results of a Products table by Price in ascending order.
Select* from Products order by Price asc

-- task 6
-- Write a query that uses the WHERE clause to filter for employees with Salary >= 60000 and DepartmentName = 'HR'.
	Select * from Employees where Salary>=60000 and  DepartmentName ='HR' 

-- task 7
-- Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".From Employees table
	SELECT 
    ISNULL(Email, 'noemail@example.com') AS Email
	FROM Employees;

	-- task 8
	--Write a query that shows all products with Price BETWEEN 50 AND 100.
	Select * from Products where Price Between 50 and 100

	-- task 9
	--Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.
	Select Distinct Category, ProductName from Products

	-- task 10
	--After SELECT DISTINCT on two columns (Category and ProductName) Order the results by ProductName in descending order.
		SELECT DISTINCT Category, ProductName
		FROM Products
		ORDER BY ProductName DESC;


	-- Medium-Level Tasks (10)
	-- task 11
	-- Write a query to select the top 10 products from the Products table, ordered by Price DESC.
		Select Top 10 *  from Products order by Price desc  

	-- task 12
	-- Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
	SELECT 
    COALESCE(FirstName, LastName) AS Name
	FROM Employees;

	-- task 13 
	-- Write a query that selects distinct Category and Price from the Products table.
	SELECT DISTINCT Category, Price
		FROM Products

	-- task 14
	-- Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or DepartmentName = 'Marketing'.
	Select * from Employees Where Age Between 30 and 40 Or DepartmentName = 'Marketing'

	-- task 15
	-- Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
		Select * from Employees 
		Order by Salary desc
		Offset 10 rows
		Fetch next 10 rows only
	-- task 16 
	-- Write a query to display all products with Price <= 1000 and StockQuantity > 50, sorted by Stock in ascending order.
		SELECT *
		FROM Products
		WHERE Price <= 1000 
		AND StockQuantity > 50
		ORDER BY StockQuantity ASC;

	-- task 17
	-- Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
		
		Select * from Products Where ProductName Like '%e%' 
			
	-- task 18
	-- Use IN operator to filter for employees who work in either 'HR', 'IT', or 'Finance'.
		Select * from Employees where DepartmentName IN ('HR', 'IT', 'Finance');

	-- task 19
	-- Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.Use customers table
	Select * from Customers 
	Order by City asc ,PostalCode desc

	-- Hard-Level Tasks
	--task 20
	-- Write a query that selects the top 5 products with the highest sales, using TOP(5) and ordered by SaleAmount DESC.
	Select top 5* from Sales order by SalesAmount desc

	--task 20
	-- Combine FirstName and LastName into one column named FullName in the Employees table. (only in select statement)
		SELECT FirstName + ' ' + LastName AS FullName
		FROM Employees;

	-- task 21
	--Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
		Select Distinct Category,ProductName,Price from Products where Price >50

	-- task 22
	-- Write a query that selects products whose Price is less than 10% of the average price in the Products table. (Do some research on how to find average price of all products)
		Select * from Products WHERE Price < (SELECT AVG(Price) * 0.10 FROM Products);

	-- task 23
	-- Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
		SELECT *
		FROM Employees
		WHERE Age < 30 
		AND Department IN ('HR', 'IT');

		SELECT *
		FROM Employees
		WHERE Age < 30 
		AND (Department = 'HR' OR Department = 'IT');

	-- task 24
	-- Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
		Select * from Customers Where Email Like '%@gmail.com%'

	-- task 25
	-- Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
		Select * from Employees Where Salary > ALl(Select Salary from Employees where Department='Sales')
		SELECT * From Employees Where Salary > (SELECT MAX(Salary) FROM Employees Where Department='Sales');

	--task 26
	-- Write a query that filters the Orders table for orders placed in the last 180 days using BETWEEN and LATEST_DATE in the table. (Search how to get the current date and latest date)
		SELECT *
		FROM Orders
		WHERE OrderDate 
		BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();

