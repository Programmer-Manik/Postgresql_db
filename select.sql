
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age > 18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-01-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Electrical Engineering', 'jane.smith@example.com', '2001-03-22', 'A+', 'Canada'),
('Michael', 'Brown', 21, 'A', 'Mechanical Engineering', 'michael.brown@example.com', '2002-05-10', 'B+', 'UK'),
('Emily', 'Davis', 19, 'A', 'Civil Engineering', 'emily.davis@example.com', '2004-07-18', 'O-', 'Australia'),
('David', 'Wilson', 23, 'B', 'Chemical Engineering', 'david.wilson@example.com', '2000-09-25', 'AB+', 'New Zealand'),
('Sophia', 'Taylor', 20, 'A', 'Information Technology', 'sophia.taylor@example.com', '2003-11-05', 'A-', 'USA'),
('Liam', 'Anderson', 21, 'B', 'Software Engineering', 'liam.anderson@example.com', '2002-02-12', 'B-', 'Canada'),
('Olivia', 'Martinez', 22, 'A', 'Biomedical Engineering', 'olivia.martinez@example.com', '2001-04-17', 'O+', 'UK'),
('William', 'Thomas', 20, 'B', 'Computer Science', 'william.thomas@example.com', '2003-06-22', 'A+', 'Australia'),
('Ava', 'Jackson', 19, 'A', 'Electrical Engineering', 'ava.jackson@example.com', '2004-08-30', 'B+', 'New Zealand'),
('James', 'White', 21, 'A', 'Mechanical Engineering', 'james.white@example.com', '2002-10-15', 'O-', 'USA'),
('Isabella', 'Harris', 22, 'B', 'Civil Engineering', 'isabella.harris@example.com', '2001-12-20', 'AB+', 'Canada'),
('Benjamin', 'Martin', 20, 'A', 'Chemical Engineering', 'benjamin.martin@example.com', '2003-03-03', 'A-', 'UK'),
('Mia', 'Thompson', 23, 'B', 'Information Technology', 'mia.thompson@example.com', '2000-05-14', 'B-', 'Australia'),
('Lucas', 'Garcia', 19, 'A', 'Software Engineering', 'lucas.garcia@example.com', '2004-07-19', 'O+', 'New Zealand'),
('Charlotte', 'Martinez', 21, 'B', 'Biomedical Engineering', 'charlotte.martinez@example.com', '2002-09-28', 'A+', 'USA'),
('Elijah', 'Clark', 22, 'A', 'Computer Science', 'elijah.clark@example.com', '2001-11-10', 'B+', 'Canada'),
('Amelia', 'Rodriguez', 20, 'A', 'Electrical Engineering', 'amelia.rodriguez@example.com', '2003-01-15', 'O-', 'UK'),
('Ethan', 'Lewis', 21, 'B', 'Mechanical Engineering', 'ethan.lewis@example.com', '2002-03-22', 'AB+', 'Australia'),
('Harper', 'Walker', 23, 'A', 'Civil Engineering', 'harper.walker@example.com', '2000-05-10', 'A-', 'New Zealand');


SELECT * FROM students;


SELECT email as "Student Email" FROM students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT * FROM students ORDER BY first_name DESC;


SELECT country FROM students ORDER BY  country ASC;
-- ORDER BY data asc or desc  serially abcd or number 123  

SELECT DISTINCT country FROM students ;
-- DISTINCT is work UNIQUE not match data

SELECT DISTINCT blood_group FROM students ;

-- data filtering
-- WHERE conditions keywords use 
SELECT * FROM students  WHERE country = 'USA';

SELECT * FROM students  WHERE grade = 'A' AND course = 'Computer Science';

SELECT * FROM students  WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students WHERE age != 20 ;

SELECT * FROM students WHERE age BETWEEN 20 AND 22;

SELECT upper(first_name) FROM students;

SELECT lower(first_name) FROM students;


SELECT LENGTH(first_name) FROM students;


SELECT concat(first_name, last_name) FROM students;

SELECT concat(first_name, ' ' , last_name) FROM students;


SELECT AVG(age) FROM students;

SELECT MAX(age) FROM students;

SELECT MIN(age) FROM students;

SELECT sum(age) FROM students;

SELECT COUNT(*) FROM students;


SELECT max(length(first_name)) FROM students;


SELECT * FROM students
        WHERE not country = 'USA';

        -- SELECT NULL = 1
    SELECT * FROM students
    WHERE dob IS NULL;

    -- SELECT NULL != 1
    SELECT * FROM students
    WHERE dob IS NOT NULL;

    -- SELECT NULL > 1
    SELECT * FROM students
            WHERE email IS NOT NULL;
    SELECT * FROM students
            WHERE email IS  NULL;

    
    SELECT * FROM students;

   SELECT COALESCE(email , 'Email not provider') FROM students;


   SELECT COALESCE(email , 'Email not provider') as "Email", first_name, last_name, age   FROM students;

--    SELECT * FROM students WHERE country = 'USA' or country = 'Uk' or country = 'Canada';

   SELECT * FROM students WHERE country IN ('USA', 'Uk', 'Canada');

   SELECT * FROM students WHERE country NOT IN ('USA', 'Uk', 'Canada');

   SELECT * FROM students WHERE age BETWEEN 19 and 22; 

   SELECT * FROM  students
                WHERE dob BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob;

SELECT * FROM students
        WHERE first_name LIKE '%n';

SELECT * FROM students
        WHERE first_name LIKE 'M%';

SELECT * FROM students
        WHERE first_name LIKE '__a%';

SELECT * FROM students
        WHERE first_name LIKE '__a_%'

SELECT * FROM students
        WHERE first_name ILIKE 'a%'

SELECT * FROM students