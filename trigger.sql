create table employees (
emp_id int primary key,
name varchar(50),
salary int
);

create table employees_log(
log_id int auto_increment primary key,
emp_id int,
action varchar(50),
action_time timestamp
);

create trigger trg_after_insert
After insert on employees
for each row
	insert into employees_log(emp_id,
action,action_time) 
    values(new.emp_id, 'INSERT', now());

insert into employees values(101, 'ARAVINDH', 15000);

