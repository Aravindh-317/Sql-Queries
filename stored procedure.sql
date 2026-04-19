CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);

DELIMITER //
CREATE PROCEDURE GetCustomerInfo(IN CustomerAge INT)
   BEGIN
      SELECT * FROM CUSTOMERS WHERE AGE = CustomerAge;
   END //
DELIMITER ;

CALL GetCustomerInfo(24);


select now();
select curdate();
select curtime();

create table orders(id int primary key,orderDate Date,orderTime time,
createdat datetime);

insert into orders values (1,'2026-04-18','16:30:00','2026-04-18 16:30:00'),
(2,curdate(),curtime(),now());

select * from orders;
