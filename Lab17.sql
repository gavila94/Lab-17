--1. Select all records from the customers table

select *
from Customers

--2. select distinct countries from the customers table
select distinct Country
from Customers

--3. Get all the records from the table Customers where the Customer's ID starts with "BI"
select *
from Customers
where CustomerID like 'Bl%'

--4. Get the first 100 records of the orders table
select top 100 *
from Orders 

--5. Get all the customers that live in the postal codes 1010, 3012, 12209, and 05023
select *
from Customers
where PostalCode = '1010'
or PostalCode = '3012'
or PostalCode = '12209'
or PostalCode = '05023'

--6. Get all orders where the ShipRegion is not equal to NULL
select *
from Orders
where ShipRegion != 'NULL'

--7. Get all customers ordered by the country, then by the city
select *
from Customers
order by Country, City

--8. Add a new customer to the customers table.
INSERT INTO Customers
VALUES ('GAB', 'Gabys Company', 'Gabriella Avila', 'Intern', '31835 York St.', 'Fraser', 'Midwest', '48026', 'USA', '(586)413-0514', '888-888-8888')

--9. Update all ShipRegion to the value 'EuroZone' in the Orders table, where the ShipCountry is equal to France
update Orders
set ShipRegion='Eurozone'
where ShipCountry = 'France'

--10. Delete all orders from orderdetails that have a quantity of 1.
delete [Order Details]
where Quantity = 1

--11. Calculate the average, max, and min of the quantity at the orderdetails table.
select avg(quantity), MAX(quantity), MIN(quantity) from [Order Details]

--12. Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderId
select orderID, avg(quantity), MAX(quantity), MIN(quantity) from [Order Details]
group by OrderID

--13. Find the customerid that placed order 10290 (orderstable)
select CustomerID, OrderID
from Orders
where OrderID = 10290

--14. Do an inner join, left join, right join on orders and customers table
select Orders.OrderID, Customers.CompanyName, Orders.OrderDate
from Orders
INNER JOIN Customers
on Orders.CustomerID=Customers.CustomerID

select Customers.CompanyName, Orders.OrderID
from Customers
LEFT JOIN Orders
on Customers.CustomerID=Orders.CustomerID

select Orders.OrderID, Employees.FirstName
from Orders
RIGHT JOIN Employees
on Orders.EmployeeID=Employees.EmployeeID

--15. Get employees' firstname for all employees who report to no one
Select FirstName, ReportsTo
from Employees
where ReportsTo is NULL

--16. Get employees' firstname for all employees who report to Andrew
select FirstName
from Employees
where ReportsTo = '2'
