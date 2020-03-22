--1.	Get shipper’s Company Name for an order using inner join. 
--(Display only orderID from orders and comapnayName from Customers table)
--select Orders.OrderID,Customers.CompanyName from Customers inner join Orders on Customers.CustomerID=Orders.CustomerID
--2.	Display Product’s name and their supplier’s name (ContactName), 
--whose supplier’s name doesnot contain Dirk and there should be at most 7 
--characters in Product’s name.
--select Products.ProductName,Suppliers.ContactName from Suppliers inner join Products on Products.SupplierID=Suppliers.SupplierID where ContactName not like 'Dirk' and len(ProductName)<=7
--3.	Create a report showing order ID. OrderDate. EmployeeID, 
--and the firstname and LastName of the associated Employee (Tables: Employees & Orders )
--select Orders.OrderID,Orders.OrderDate,Employees.EmployeeID,Employees.FirstName,Employees.LastName from Employees inner join Orders on Orders.EmployeeID=Employees.EmployeeID
--4.	Count no of Products’s against each suppliers name. 
--list only those products whose count is greater than 3.
--select Suppliers.ContactName,count(Products.ProductID) as No_of_Products from Suppliers inner join Products on Products.SupplierID=Suppliers.SupplierID group by Suppliers.ContactName having count(Products.ProductID)>3
--5.	Display Region ID, Region Description, Territories Description and 
--(inner join with table Territories and Region)
--select Region.RegionID,Region.RegionDescription,Territories.TerritoryDescription from Region inner join Territories on Region.RegionID=Territories.RegionID
--6.	Display Company Name and Total orders placed by the company 
--(Table: orders, customer, use inner join, group by)
--select Customers.CompanyName,count(Orders.OrderID) as Total_Orders from Orders inner join Customers on Customers.CustomerID=Orders.CustomerID group by CompanyName
--7.	Display Product Name and its Category Name where Category Name 
--starts with B (Hint: Left join category and product, use wild card)
--select p.ProductName,c.CategoryName from Products p left join Categories c on c.CategoryID=p.CategoryID where c.CategoryName like 'B%'
--8.	Display Titles and their quantity (Hint Pubs database, 
--table title and sales, left join) 

--9.	Use Right join to display Book Title and publisher Names(Hint pubs Database,
--Table Title and Publisher) Write down the reason for any null values if coming in title column.
--10.	User Right join to display those publishers where title is null.

--11.	Use self-join to display Publishers name where city is same 
--(Publisher id should be different) Sample example

--12.	Use cross join (Cartesian join) to Display Book Title and Publisher Name.

--13.	Use two full joins to Display Product Name, Category Name and Supplier Name 
--(Hint: Below Example)
--Example:
--select  col1  ,col2 ,col3
--from  table supplier 
--full join table product
--on supplier.productid=product.productid 
--full join Categories 
--on product.CategoryID=category.CategoryID
--select p.ProductName,c.CategoryName,s.ContactName from Products p full join Categories c on p.CategoryID=c.CategoryID full join Suppliers s on s.SupplierID=p.SupplierID

--14.	Use full join to display the name of Supplier for the product 
--starting with letter C (Hint: Northwind)
--select s.ContactName,p.ProductName from Suppliers s full join Products p on p.SupplierID=s.SupplierID  where s.ContactName like 'C%'

