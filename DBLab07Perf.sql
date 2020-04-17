--Database Lab No 07
--Note : Remove comment before execution 
 --create database lab07

 --task 01
 --create table Stores(
	--Store_id varchar(4) primary key,
	--Store_name varchar(40) not null,
	--Store_address varchar(225) not null,
	--city varchar(40) not null,
	--state varchar(225) not null,
	--zip int not null
 --)

--insert into Stores values('TST1','Test 1 store','1234 Anywhere street','here','NY',00319)
--insert into Stores values('TST2','Test 2 store','567 Anywhere street','there','NY',00313)
--insert into Stores values('TST3','Test 3 store','1234 Anywhere street','here','NY',00319)

--select * from Stores

--task 02
--insert into publishers values('9998','Scotty','london','NA','UK')
--select * from publishers

--task 03
--update stores set stor_address='700 Catamaugus Ave' where stor_name='Eric the Read Books'
--select * from stores

--task 04
--update discounts set discount=discount+(10*discount/100)
--select * from discounts

--task 05
--delete employee where emp_id='VPA30890F'
--select * from employee 

--task 06
--delete from titleauthor where au_id in(select au_id from authors where left(au_fname,1)='m');
--go
--delete from authors where left(au_fname,1)='m';


--select * from authors 


--task 07
--create table My_Employees(
--	ID int primary key not null,
--	LAST_NAME varchar(40) null,
--	FIRST_NAME varchar(50) not null,
--	USERID varchar(50) not null,
--	SALARY money 
--)


--task 08
--insert into My_Employees values(1,'Patel','Ralph','rpatel',895)
--insert into My_Employees values(2,'Dancs','Betty','bdancs',860)
--insert into My_Employees values(3,'Biri','Ben','bbiri',1100)
--insert into My_Employees values(4,'Newman','Chad','cnewman',750)

--select * from My_Employees

--task 09
--update My_Employees set ID =str(ID,50,50) +substring(FIRST_NAME,1,2)+substring(LAST_NAME,1,7);

--select * from My_Employees

--task 10
--update My_Employees set last_name='ALPHA' where id=3

--task 11
--update My_Employees set salary=1000 where salary<900

--task 12
--delete My_Employees where first_name = 'betty' and last_name= 'Dancs'

--task 13
--select * from Employees
--create unique index uniq_indx on Employees(EmployeeID)

--task 14
--create nonclustered index nonclus_indx on Orders(Orderdate)
--select * from Orders

--task 15
--drop index nonclus_indx on Orders

--task  16
--create clustered index clus_indx on region(regionid)
--select * from Region








