--DB Lab # 05 Sub Query
--Note : Remove comment before execution

--1.	Find the company’s name that placed order 10290. (Tables : Customers & Orders)
--select CustomerID,CompanyName  from Customers where CustomerID = (select CustomerID from Orders where OrderID=10290)

--2.	Find the Companies that placed orders in 1997 (Tables : Customers & Orders)
--select CustomerID,CompanyName from Customers where CustomerID IN (select CustomerID from Orders where DATEPART(yyyy,OrderDate)=1997)

--3.	Create a report that shows the product name and supplier id for all products supplied by 
--Exotic Liquids, Grandma Kelly's Homestead, and Tokyo Traders. (Tables : Products & Suppliers)
--HINT: You will need to escape the apostrophe in "Grandma Kelly's Homestead." To do so, place another apostrophe in front of it. For example,
--SELECT *
--FROM Suppliers
--WHERE CompanyName='Grandma Kelly''s Homestead';
--select SupplierID,ProductName from Products where SupplierID in (select Suppliers.SupplierID from Suppliers where CompanyName IN('Exotic Liquids','Grandma Kelly''s Homestead','Tokyo Traders'))

--4.	Create a report that shows all products by name that are in the Seafood category. (Tables : Products & Categories)
--select ProductName from Products where CategoryID = (select CategoryID from Categories where CategoryName='Seafood')

--5.	Create a report that shows all companies by name that sell products in CategoryID 8. (Tables : Supplier & Products)
--select CompanyName from Suppliers where SupplierID in (select SupplierID from Products where CategoryID=8)

--6.	Create a report that shows all 5companies by name that sell products in the Seafood category.(Tables: Suppliers, Products & Categories)
--select top 5 CompanyName from Suppliers where SupplierID in (select SupplierID from Products where CategoryID = (select CategoryID from Categories where CategoryName='Seafood'))

--7.	Write query using a “sub query” to display which Customers were served by which Employee use Northwind 
--select ContactName as CutomerName,Orders.OrderID from Customers left join Orders on Customers.CustomerID=Orders.CustomerID where Orders.EmployeeID in (select EmployeeID from Employees) left join 

select FirstName,Orders.OrderID from Employees left join Orders on Orders.EmployeeID=Orders.EmployeeID where Orders.CustomerID in (select Customers.CustomerID from  Customers)
--8.	Write query using a “sub query” to list of all the stores that have discount records use pubs
--select * from stores where stor_id in (select stor_id from discounts)

--9.	Write query using a “sub query” to name publishers have got titles in store in Seattle? Use pubs
--select pub_name from publishers where publishers.pub_id in (select pub_id from titles where titles.title_id in (select sales.title_id from sales where sales.stor_id = (select stores.stor_id from stores where stores.city='Seattle')))

--10.	Write query using a “sub query” to list all the authors available in Barnum’s store use pubs
--select * from authors where authors.au_id in (select au_id from titleauthor where title_id in (select title_id from titles where titles.title_id in (select sales.title_id from sales where sales.stor_id = (select stores.stor_id from stores where stores.stor_name='Barnum''s'))))

--11.	Write query using a “sub query” to give the customer id and amount spent of the customer who spent the most using Northwind
--select CustomerID,Freight from Orders where Freight =(select MAX(Freight) as amount from Orders)

--12.	Write query using a “sub query” to list all Northwind customers who have not placed an order.
--select * from Customers where CustomerID not in(select CustomerID from Orders)


