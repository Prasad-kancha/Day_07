create table Employee (emp_id int,name varchar(50),salary decimal(10,2),joiningdate date,is_active boolean);

alter table Employee add dateofbirth date;

alter table Employee drop emp_id ;

alter table Employee add Emp_id int;

alter table Employee alter Emp_id type varchar(20);

alter table Employee alter Emp_id type integer using Emp_id::Integer;

alter table Employee rename Emp_id to empid;

truncate table Employee;

Alter table Employee rename to student;

drop table student;

select * from students;

create table students(id int,name varchar(50),dob date,branch varchar(50));

select * from students;

insert into students 
values
(1,'prasad','2002-12-26','cse'),
(2,'saiteja','2002-12-23','cse'),
(3,'anu','2003-5-3','cse');

select * from students;

alter table students
add salary int;

select * from students;

insert into students
values(10100) where id=1;


update students 
set salary=10010
where id=1;

select * from students;

update students
set salary=10111
where id=2;

select * from students;

update students
set salary=11111
where id=3;

select * from students;

create table employee (
id int,
name varchar(50),
depart varchar(50),
salary int,
email varchar(50)
);


insert into  employee values
(101,'ravi','it',25000,'ravi@gmail.com'),
(102,'raju','hr',15000,'raju@gmail.com'),
(103,'prasa','fin',23000,'prasa@gmail.com'),
(104,'sai','hr',21000,null),
(105,'anu','it',20000,'ravi@gmail.com');


select id,name from employee;

select * from employee 
where salary>21000;

select * from employee 
order by salary asc;

select * from employee 
order by salary desc;

select distinct depart from employee;

select * from employee
limit 3;

select * from employee
where salary> 21000;

select * from employee 
where depart='it'
and salary>21000;

select * from employee 
where depart='it'
or salary>21000;

select * from employee 
where salary
 between  21000 and 25000;


 select * from employee
 where name like '%i';

 select * from employee
 where name like 'r%';


 select count(*) from employee;

 select sum(salary) from employee;

 select avg(salary) from employee;

 select min(salary) from employee;
 
 select max(salary) from employee;

 select depart, sum(salary) from employee
 where depart='it'
 group by depart;

 select depart, sum(salary) from employee
 group by depart;


 select depart, sum(salary) from employee
 group by depart
 having sum(salary)>40000;







