create database Day7;
create table customer
(
name varchar(200) not null,
email  varchar(200) primary key,
mobile bigint,
gender enum('Male','Female') 
);
drop table customer;
create table tbl_address(
address text not null,
pincode int not null,
city varchar(50),
landmark text not null,
customer_email varchar(200),
foreign key(customer_email) references customer(email)
);
insert into customer values ('Ram','ram@gmail.com',9878766667,'Male'),
('riya','riya@gmail.com',2515243619,'Female'),
('Ragni','ragni@gmail.com',2516361536,'Female');
Insert into customer values ('Tam','Tam@gmail.com',9978766667,'Male'),
('tiya','tiya@gmail.com',2915243619,'Female'),
('tagni','tagni@gmail.com',2916361536,'Female');
insert into tbl_address (address,pincode,city,landmark,customer_email) values ('Vikas nagar Lucknow', 26351,'Lucknow','near to pg','ram@gmail.com'),
('varansi somthing',32156,'vanarshi','near to appple','ram@gmail.com');
insert into tbl_address (address,pincode,city,landmark,customer_email) values ('tikas nagar Lucknow', 29351,'gucknow','near to pg','tam@gmail.com'),
('varansi somthing',32156,'vanarshi','near to appple','ram@gmail.com');
select * from  customer;
select * from tbl_address;
select * from tbl_address inner join customer on customer.email=tbl_address.customer_email;
