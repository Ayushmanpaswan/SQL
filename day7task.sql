#1. Perform the following tasks using GROUP BY and HAVING clauses.
create database day7db;
CREATE TABLE candidates
(
id INT PRIMARY KEy auto_increment,
name VARCHAR(100),
college VARCHAR(100),
phone VARCHAR(15),
city VARCHAR(50),
department VARCHAR(50),
fees DECIMAL(10, 2),
year INT,
dob DATE);
INSERT INTO candidates (name, college, phone, city, department, fees, year, dob) VALUES
('Alice Johnson', 'ABC University', '1234567890', 'New York', 'Computer Science', 1500.00, 2025, '2003-05-15'),
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles', 'Mechanical Engineering', 1600.00, 2025, '2002-08-22'),
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago', 'Electrical Engineering', 1550.00, 2025, '2003-01-10'),
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil Engineering', 1620.00, 2024, '2002-12-30'),
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information Technology', 1580.00, 2025, '2003-03-25'),
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia', 'Biotechnology', 1650.00, 2024, '2002-09-18'),
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio', 'Physics', 1500.00, 2025, '2003-07-07'),
('Hannah Montana', 'MNO College', '1234567897', 'San Diego', 'Mathematics', 1525.00, 2024, '2002-11-11'),
('Ian Malcolm', 'RST University', '1234567898', 'Dallas', 'Chemistry', 1575.00, 2025, '2003-04-04'),
('Julia Roberts', 'UVW College', '1234567899', 'San Jose', 'Economics', 1610.00, 2024, '2002-06-14'),
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business Administration', 1590.00, 2025, '2003-02-20'),
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville', 'Graphic Design', 1540.00, 2024, '2002-10-30'),
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee', 'Literature Studies', 1550.00, 2025, '2003-04-11'),
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History Studies', 1620.00, 2024, '2002-09-29'),
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation Studies', 1515.00, 2025, '2003-03-10'),
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'),
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque', 'Philosophy Studies', 1640.00, 2025, '2003-02-14'),
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance Studies', 1560.00, 2024, '2002-10-05'),
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology Studies', 1530.00, 2025, '2003-07-17'),
('Bella Swan', 'ABC University', '1234567817', 'Sacramento', 'Biochemistry Studies', 1615.00, 2024, '2002-12-24'),
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City', 'Astrophysics Studies', 1599.99, 2025, '2003-01-01'),
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach', 'Environmental Science Studies', 1549.50, 2024, '2002-04-16'),
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach', 'Creative Writing Studies', 1501.75, 2025, '2003-08-19'),
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta', 'Sociology Studies', 1637.30, 2024, '2002-11-28'),
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'),
('Olivia Benson', 'ABC University', '1234567830', 'New York', 'Criminal Justice', 1450.00, 2025, '2003-01-15'),
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles', 'Photography', 1580.00, 2025, '2002-07-20'),
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater Arts', 1500.00, 2024, '2002-10-25'),
('Rick Grimes', 'PQR University', '1234567833', 'Houston', 'Emergency Management', 1600.00, 2025, '2003-04-12'),
('Samantha Carter', 'STU College', '1234567834', 'Phoenix', 'Astrophysics', 1650.00, 2024, '2002-05-30'),
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia', 'Engineering Management', 1700.00, 2025, '2003-06-15'),
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film Studies', 1550.00, 2024, '2002-09-10');
#Questions using the GROUP BY clause:
#1. Find the number of candidates per year
select count(*), year from candidates group by year;
#2. Show total fees per department.
select sum(fees), department from candidates group by department;
#3. Retrieve average fees paid by candidates from each city.
select avg(fees), city from candidates group by city;
#4. Find the number of candidates per college.
select count(*), college from candidates group by college;
#5. Show the minimum fees paid by candidates from each department.
select min(fees), department from candidates group by department; 

#Questions using the HAVING clause:
#1. List cities with fewer than 3 candidates.
select count(*), city from candidates group by city having count(*)<3;
#2. Show colleges with total fees over 5000.00.
select college, sum(fees) from candidates group by college having sum(fees)>5000.00;
#3. Retrieve departments with an average fee below 1600.00.
select college, sum(fees) from candidates group by college having sum(fees)<1600.00;
#4. Find years with more than 5 candidates.
select count(*), year from candidates group by year having count(*)>5;
#5. Show colleges where the maximum fee is less than 1650.00.
select college , max(fees) from candidates group by college having max(fees)>1650.00;

/*
#2. Create the following tables with Primary Key (PK) and Foreign Key (FK):
 Categories(CategoryID PK, CategoryName)
 Products(ProductID PK, CategoryID FK, ProductName, Price, Stock)
 Customers(CustomerID PK, Name, Email, Phone)
 Orders(OrderID PK, CustomerID FK, OrderDate, TotalAmount, Status)
 OrderItems(OrderItemID PK, OrderID FK, ProductID FK, Quantity, Price)
 ProductImages(ImageID PK, ProductID FK, ImageURL)
 Reviews(ReviewID PK, ProductID FK, CustomerID FK, Rating, Comment)
Instructions
1. Create all tables using appropriate constraints.
2. Insert at least 5 records into each table.
3. Maintain parent-child relationships using foreign keys.*/
create table  Categories
(
categoryID int primary key,
categoryName varchar(100) not null
);
create table products
(
productID int primary key,
category_ID int,
foreign key (category_ID) references Categories(categoryID),
productName varchar(100),
price int,
stock bigint
);
create table Customers
(
customerID int  primary key,
name varchar(100),
phone bigint,
email varchar(100) not null
);
create table orders
(
orderID int auto_increment primary key,
customer_ID int ,
foreign key (customer_ID) references Customers(customerID),
orderDate date,
totalAmount int,
status varchar(100)
);
create table OrderItems
(
orderitemID int primary key,
order_ID int,
foreign key (order_ID) references orders(orderID),
product_ID int,
foreign key (product_ID) references products(productID),
quality varchar(100),
price int
);
create table productImage
(
imageID int primary key,
productid int,
foreign key (productid) references products(productID),
imageURL varchar(200)
);
create table Reveiws
(
reviewID int primary key,
proID int,
foreign key (proID) references products(productID),
customerid int,
foreign key (customerid) references Customers(customerID),
rating varchar(100),
comment varchar(200)
);
-- categories
INSERT INTO Categories (categoryID, categoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Sports');
-- Products
INSERT INTO Products (productID, category_ID, productName, price, stock) VALUES
(101, 1, 'Laptop', 55000, 20),
(102, 2, 'T-Shirt', 799, 100),
(103, 3, 'Java Book', 650, 50),
(104, 4, 'Microwave', 8500, 15),
(105, 5, 'Football', 1200, 40);
-- Customers
INSERT INTO Customers (customerID, name, phone, email) VALUES
(1, 'Rahul Sharma', 9876543210, 'rahul@gmail.com'),
(2, 'Priya Singh', 9876543211, 'priya@gmail.com'),
(3, 'Amit Verma', 9876543212, 'amit@gmail.com'),
(4, 'Neha Gupta', 9876543213, 'neha@gmail.com'),
(5, 'Rohan Mishra', 9876543214, 'rohan@gmail.com');
-- Orders
INSERT INTO Orders (customer_ID, orderDate, totalAmount, status) VALUES
(1, '2026-07-01', 55000, 'Delivered'),
(2, '2026-07-02', 799, 'Pending'),
(3, '2026-07-03', 650, 'Delivered'),
(4, '2026-07-04', 8500, 'Shipped'),
(5, '2026-07-05', 1200, 'Cancelled');
-- OrderItems
INSERT INTO OrderItems (orderitemID, order_ID, product_ID, quality, price) VALUES
(1, 1, 101, 'High', 55000),
(2, 2, 102, 'Medium', 799),
(3, 3, 103, 'High', 650),
(4, 4, 104, 'High', 8500),
(5, 5, 105, 'Medium', 1200);
-- ProductImage
INSERT INTO ProductImage (imageID, productID, imageURL) VALUES
(1, 101, 'laptop.jpg'),
(2, 102, 'tshirt.jpg'),
(3, 103, 'javabook.jpg'),
(4, 104, 'microwave.jpg'),
(5, 105, 'football.jpg');
-- Reviews
INSERT INTO Reveiws (reviewID, proID, customerID, rating, comment) VALUES
(1, 101, 1, '5', 'Excellent Laptop'),
(2, 102, 2, '4', 'Good Quality'),
(3, 103, 3, '5', 'Very Helpful Book'),
(4, 104, 4, '3', 'Average Product'),
(5, 105, 5, '4', 'Worth Buying');


#Join Practice Tasks
#1. Display ProductName with CategoryName.
select productName, categoryName from products inner join categories on products.category_ID = categories.categoryID;
#2. Display Customer Name with Order Date.
select name, orderDate from customers inner join orders on customers.customerID = orders.customer_ID;
#3. Display Order ID, Product Name and Quantity.
select order_ID, productName, quality from orderitems inner join products on orderitems.product_ID = products.productID;
#4. Display Product Name with Image URL.
select productname, imageurl from products inner join productimage on products.productid = productimage.productid;
#5. Display Product Name, Customer Name and Rating.
select productname, name, rating from reveiws inner join products on reveiws.proid = products.productid inner join customers on reveiws.customerid = customers.customerid;
#6. Show all customers with their orders (LEFT JOIN).
select customerid, name, orderid, orderdate, status from customers left join orders on customers.customerid = orders.customer_id;
#7. Show all products even if no reviews exist (LEFT JOIN).
select productname, rating, comment from products left join reveiws on products.productid = reveiws.proid;
#8. Show all orders with customer details.
select orderid, orderdate, totalamount, status, customerid, name, phone, email from orders inner join customers on orders.customer_id = customers.customerid;
#9. Show order total with customer email.
select orderid, totalamount, email from orders inner join customers on orders.customer_id = customers.customerid;
#10. Display reviews with product and customer names.
select * from reveiws inner join products on reveiws.proid = products.productid 
inner join customers on reveiws.customerid = customers.customerid;
#2.Scenario: Online Shopping System
# Parent Table: City 
#Child Table: Customer 
#Relationship: One City → Many Customers 
#Task 1: Create the Parent Table (City)
 CREATE TABLE City (
 CityID INT PRIMARY KEY,
 CityName VARCHAR(50),
 PinCode VARCHAR(10), 
 StateName VARCHAR(50),
 CountryName VARCHAR(50)
 );
 #Task 2: Create the Child Table (Customer)
 CREATE TABLE tb_Customer ( 
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 Gender VARCHAR(10), 
 Age INT,
 Phone VARCHAR(15),
 Email VARCHAR(100),
 CityID INT,
 FOREIGN KEY (CityID) REFERENCES City(CityID) ON DELETE CASCADE ON UPDATE CASCADE
 ); 
 #Task 3: Insert Records into City Table
 INSERT INTO City VALUES (1,'Lucknow','226001','Uttar Pradesh','India'), 
 (2,'Delhi','110001','Delhi','India'),
 (3,'Jaipur','302001','Rajasthan','India'), 
 (4,'Kanpur','208001','Uttar Pradesh','India'),
 (5,'Mumbai','400001','Maharashtra','India'),
 (6,'Bhopal','462001','Madhya Pradesh','India');
 #Task 4: Insert Records into Customer Table
 INSERT INTO tb_Customer VALUES (101,'Rahul Sharma','Male',25,'9876543210','rahul@gmail.com',1),
 (102,'Priya Singh','Female',23,'9876543211','priya@gmail.com',2),
 (103,'Amit Verma','Male',28,'9876543212','amit@gmail.com',1), 
 (104,'Neha Gupta','Female',24,'9876543213','neha@gmail.com',4), 
 (105,'Rohan Mishra','Male',27,'9876543214','rohan@gmail.com',5),
 (106,'Anjali Kapoor','Female',22,'9876543215','anjali@gmail.com',3), 
 (107,'Karan Mehta','Male',30,'9876543216','karan@gmail.com',1); 
#Practice Questions
# A. Basic Retrieval 
#1. Display all records from the City table.
select * from city;
# 2. Display all records from the Customer table. 
select * from tb_customer;
#3. Display only City Name and State Name. 
select cityname, statename from city;
#4. Display Customer Name and Phone Number.
select customername, phone from tb_customer;
# 5. Display customers whose age is greater than 25. 
select customername, phone from tb_customer;

#B. INNER JOIN
# 1. Display Customer Name and City Name. 
select customername, cityname from tb_customer inner join city on tb_customer.cityid = city.cityid;
#2. Display Customer Name, City Name and State Name. 
select customername, cityname, statename from tb_customer inner join city on tb_customer.cityid = city.cityid;
#3. Display Customer Name, Country Name and Phone Number.
select customername, countryname, phone from tb_customer inner join city on tb_customer.cityid = city.cityid;
# 4. Display Customer Name, Pin Code and Email.
select customername, pincode, email from tb_customer inner join city on tb_customer.cityid = city.cityid;
# 5. Display all customers along with their city details.
select * from tb_customer inner join city on tb_customer.cityid = city.cityid;

# C. LEFT JOIN
# 1. Display all cities along with their customers.
select cityname, customername from city left join tb_customer on city.cityid = tb_customer.cityid;
# 2. Find cities that have no customers.
select cityname from city left join tb_customer on city.cityid = tb_customer.cityid where customerid is null;
# 3. Display City Name and Customer Name (if available). 
select cityname, customername from city left join tb_customer on city.cityid = tb_customer.cityid;
#4. Display all cities even if no customer belongs to them.
select * from city left join tb_customer on city.cityid = tb_customer.cityid;


# D. RIGHT JOIN
# 1. Display all customers with city details. 
select * from city right join tb_customer on city.cityid = tb_customer.cityid;
#2. Display every customer even if city information is unavailable.
select customername, cityname, statename from city right join tb_customer on city.cityid = tb_customer.cityid;


# E. Filtering with JOIN
# 1. Display customers from Lucknow. 
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where cityname = 'Lucknow';
#2. Display customers belonging to Uttar Pradesh.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where statename = 'Uttar Pradesh';
# 3. Display customers from India.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where countryname = 'India';
# 4. Display customers whose names start with A along with their city.
select customername, cityname from tb_customer inner join city on tb_customer.cityid = city.cityid where customername like 'A%';
# 5. Display customers from cities having Pin Code 226001.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where pincode = '226001';

# F. Aggregate Functions with JOIN
# 1. Count the number of customers in each city. 
select cityname, count(customerid) from city left join tb_customer on city.cityid = tb_customer.cityid group by cityname;
#2. Count the number of customers in each state.
select statename, count(customerid) from city left join tb_customer on city.cityid = tb_customer.cityid group by statename;
# 3. Display the average age of customers in each city.
select cityname, avg(age) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname;
# 4. Display the maximum age of customers in each city.
select cityname, max(age) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname;
# 5. Find cities having more than one customer.
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname having count(customerid) > 1;

# G. Sorting
# 1. Display customers sorted by name.
select * from tb_customer order by customername;
# 2. Display cities sorted by State Name.
select * from city order by statename;
# 3. Display customers sorted by age (highest first). 
select * from tb_customer order by age desc;
#4. Display cities sorted alphabetically.
select * from city order by cityname;

# H. Advanced JOIN Practice
# 1. Find the city having the highest number of customers. 
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname order by count(customerid) desc limit 1;
#2. Find the state having the maximum customers. 
select statename, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by statename order by count(customerid) desc limit 1;
#3. Display all customers living in the same city. 
select statename, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by statename order by count(customerid) desc limit 1;
#4. Find cities where more than two customers live. 
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname having count(customerid) > 2;
#5. Display the youngest customer from each city. 
select cityname, customername, age from city inner join tb_customer on city.cityid = tb_customer.cityid where (city.cityid, age) in (select cityid, min(age) from tb_customer group by cityid);
#6. Display the oldest customer from each city. 
select cityname, customername, age from city inner join tb_customer on city.cityid = tb_customer.cityid where (city.cityid, age) in (select cityid, max(age) from tb_customer  group by cityid);

#I. Foreign Key Practice (ON DELETE & ON UPDATE) 
#1. Update CityID = 1 to 10 in the City table and verify that the Customer table is automatically updated because of ON UPDATE CASCADE. 
update city set cityid = 10 where cityid = 1;
#2. Delete the city with CityID = 4 and verify that all customers belonging to that city are automatically deleted because of ON DELETE CASCADE. 
delete from city where cityid = 4;
#3. Insert a new city and add two customers belonging to that city. 4. Display the updated records from both tables after performing Tasks 1-4. 
insert into city values (7, 'Patna', '800001', 'Bihar', 'India');
insert into tb_customer
values(108, 'Riya Kumari', 'Female', 23, '9876543217', 'riya@gmail.com', 7),
(109, 'Sohan Kumar', 'Male', 26, '9876543218', 'sohan@gmail.com', 7);
select * from city;
select * from tb_customer;