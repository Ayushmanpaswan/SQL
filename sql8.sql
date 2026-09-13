create database Day8db;
create table tbl_categories(
id int primary key auto_increment,
name varchar(20) not null
);
create table tbl_product(
productID int auto_increment primary key,
category_id int,
foreign key(category_Id) references tbl_categories(id) on delete set null on update cascade ,
product_name varchar(20),
price int,
stock bit
);
insert into tbl_categories(name) values('cloths'),

('Grocery'),
('Furniture');

insert into tbl_product  (category_id,Product_name,price,stock)values(1,'Tshirt',1200,1),
(1,'Shirt',1500,0),
(1,'suit',1600,1),
(2,'salt',156,0),
(2,'sugar',452,1);

delete from tbl_categories where id =2;

update tbl_categories set id = 5 where id=1;
 