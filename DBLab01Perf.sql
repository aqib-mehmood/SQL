--Note:
--Remove comment before execution
-------------------Lab No 1-------------------------
--select OrderID, ProductID, UnitPrice from [Order Details]
--select FirstName,Title from Employees where FirstName = 'Nancy'
--select UnitPrice*Quantity from [Order Details]
--select Distinct City from Employees
--select FirstName, LastName from Employees
--select * from Employees where Title = 'Sales representative'
--select FirstName, LastName from Employees where city = 'London' 
--select ProductName,UnitPrice from Products where UnitPrice > 90
--select FirstName from Employees where FirstName like 'A%'
--select City from Customers where City like '%a'
--select FirstName from Employees where FirstName like '%an%'
--select * from [Order Details] where UnitPrice between 10 and 40
--select CompanyName from Customers where Region is null
--select * from Employees where City IN ('london','seattle','Redmond')
--select FirstName,LastName,Address from  Employees where Address like '___[0-9]%' 
--select FirstName,LastName,Address from  Employees where Address like '%[^Rd.]'
--select * from  Employees where TitleOfCourtesy like '[^M]%' 
--select * from Orders where ShipRegion is not null
--select ProductName, UnitPrice, QuantityPerUnit  from Products where UnitPrice between 10 and 15 and QuantityPerUnit like '%bottles'
--select * from Products where UnitPrice not in (10,12,15,17,19)