--Database Lab Assignment # 03 (OEL)
--Note : Remove Comment before Execution
-- Constraints 
--NOT NULL ,UNIQUE ,PRIMARY KEY ,FOREIGN KEY ,CHECK,DEFAULT 
--create database OEL

--Task 2
/*
create table Supervisor(
	Supervisor_Id int primary key not null,
	Supervisor_name varchar(255) not null,
	Supervisor_Salary money not null
)

create table Employee(
	Empl_Id int primary key not null,
	Empl_name varchar(255) not null,
	Empl_Salary money not null
)

create table Project(
	Project_Id int primary key not null,
	Project_name varchar(255) unique not null,
	Empl_Id int foreign key references Employee
)

create table Department (
	Depart_Id int primary key not null,
	Depart_name varchar(20) unique not null,
	Supervisor_Id int foreign key references Supervisor,
	Empl_Id int foreign key references Employee
)
*/

--Task 03
/*
insert into Supervisor values(01,'Ali', 25000)
insert into Supervisor values(02,'Ahmed', 39000)
insert into Supervisor values(03,'Kashif', 26000)
insert into Supervisor values(04,'Musab', 29000)
insert into Supervisor values(05,'Faiz', 30000)
insert into Supervisor values(06,'Bilal', 27000)
insert into Supervisor values(07,'Hamza', 34000)
insert into Supervisor values(08,'Sohail', 38000)
insert into Supervisor values(09,'saima', 40000)
insert into Supervisor values(10,'waleed', 50000)
select * from supervisor
*/
/*
insert into Employee values(1, 'ahmed', 21000)
insert into Employee values(2, 'Sajid', 22000)
insert into Employee values(3, 'Saqib', 25000)
insert into Employee values(4, 'Musab', 23000)
insert into Employee values(5, 'Saad', 24000)
insert into Employee values(6, 'Sarim', 29000)
insert into Employee values(7, 'Subhan', 28000)
insert into Employee values(8, 'Majid', 27000)
insert into Employee values(9, 'Aqib', 26000)
insert into Employee values(10, 'Sara', 30000)
Select * from Employee
*/
/*
insert into Project values(011, 'AttendanceManageement', 2)
insert into Project values(012, 'FeeManageement', 5)
insert into Project values(013, 'ExamManageement', 3)
insert into Project values(014, 'LibraryManageement', 6)
insert into Project values(015, 'ParkingManageement', 9)
insert into Project values(016, 'CafeManageement', 1)
insert into Project values(017, 'sportsManageement', 4)
insert into Project values(018, 'ClubManageement', 7)
insert into Project values(019, 'EventManageement', 9)
insert into Project values(020, 'ServiceManagement', 3)

select * from project
*/
/*
insert into Department values(1, 'SE', 01, 1)
insert into Department values(2, 'CE', 02, 2)
insert into Department values(3, 'BBA', 03, 3)
insert into Department values(4, 'MEDIA', 04, 4)
insert into Department values(5, 'DATASCIENCE', 05, 6)
insert into Department values(6, 'ManagementScience', 06, 9)
insert into Department values(7, 'LLB', 07, 10)
insert into Department values(9, 'CS', 08, 8)
insert into Department values(10, 'AccountingandFinance', 09, 7)

select * from department
*/
--Task 04
--a) 
--select employee.empl_id,empl_name,project.project_name from employee left join Project on employee.empl_id=Project.empl_id
--or
--select project.empl_id,employee.empl_name,project.project_name from project left join Employee on Project.empl_id=Employee.empl_id
--b) 
--select depart_name,supervisor_name from department left join supervisor on department.supervisor_id=supervisor.supervisor_id
--c) 
--select * from employee
--update department set Empl_id=10 where depart_Id = 7
--select depart_name,count(department.empl_id) as Num_of_Employees from department group by depart_name
--d) 
--select max(supervisor_salary) as Maximum_Salary from supervisor
--e) 
--select Project.project_id,Employee.empl_id,Employee.empl_name,Department.depart_id,Department.depart_name,Supervisor.supervisor_id,Supervisor.supervisor_name from project left join Employee on Project.Empl_id=Employee.Empl_id left join Department on Employee.Empl_id=Department.Depart_id left join Supervisor on Department.supervisor_id=Supervisor.supervisor_id where project_id = 013 
--f) 
--Select depart_name from department where depart_id=1

--Task 05
--Devise a technique that should make searching faster from supervisors by its name.
/* Droping constraints
alter table Department
drop constraint FK__Departmen__Super__1367E606
alter table Supervisor
drop constraint PK__Supervis__04136EFB7F60ED59
*/
--create clustered index  super_name on supervisor(supervisor_name)
--sp_helpindex Supervisor
--select * from Supervisor where supervisor_name = 'Kashif'