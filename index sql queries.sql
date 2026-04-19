create table employee 
(id int auto_increment primary key,name varchar(75),department varchar(75),salary int);
insert into employee (name,department,salary) values
('Arjun','HR',25000),('Ravi','IT',35000),('Kumar','IT',45000);
create index id_name on employee (name);
select * from employee where name = 'kumar';
create index id_dept_salary on employee (department,salary);
select * from employee where department = 'IT' and salary >30000;
drop index id_name on employee;
show index from employee;



