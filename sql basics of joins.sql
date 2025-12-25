CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10 , 2 )
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);
use REGEX;
USE REGEX;

select * from customers;

-- it is a inner join; 
SELECT 
    c.customer - id, c.customer_name
FROM
    customers AS c
        INNER JOIN
    orders AS o
WHERE
    c.customer_id = o.customer_id;


-- left INNER join/ right INNER join;(WE USE 'ON' ON PLACE OF WHERE)
-- left INNER join;(all data of left table is access)
SELECT 
    c.customer - id, c.customer_name
FROM
    customers AS c
        LEFT JOIN
    orders AS o ON c.customer_id = o.customer_id;
 -- right INNER  join (all data of right table is access)
SELECT 
    c.customer - id, c.customer_name
FROM
    customers AS c
        RIGHT JOIN
    orders AS o ON c.customer_id = o.customer_id;
 
-- NATURAL JOIN(IT IS A JOIN BUT AUTOMATIC)[INT IT WE DO NOT DEFINE ANY CONDTION,IT JOIN ON BASES OF COMMON COLUMN]
 SELECT 
    c.customer - id, c.customer_name
FROM
    customers AS c
        NATURAL JOIN
    orders AS o;
select customer_name,sum(amount) from customers as c
join orders as o where 
c.customer_id=o.customer_id group by customer_name; 

-- (what is normalistaion and 1nf,2nf,3nf)[task]



