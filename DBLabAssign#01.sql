--Assignment # 01 DBMS Lab
--Q # 02 tasks 

--a)	Replace “Rd.” in Address Column with “Road” in employee table. Hint : Using replace keyword
--select REPLACE(Address,'Rd.','Road') as [Address] from Employees where Address like '%Rd.%'
--b)	Select only first letter from Title in Employee table
--select TitleOfCourtesy,SUBSTRING(TitleOfCourtesy,1,1) as [First_Letter] from Employees  
--c)	Write a query fetch months from Birthdate, -- Hint: Convert datatype of Birthdate from datetime to nvarchar.
--select BirthDate,DATEPART(month,BirthDate) as [Month] from Employees
--d)	Concat the firstname, lastname and hiredate of employees like mention below and list them under the Information heading.
--select FirstName+'  '+LastName+' is hired on '+convert(varchar,hiredate) as [Information] from Employees
--e)	List employee’s FirstName and their length as follows.
--select FirstName,len(FirstName) as[Length] from Employees
--f)	Count all orders against each product id, if no of orders are greater than 50.
--select ProductID,count(OrderID) as [Orders] from [Order Details] group by ProductID having count(OrderID) > 50
--g)	Write a query to list Maximum UnitPrice of each category where CategoryID lies in the range of 2 - 6 and Maximum Unit Price is greater than 55.
--select CategoryID,max(UnitPrice) as [Max_Price] from Products group by CategoryID having max(UnitPrice) > 55 and CategoryID between 2 and 6
--h)	Write a query to list all employees that match following condition
--	Title doesn’t contain Manager and
--	Region should be equals to WA
--TitleofCourtesy can be either Dr. or Mrs.
--select FirstName+' '+LastName as [Full_Name],Title,TitleOfCourtesy,Region from Employees where ( Title != 'Manager' and Region = 'WA' ) and (TitleOfCourtesy = 'Dr.' or TitleOfCourtesy = 'Mrs.')
--i)	Write a query to count no of distinct cities in each country
--select ShipCountry,count(distinct ShipCity) as [city_count] from Orders group by ShipCountry
--j)	List only those cities in which 2 or more than 2 employees are living.
--select city,count(Address) as [No_of_Employees] from Employees group by city having count(Address) >= 2

--------------------------------------
--Q # 03 tasks
/*create table Salesman(
	Salesman_ID int,
	Names varchar(255),
	City varchar(255),
	Commission float(50)
)
*/

/*
Insert Into Salesman values (5001,'Jmaes Hooq','New York',0.15)
Insert Into Salesman values (5002,'Nail Knite','Paris',0.13)
Insert Into Salesman values (5005,'Pit Alex ','London',0.11)
Insert Into Salesman values (5006,'Mc Lyon ','Paris',0.14)
Insert Into Salesman values (5003,' Lauson Hen','',0.12)
Insert Into Salesman values (5007,'Paul Adam ','Rome',0.13)
*/


--a)	Write a query to produce a list of salesman_id, name, city and commision of each salesman who live in cities other than Paris and Rome.
--select * from salesman where city != 'Paris' and city != 'Rome'
--b)	Write a SQL statement to find those salesmen with all other information and name started with any latter within 'A' and 'K'.
--select * from salesman where names like '[a-k]%'
--c)	Write a SQL statement to find all those customers with all information whose names are ending with the letter 'n'.
--select * from Customers1 where cust_name like '%n'
--d)	Write a SQL statement to find those salesmen with all information who come from the city either Paris or Rome.
--select * from salesman where city in('Paris','Rome')
--e)	Write a SQL statement to find those salesmen with all information who gets the commission within a range of 0.12 and 0.14. 
--Write a SQL statement to find those salesmen with all information whose name containing the 1st character is 'N' and the 4th character is 'l' and rests may be any character.
--select * from salesman where commission between 0.12 and 0.14
--select * from salesman where names like 'N__l%'


--Q # 04 Tasks
/*create table Orders1(
	ord_no int,
	purch_amt float(50),
	order_date datetime,
	customer_id int,
	sdalesman_id int  
)*/

/*
insert into Orders1 values(70001,150.5,2012-10-05,3005,5002)
insert into Orders1 values(70009,270.65,2012-09-10,3001,5005)
insert into Orders1 values(70002,65.26,2012-10-05,3002,5001)
insert into Orders1 values(70004,110.5,2012-08-17,3009,5003)
insert into Orders1 values(70007,948.5,2012-09-10,3005,5002)
insert into Orders1 values(70005,2400.6,2012-07-27,3007,5001)
insert into Orders1 values(70008,5760,2012-07-10,3002,5001)
*/
--select * from Orders1

--a)	Write a SQL statement to find the average purchase amount of all orders.
--select avg(purch_amt) as [Avg_Purchase_Amt] from orders1 
--b)	Write a SQL statement to find the total purchase amount of all orders.
--select sum(purch_amt) as [Total_Purchase_Amt] from orders1 
--c)	Write a SQL statement to get the minimum purchase amount of all the orders.
--select min(purch_amt) as [Min_Purchase_Amt] from orders1 
--d)	Write a SQL statement to get the maximum purchase amount of all the orders
--select max(purch_amt) as [Max_Purchase_Amt] from orders1 
--e)	Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.
--select  customer_id,max(purch_amt) as [Highest_purch_amt] from Orders1 group by customer_id having customer_id between 3002 and 3007
--f)	Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have highest purchase amount in a day is more than 2000.
select ord_no,customer_id,order_date,max(purch_amt) as [Highest_purch_amt] from Orders1 group by customer_id,order_date,ord_no having max(purch_amt)>2000

--Q # 05 tasks
/*create table Customers1(
	customer_id int,
	cust_name varchar(255),
	city varchar(255),
	grade int,
	salesman_id int
)*/

/*
insert into customers1 values(3002,'Nick Rimando','New York',100,5001)
insert into customers1 values(3005,'Graham Zus','California',200,5002)
insert into customers1 values(3001,'Brad Guzan','London ',null,5005)
insert into customers1 values(3004,'Fabian Johns','Paris ',300,5006)
insert into customers1 values(3007,'Brad Davis','New York ',200,5001)
insert into customers1 values(3009,'Geoff Camero,','Berlin ',100,5003)
insert into customers1 values(3008,'Julian Green','London ',300,5002)
*/
--select * from customers1

--a)	Write a SQL statement to make a list with order no, purchase amount, customer name and their cities for those orders which order amount between 500 and 2000.

--b)	Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to find that either any of the existing customers have placed no order or placed one or more orders.

--c)	Write a SQL statement to make a report with customer name, city, order no. order date, purchase amount for those customers from the existing list who placed one or more orders or which order(s) have been placed by the customer who is not on the list.

--d)	Write an SQL statement to prepare a list with salesman name, customer name and their cities for the salesmen and customer who belongs to the same city.

--e)	Write a SQL statement to know which salesman are working for which customer.

--f)	Write a SQL statement to make a list in ascending order for the customer who works either through a salesman or by own.

--g)	Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa.





