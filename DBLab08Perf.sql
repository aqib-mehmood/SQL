--Lab No 8 Views in SQL
--Note: Remove comment before execution.
--Example Query
--create view ord_booking as select Orders.CustomerID,Orders.OrderDate,Orders.ShipName,[Order Details].Quantity,[Order Details].UnitPrice from Orders,[Order Details] where Orders.OrderID=[Order Details].OrderID and Orders.ShipName='Hanari Carnes'
--select * from ord_booking
--Alter View:
--alter view ord_booking as 
--select Orders.CustomerID,Orders.OrderDate,Orders.ShipName,[Order Details].Quantity,[Order Details].UnitPrice from Orders,[Order Details] where Orders.OrderID=[Order Details].OrderID and Orders.ShipName='Richter Supermarkt'
--select * from ord_booking

--Drop view:-
--drop view ord_booking

--Lab 08 Tasks

--1.	Add a view called Managers in the Northwind database that shows only employees that supervise other employees.
--create view Managers as select distinct e1.FirstName+ ' ' +e1.LastName as Supervisor from Employees as e1,Employees as e2 where e1.ReportsTo=e2.EmployeeID 
--select * from managers

--2.	Create Northwind view called “Products by Category” based on the columns CategoryName and ProductName.
--create view Product_by_Category as select Categories.CategoryName,Products.ProductName from Products,Categories where Products.CategoryID=Categories.CategoryID
--select * from product_by_category

--3.	Create a view that shows a table that list all the publishers and store names using pubs.
--create view v_pubstor as select pub_name,stor_name from publishers join titles on publishers.pub_id=titles.pub_id join sales on sales.title_id=titles.title_id join stores on stores.stor_id=sales.stor_id
--select * from v_pubstor

--4.	Create a view that shows a table that list all the authors and store names using pubs.
--create view v_authstore as select authors.au_fname+' '+authors.au_lname as Authors_Name,stores.stor_name from authors join titleauthor on authors.au_id=titleauthor.au_id join titles on titleauthor.title_id=titles.title_id join sales on titles.title_id=sales.title_id join stores on sales.stor_id=stores.stor_id
--select * from v_authstore

--5.	Create a view the amount total amount spend by customers.
--create view v_total_amo as select [Order Details].OrderID,SUM(UnitPrice) as Total_amount from [Order Details] group by OrderID
--select * from v_total_amo

--6.	Create a view for customers shippers information.
--create view v_cust_shipper as select CustomerID,OrderID,ShipName,ShippedDate,ShipAddress,ShipCity,ShipCountry from Orders
--select * from v_cust_shipper


