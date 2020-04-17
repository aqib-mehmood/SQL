--Database Lab No 06
--Note : Remover comment before execution
-- DDL and Constraints

--task 1
--create database lab6
--create table Department(
--	deptno decimal(2,0),
--	dname varchar(14) null,
--	loc varchar(13) null
--)
--alter table Department
	--alter column deptno decimal(2,0) not null
	--add constraint pk_const primary key(deptno)

--task 2
--create table Employee(
--	empno decimal(4,0) primary key not null,
--	ename varchar(10) not null,
--	job varchar(9) null,
--	mgr decimal(4,0) null,
--	hiredate date null
--)

--task 3
--alter table Employee
--	add sal money null,
--	comm money null,
--	deptno decimal(2,0) null

--task 4
--alter table Department
--	drop column loc

--task 5
--truncate table Employee

--task 6
--drop table Department


--task 7
--create database persons

--task 8
--create table student(
--	id int primary key not null,
--	First_Name varchar(40),
--	Last_Name varchar(40),
--	Enrollment_num int,
--	semester varchar(10)
--)

--task 9
--drop table student

--task 10
--drop database persons

--task 11
--a
--create table tbl_order(
--	order_id int not null,
--	customer_id int not null,
--	order_details varchar not null,
--	order_date date not null,
--	required_date date not null
--)
--create table tbl_customer(
--	customer_id int not null,
--	firstName varchar(40) not null,
--	lastName varchar(40) not null,
--	city varchar(20) not null,
--	address varchar not null
--)

--b
--alter table tbl_order
--	add constraint pk_cont2 primary key(order_id)
--alter table tbl_customer
--	add constraint pk_cont3 primary key(customer_id)

--c
--alter table tbl_order
--	add constraint fk_const foreign key (customer_id) references tbl_customer(customer_id)

--d
--alter table tbl_customer
--	add constraint chk_city check (city='karachi' and city ='islamabad' and city='lahore')  

--e
--alter table tbl_customer
--	add constraint def_city default 'karachi' for city

--f
--alter table tbl_customer
--	add CNIC varchar(13) unique

--task 12

--create table product (
--	maker varchar(10) not null,
--	model varchar(50) primary key,
--	type varchar(50) not null 
--)

--create table pc (
--	code int primary key,
--	model varchar(50) foreign key references product(model) not null,
--	speed smallint not null,
--	ram smallint not null,
--	hd real not null,
--	cd varchar(10) not null,
--	price money null
--)

--create table laptop(
--	code int primary key not null,
--	model varchar(50) foreign key references product(model) not null,
--	speed smallint not null,
--	ram smallint not null,
--	hd real not null,
--	price money null,
--	screen tinyint not null
--)

--create table printer(
--	code int primary key not null,
--	model varchar(50) foreign key references product(model) not null,
--	color char(1) not null,
--	type varchar(10) not null,
--	price money null
--)

--task 13
--create database Authorization_pagh

--task 14
--create table StarsIn(
--	movieTitle char(30),
--	movieYear int,
--	starName char(30),
--	address varchar(225)

--) 

--task15
--CREATE TABLE MovieExec (
--      name char(30),
--      address char(30),
--      cert int,
--      netWorth int
--);

--alter table MovieExec
--	drop column networth 

--task 16

--create database student_info
--create table student(
--	reg_no int primary key,
--	fname varchar(50) not null,
--	lname varchar(50) null,
--	address varchar not null,
--	cell varchar(11),
--	gender varchar
--)



