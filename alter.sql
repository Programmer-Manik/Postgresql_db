-- Active: 1723122519319@@127.0.0.1@5432@semanik
CREATE TABLE semanik (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT
);

 INSERT INTO semanik (name, age) 
VALUES 
('John Doe', 30),
('Alice Smith', 25),
('Bob Johnson', 40),
('Charlie Brown', 35),
('Emily Davis', 28);



ALTER TABLE semanik 
    ADD COLUMN email  VARCHAR(20) DEFAULT 'manik@gmailcom' NOT NULL


INSERT INTO semanik VALUES( 6,'manik', 33, 'John@gmail.com')


ALTER TABLE semanik 
    DROP COLUMN email  ;

ALTER TABLE semanik
    RENAME COLUMN age to user_age;
    
ALTER TABLE semanik
    ALTER COLUMN user_age TYPE VARCHAR(20)

ALTER TABLE semanik
    ALTER COLUMN user_age set NOT NULL

ALTER TABLE semanik
    ALTER COLUMN user_age DROP NOT NULL



SELECT * FROM semanik