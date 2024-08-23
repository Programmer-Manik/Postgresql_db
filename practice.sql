CREATE TABLE employeesS (
    employee_Id SERIAL PRIMARY KEY,
    employee_Name VARCHAR(50),
    department_id INT REFERENCES departmentsS(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employeesS (employee_Name, department_id, salary, hire_date)
VALUES
('John Doe', 1, 60000.00, '2022-01-10'),
('Jane Smith', 2, 55000.00, '2021-03-15'),
('Robert Brown', 3, 70000.00, '2023-02-20'),
('Emily Davis', 4, 65000.00, '2020-11-05'),
('Michael Wilson', 5, 72000.00, '2019-07-19'),
('Linda Johnson', 6, 58000.00, '2022-05-22'),
('James Taylor', 7, 63000.00, '2023-08-10'),
('Patricia Martinez', 8, 61000.00, '2021-09-14'),
('David Anderson', 9, 75000.00, '2020-06-30'),
('Sarah Lee', 10, 68000.00, '2022-12-01');

CREATE TABLE departmentsS (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departmentsS (department_name) VALUES
('HR'),
('Preser'),
('Officesr'),
('Finance'),
('Marketing'),
('IT'),
('Legal'),
('Operations'),
('Customer Service'),
('Research and Development');

SELECT * FROM departmentsS;

SELECT * FROM employeesS
    JOIN departmentsS ON employeesS.department_id = departmentsS.department_id; 

SELECT * FROM employeesS 
JOIN departmentsS USING(department_id );

SELECT department_name, round(avg(salary)) as avg_salary FROM employeesS 
    JOIN departmentsS USING(department_id)
    GROUP BY department_name;

SELECT department_name, COUNT(*) FROM employeesS 
JOIN departmentsS USING(department_id )
GROUP BY department_name;

SELECT department_name, round(AVG(salary)) as avg_salary FROM employeesS 
JOIN departmentsS USING(department_id)
GROUP BY department_name 
ORDER BY avg_salary DESC
LIMIT 1 
;


SELECT extract(YEAR from hire_date) as hire_year, count(*) FROM employeesS 
GROUP BY hire_year;




CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount) 
VALUES
    (1, '2022-02-10', 1000),
    (2, '2022-03-15', 2000),
    (1, '2022-04-20', 3000),
    (3, '2022-05-05', 4000),
    (2, '2022-06-19', 5000),
    (3, '2022-07-22', 6000),
    (2, '2022-08-10', 7000),
    (1, '2022-09-14', 8000),
    (3, '2022-10-30', 9000),
    (1, '2022-11-22', 100),
    (4, '2022-12-23',300);

DROP TABLE orders;

SELECT * FROM orders;

SELECT customer_id, COUNT(order_id), SUM(total_amount) as total_spent from orders
    GROUP BY customer_id HAVING COUNT(order_id) > 2 ;

SELECT extract(month from order_date)as month, sum(total_amount) FROM orders WHERE extract(year from order_date) = 2022 GROUP BY month;
