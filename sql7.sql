create database day8task;
CREATE TABLE Customers ( 
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(50), 
City VARCHAR(30), 
Phone VARCHAR(15) 
);
CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY, 
CustomerID INT, 
ProductName VARCHAR(50), 
Quantity INT, 
Price DECIMAL(10,2), 
OrderDate DATE, 
FOREIGN KEY (CustomerID) 
REFERENCES Customers(CustomerID) 
ON DELETE CASCADE 
ON UPDATE CASCADE 
); 
INSERT INTO Customers VALUES 
(101,'Rahul Sharma','Lucknow','9876543210'), 
(102,'Priya Singh','Delhi','9876543211'), 
(103,'Amit Verma','Kanpur','9876543212'), 
(104,'Neha Gupta','Noida','9876543213'), 
(105,'Rohan Mishra','Agra','9876543214'), 
(106,'Anjali Kapoor','Jaipur','9876543215');
INSERT INTO Orders VALUES 
(1001,101,'Laptop',1,55000,'2026-07-01'), 
(1002,101,'Mouse',2,800,'2026-07-02'), 
(1003,102,'Keyboard',1,1500,'2026-07-03'), 
(1004,103,'Monitor',1,12000,'2026-07-05'), 
(1005,103,'Printer',1,9000,'2026-07-06'), 
(1006,105,'Headphones',2,2500,'2026-07-08');

select * from customers;
select * from Orders;
select CustomerName, city from Customers ;
select ProductName,price from Orders;
select * from Orders where OrderDate > 2026-07-03;

#Inner Join
select CustomerName, ProductName from customers inner join orders on customers.CustomerID= orders.CustomerID;
select CustomerName, ProductName from customers inner join orders on customers.CustomerID= orders.CustomerID;
 select CustomerName, City , OrderDate from customers inner join orders on customers.CustomerID= orders.CustomerID;
  select CustomerName, ProductName, Price from customers inner join orders on customers.CustomerID= orders.CustomerID;
  select CustomerName, ProductName, Phone from customers inner join orders on customers.CustomerID= orders.CustomerID;
  select * from customers inner join orders on customers.CustomerID= orders.CustomerID;

select * from customers left join orders on customers.CustomerID= orders.CustomerID;
select *from customers left join orders on customers.customerID = orders.customerID where orders.customerID is null;
select customername, productname from customers left join orders on customers.customerid = orders.customerid;
select * from customers left join orders on customers.customerid = orders.customerid; 
select * from  customers right join orders  on customers.customerid = orders.customerid ; 
select * from  customers right join orders  on customers.customerid = orders.customerid ;
select * from customers inner join orders on customers.CustomerID= orders.CustomerID where customers.City='Lucknow';

select * from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.ProductName='Laptop';
select Customername, Price from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.Price>5000;
select Customername from customers inner join orders on customers.CustomerID= orders.CustomerID where customers.CustomerName like 'R%';
select * from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.OrderDate between '2026-07-02' and '2026-07-06';

select count(*) , customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername ;
select sum(Price), customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
select avg(Price),customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
select max(Price),customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
select customername ,count(orderid) from customers inner join orders on customers.customerid = orders.customerid group by customername having count(orderid) > 1;

select * from orders order by price  desc;
select CustomerName ,ProductName from  customers inner join orders on customers.customerid = orders.customerid order by customers.Customername asc;
select * from orders order by OrderDate  asc;
select * from customers order by city;
 
select customername from customers inner join orders on customers.customerid = orders.customerid group by customername having count(distinct productname) > 1;
select sum(price * quantity) as total_revenue from orders;
select city, sum(price * quantity) as total_sales from customers inner join orders on customers.customerid = orders.customerid group by city order by total_sales desc limit 1;
select customername, sum(price * quantity) as total_spent from customers inner join orders on customers.customerid = orders.customerid group by customername having sum(price * quantity) > 10000;


