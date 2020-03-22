--Lab 02 Tasks
--Note:
--Remove comment before execution
--select * from Customers
--select count(distinct(country)) from Customers
--select count(CustomerID) as No_of_customers,Country from Customers group by Country
--select count(Country) from Customers where Country='Argentina'
--select CategoryID,sum(UnitPrice) from Products group by CategoryID having sum(UnitPrice) > 400

--1.Write a query to order employee first name in Descending Order.
--select FirstName from Employees order by FirstName desc
--2.Display the highest, lowest, sum and average UnitPrice of each Category. Label column as CategoryId, Maximum, Minimum, Sum and Average, respectively. Round your results to the nearest whole number. (Table: Products)
--select CategoryID,max(UnitPrice) as Maximum,min(UnitPrice) as Minimum,sum(UnitPrice) as Sum,avg(UnitPrice) as Average from Products group by ProductName,CategoryID
--3.Display the highest, lowest, sum and average UnitPrice of each Category, where highest UnitPrice lies in the range of 50$ to 100$. Label column as CategoryId, Maximum, Minimum, Sum and Average, respectively. (Table: Products)
--select CategoryID,max(UnitPrice) as Maximum,min(UnitPrice) as Minimum,sum(UnitPrice) as sum,avg(UnitPrice) as Average from Products group by CategoryID, ProductName having max(UnitPrice) between 50 and 100
--4.From customers table, Count all customers in each region where region is not null. (Table: Customers)
--select count(ContactName) as No_of_Customers,Region from Customers group by Region having Region is not null
--5.Write a query to display the number of ContactName with same ContactTitle. Sort contact title in descending order. (Table: Customers)
--select count(ContactName) as No_of_contacts,ContactTitle from Customers group by ContactTitle order by ContactTitle desc
--6.Write a query that count all orders against each product id. No of orders should be greater than 50. (Table: [Order Details])
--select count(OrderID) as No_of_orders,ProductID  from [Order Details] group by ProductID having count(OrderID)>50
--7.How many people are in each unique city in the employee table that have more than one person in the city? Select the city and display the number of how many people are in each if it's greater than 1.(Table: Employees
--select count(Address) as No_of_People,City from Employees group by City having count(Address)>1 
--8.List only those cities in which more than or equals to 2 employees are living.
--select count(Address) as No_of_People,City from Employees group by City having count(Address)>=2
--9.From the [Order Details] table, select the Product’s id , maximum price and minimum price for each specific product in the table, sort the list by product id in ascending order. 
--select max(UnitPrice) as Max_Price,min(UnitPrice) as Min_Price,ProductID from [Order Details] group by ProductID order by ProductID asc
--10.Retrieve the number of employees in each city in which there are at least 2 employees.
--select count(Address),City from Employees group by City having count(Address)>=2
--11.Find the product name, maximum price and minimum price of each product having maximum price greater than 20.00 $. Order by maximum price. 
--select ProductName,max(UnitPrice) as Max_price,min(UnitPrice) as Min_price from Products group by ProductName having MAX(UnitPrice)>20 order by max(UnitPrice)
--12.Find the number of sales representatives in each city that contains at least 2 sales representatives. Order by the number of employees.
--select count(Title) as No_of_employees,City,Title from Employees group by City,Title having Title='sales representative' and count(Title)>2
--13.From customers table, Count all customers in each region whose contactname contains manager and region is not null. (Table: Customers)
--select count(ContactName) as No_of_customers,ContactName,Region,ContactTitle from Customers group by ContactName,ContactTitle,Region having ContactTitle='sales manager' and Region is not null
--14.Write a query to list no of customers with same ContactTitle if No of customers is greater than 5. However their ContactTitle does not contain Manager. Order by contact title in Descending order(Table: Customers)
--select count(ContactName) as No_of_customers,ContactTitle from Customers group by ContactTitle having count(ContactName)>5 and ContactTitle  != 'sales manager'
--15.	Using AdventureWorks2008 database, calculate the number of employees working in HumanResources.

--16.	Using AdventureWorks2008 database, calculate the sum of the ListPrice and StandardCost for each color listed in the Production.Product table as sumOfListPrice and SumOfStandardCost.

--17.	Give an example to show that COUNT(*) can be combined with other aggregate functions in the select list.
--select count(*) as No_of_rows,max(UnitPrice) as Max_price from Products



