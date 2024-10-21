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

DROP TABLE semanik

ALTER TABLE semanik 
    ADD COLUMN email  VARCHAR(20) DEFAULT 'manik@gmailcom' NOT NULL

ALTER TABLE semanik 
    ADD COLUMN age  INTEGER DEFAULT 32 NOT NULL


INSERT INTO semanik VALUES( 6,'manik', 33, 'John@gmail.com')


ALTER TABLE semanik 
    DROP COLUMN user_Age  ;

ALTER TABLE semanik
    RENAME COLUMN age to user_age;
    
ALTER TABLE semanik
    ALTER COLUMN user_Age TYPE INTEGER;


ALTER TABLE semanik
    ALTER COLUMN user_age set NOT NULL

ALTER TABLE semanik
    ALTER COLUMN user_age DROP NOT NULL

ALTER TABLE semanik
   ADD constraint unique_person2_user_age UNIQUE(user_age);
ALTER TABLE semanik
   DROP constraint unique_person2_user_age ;

ALTER TABLE semanik
   ADD constraint pk_person2_user_age PRIMARY KEY(id);

TRUNCATE TABLE semanik 

INSERT INTO semanik VALUES(7, 'text', 45, 'manik@gmail.com');


SELECT * FROM semanik