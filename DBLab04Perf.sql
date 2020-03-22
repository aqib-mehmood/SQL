--DB Lab # 04
--Note : Remove comment before execution
--1.	Write a query to list the names of employees that belongs to the same location as the employee named Nancy.
--select E1.FirstName,E2.FirstName,E1.City from Employees as E1,Employees as E2 where e1.City=e2.City and e1.FirstName='nancy' and e2.FirstName!=e1.FirstName  
--2.	Write a query to list the name of employees in front of the names of their mangers.
--select e1.FirstName as Managers,e2.FirstName as Employees from Employees as e1,Employees as e2 where e1.EmployeeID=e2.ReportsTo
--Right Join / Left Join 
--3.	Execute the script named Customer_Order.sql. 
--Done
--4.	Write a query to display the following records of all the customers along with their order details (if any).  

--5.	Write a query to display all the orders placed by a customers.
           
--6.	Name the store that offer initial customer discount.

--7.	Name all the employees working in New York.

--8.	List the stores of all titles.

--9.	List all the employees working for “New Moon Books”.

--10.	Who is the production manager of “Lucerne Publishing”?

--11.	Make the list of all Authors sales.

--12.	Name the publisher that has authors whose name ends with “e”.

--13.	Which publisher has got most titles in store in Seattle?

--14.	List all the authors available in Barnum’s store.

--Set Operations
--15.	Combine query 3 and query 4 in a single table by applying UNION operation. Briefly discuss the results.

--16.	Combine query 3 and query 4 in a single table by applying UNION ALL operation. Briefly discuss the results.

--17.	Combine query 3 and query 4 in a single table by applying INTERSECT operation. Briefly discuss the results.

--18.	Combine query 3 and query 4 in a single table by applying EXCEPT operation. Briefly discuss the results.









