create database company;
use company;
create table employees_2024 
(id int auto_increment primary key, name varchar(50),department varchar(50));
create table employees_2025
(id int auto_increment primary key, name varchar(50),department varchar(50));

insert into employees_2024 (name,department) values('Arjun','HR'),('Ravi','IT');
insert into employees_2025 values(3,'Kumar','Finance'),(2,'Ravi','IT');

select name,department from employees_2024
union
select name,department from employees_2025;

select name,department from employees_2024
union all
select name,department from employees_2025;


