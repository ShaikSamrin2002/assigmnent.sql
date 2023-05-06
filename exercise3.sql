-- EXERCISE 3

create table Customers(
customer_id int primary key not null,
cust_name varchar(30) not null,
city varchar(30) not null,
grade int not null,
salesman_id int not null);

insert into Customers values(3002,'samrin','New York',100,5001),
(3001,'Mustakheem','New York',200,5001),
(3005,'Subhan','California',200,5002),
(3003,'Shameem','London',300,5002),
(3006,'Soniya','Paris',400,5003),
(3004,'Sabiya','BErlin',100,5006);

select * from Customers;

create table Salesmans(
salesman_id int not null,
name varchar(30) not null,
city varchar(30) not null,
commission float not null);

insert into Salesmans values(5001,'Rahil','New York',0.15),
(5002,'Ashraf','San Jose',0.13),
(5003,'Asif','Rome',0.11),
(5006,'Abid','LOndon',0.12);

select * from Salesmans;

select grade,cust_name,city,salesman_id,city from Customers 
 where grade<300 order by salesman_id asc ;



