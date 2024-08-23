CREATE TABLE subSql (
  subSql_id SERIAL PRIMARY KEY,
  subSql_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE
);


INSERT INTO subSql (subSql_name, department_name, salary, hire_date) VALUES
  ('John Doe', 'Sales', 50000, '2010-01-01'),
  ('Jane Smith', 'Marketing', 60000, '2011-02-15'),
  ('Robert Brown', 'HR', 55000, '2012-03-20'),
  ('Emily Davis', 'IT', 65000, '2013-04-25'),
  ('Michael Wilson', 'Finance', 70000, '2014-05-30'),
  ('Linda Johnson', 'Legal', 58000, '2015-06-10'),
  ('James Taylor', 'Operations', 62000, '2016-07-15'),
  ('Patricia Martinez', 'R&D', 64000, '2017-08-20'),
  ('David Anderson', 'Customer Service', 66000, '2018-09-25'),
  ('Sarah Lee', 'Logistics', 68000, '2019-10-30'),
  ('Thomas Harris', 'Sales', 52000, '2010-11-05'),
  ('Barbara King', 'Marketing', 59000, '2011-12-10'),
  ('Paul Moore', 'HR', 56000, '2012-01-15'),
  ('Nancy Clark', 'IT', 67000, '2013-02-20'),
  ('Daniel Lewis', 'Finance', 71000, '2014-03-25'),
  ('Laura Walker', 'Legal', 59000, '2015-04-30'),
  ('Kevin Hall', 'Operations', 63000, '2016-05-05'),
  ('Betty Allen', 'R&D', 65000, '2017-06-10'),
  ('Brian Young', 'Customer Service', 67000, '2018-07-15'),
  ('Sharon Hernandez', 'Logistics', 69000, '2019-08-20'),
  ('Matthew Scott', 'Sales', 54000, '2010-09-25'),
  ('Carol Nelson', 'Marketing', 60000, '2011-10-30'),
  ('Joshua Hill', 'HR', 57000, '2012-11-05'),
  ('Deborah Adams', 'IT', 69000, '2013-12-10'),
  ('Christopher Baker', 'Finance', 72000, '2014-01-15'),
  ('Rebecca Phillips', 'Legal', 60000, '2015-02-20'),
  ('Jacob Carter', 'Operations', 64000, '2016-03-25'),
  ('Angela Mitchell', 'R&D', 66000, '2017-04-30'),
  ('George Roberts', 'Customer Service', 68000, '2018-05-05'),
  ('Sandra Turner', 'Logistics', 70000, '2019-06-10');

SELECT * FROM subSql;

-- Retrieve all employees whose salary is greater than the highest salary of the HR department 

-- SELECT * FROM subSql WHERE salary > 57000.00 

SELECT max(salary) FROM subSql WHERE department_name = 'HR';

SELECT * FROM subSql WHERE salary > (SELECT max(salary) FROM subSql WHERE department_name = 'HR')