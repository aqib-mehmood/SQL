--DB Lab # 04
--Note : Remove comment before execution

--1.Write a query to list the names of employees that belongs to the same location as the employee named Nancy.
--select E1.FirstName,E2.FirstName,E1.City from Employees as E1,Employees as E2 where e1.City=e2.City and e1.FirstName='nancy' and e2.FirstName!=e1.FirstName  
-- select distinct e1.FirstName,e1.City from Employees e1,Employees e2 where e1.City=e2.City and e1.FirstName=e2.FirstName and e1.FirstName='nancy'

--2.Write a query to list the name of employees in front of the names of their mangers. 
--select e1.FirstName as Managers,e2.FirstName as Employees from Employees as e1,Employees as e2 where e1.EmployeeID=e2.ReportsTo
--select  e1.FirstName,e2.FirstName from Employees e1,Employees e2 where e1.EmployeeID=e2.ReportsTo
--Right Join / Left Join 

--3.Execute the script named Customer_Order.sql. 
--Done
--These Table are created 
--select * from tbl_Customers 
--select * from tbl_Orders 

--4.Write a query to display the following records of all the customers along with their order details (if any).  
--select distinct ID,OID,Name,Amount,Date from tbl_Customers left join tbl_Orders on tbl_Customers.ID=tbl_Orders.Customer_Id

--5.Write a query to display all the orders placed by a customers.
--select distinct Name,OID,ID,Amount,Date from tbl_Orders left join tbl_Customers on tbl_Orders.Customer_Id=tbl_Customers.ID  

--6.Name the store that offer initial customer discount.
--select discounttype,stores.stor_name from discounts left join stores on discounts.stor_id=stores.stor_id where discounttype='Initial Customer' 

--7.Name all the employees working in New York.
--select  fname,publishers.city from employee left join publishers on publishers.pub_id=employee.pub_id where publishers.city='New York'

--8.List the stores of all titles.
--select titles.title,stores.stor_name from titles left join sales on titles.title_id=sales.title_id left join stores on stores.stor_id=sales.stor_id

--9.List all the employees working for “New Moon Books”.
--select employee.fname,publishers.pub_name from publishers left join employee on publishers.pub_id=employee.pub_id where publishers.pub_name='New Moon Books'

--10.Who is the production manager of “Lucerne Publishing”?
--select distinct fname+' '+lname as Manager, pub_name from publishers left join employee on publishers.pub_id=employee.pub_id where pub_name='Lucerne Publishing' 

--11.Make the list of all Authors sales.
--select ord_num,ord_date,qty,payterms from sales left join titles on sales.title_id=titles.title_id left join titleauthor on titleauthor.title_id=titles.title_id left join authors on authors.au_id=titleauthor.au_id

--12.Name the publisher that has authors whose name ends with “e”.
--select au_fname,publishers.pub_name from authors left join titleauthor on authors.au_id=titleauthor.au_id left join titles on titleauthor.title_id=titles.title_id left join publishers on titles.pub_id=publishers.pub_id where authors.au_fname like '%e'

--13.Which publisher has got most titles in store in Seattle?
--select pub_name,stores.city from publishers left join titles on publishers.pub_id=titles.pub_id left join sales on titles.title_id=sales.title_id left join stores on sales.stor_id=stores.stor_id where stores.city='Seattle'

--14.List all the authors available in Barnum’s store. 
--select stores.stor_name,authors.au_fname from stores left join sales on stores.stor_id=sales.stor_id left join titles on sales.title_id=titles.title_id left join titleauthor on titleauthor.title_id=titles.title_id left join authors on authors.au_id=titleauthor.au_id where stores.stor_name='Barnum''s'
--Set Operations

--15.Combine query 3 and query 4 in a single table by applying UNION operation. Briefly discuss the results.
--select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Customers,tbl_Orders union select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Orders,tbl_Customers
--select * from tbl_Customers
--select * from tbl_Orders

--16.Combine query 3 and query 4 in a single table by applying UNION ALL operation. Briefly discuss the results.
--select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Customers,tbl_Orders union all select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Orders,tbl_Customers

--17.Combine query 3 and query 4 in a single table by applying INTERSECT operation. Briefly discuss the results.
--select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Customers,tbl_Orders intersect select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Orders,tbl_Customers

--18.Combine query 3 and query 4 in a single table by applying EXCEPT operation. Briefly discuss the results.
--select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Customers,tbl_Orders except select tbl_Customers.ID,tbl_Orders.OID,tbl_Customers.Salary,tbl_Orders.Date from tbl_Orders,tbl_Customers
--select ID from tbl_Customers except select OID from tbl_Orders








