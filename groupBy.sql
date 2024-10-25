SELECT * FROM students;

SELECT country FROM students
    GROUP BY country;

SELECT country, COUNT(*),  AVG(age) FROM students
    GROUP BY country;

SELECT country,   AVG(age) FROM students
    GROUP BY country
     HAVING AVG(age) > 25;

SELECT extract(year from dob)as birth_year, COUNT(*)
    FROM students 
    GROUP BY birth_year;