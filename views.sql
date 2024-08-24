CREATE View  dept_avg_salary
AS 
 SELECT department_name, avg(salary) FROM subSql GROUP BY department_name;

 SELECT * FROM dept_avg_salary;


CREATE View text_views
AS
SELECT subSql_name , salary, department_name FROM subSql
WHERE department_name in (SELECT department_name FROM subSql WHERE department_name LIKE '%R%')

SELECT * FROM text_views;

