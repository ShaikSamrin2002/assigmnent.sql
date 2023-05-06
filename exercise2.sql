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
  