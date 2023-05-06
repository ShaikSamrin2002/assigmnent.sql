
-- EXERCISE 1

create database hospital;

create table Doctor(
id int primary key not null,
name varchar(30) not null,
secialization varchar(30) not null);

create table Appointment(
appointment_date date not null,
appointment_time date not null);

create table Patient(
patient_name varchar(30) not null,
address varchar(40) not null,
phone_no int not null,
blood_group varchar(30) not null);

create table Reviews(
rating int not null,
feedback varchar(150) not null);


-- EXERCISE 2

create table Contact_table(
id int primary key not null,
Email varchar(40) not null,
fname varchar(30) not null,
lname varchar(30) not null,
Company varchar(30) not null,
Active_flag int not null,
opt_out int not null);

insert into Contact_table values(123,'a@a.com','Kian','Seth','ABC',1,1),
(133,'b@a.com','Neha','Seth','ABC',1,0),
(234,'c@c.com','Puru','Malik','CDF',0,0),
(342,'d@d.com','Sid','Maan','TEG',1,0);
 
 select * from Contact_table;
 
 -- 1
 select fname,Active_flag from Contact_table where Active_flag=1;
  select * from Contact_table;

 -- 2
 delete from Contact_table where opt_out=1;
  select * from Contact_table;

 -- 3
 delete from Contact_table where Company='ABC';
  select * from Contact_table;

 -- 4
 insert into Contact_table values(658,'mili@gmail.com','mili','maan','DGH',1,1);
  select * from Contact_table;

 -- 5
 select distinct Company from Contact_table ;
 
 -- 6
 update Contact_table set fname='niti' where fname='mili';
  select * from Contact_table;
  
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



