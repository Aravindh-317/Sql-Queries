create view view_name AS select name,salary From employee 
where department = 'IT';
select * from view_name ;

create view Emp_details AS select e.name,d.department
from employees_2024 e
join employees_2025 d
on e.department = d.department;

select * from Emp_details;

insert into view_name (name,salary) values ('Suresh',45000);
select * from view_name;

drop view view_name;