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

drop table employee;

show tables;

create table employee(
emp_id int,
emp_name varchar(50),
dept_id int,
manager_id int
);

drop table department;

create table department(
dept_id int,
dept_name name
);

insert into department
values
(1,'hr'),
(2,'it'),
(3,'finance'),
(4,'marketing');

insert into employee
values
(101,'ravi',1,null),
(102,'kiran',2,101),
(103,'anu',2,101),
(104,'sai',null,102);

select * from employee;

select * from department;

select e.emp_id,e.emp_name,d.dept_name from employee e
inner join department d
on e.dept_id=d.dept_id;

select e.emp_id,e.emp_name,d.dept_name  from employee e
left join department d
on e.dept_id=d.dept_id;

select e.emp_name,d.dept_name from employee e
right join department d
on e.dept_id=d.dept_id;

select e.emp_name as Emp,m.emp_name as Manager from employee e
left join employee m
on e.emp_name=m.emp_name;

create table color (
color_name varchar(20)
);

create table sizes(
size_name varchar(20)
);


insert into color values
('red'),
('blue');

insert into sizes values
('s'),
('M');

select * from color
cross join  sizes


