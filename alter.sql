-- Active: 1723122519319@@127.0.0.1@5432@ph
SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' not NULL;

ALTER TABLE person2
    DROP COLUMN email;


ALTER TABLE person2
 RENAME COLUMN age to user_age;


ALTER TABLE person2
  ALTER COLUMN user_name TYPE VARCHAR(18)

ALTER TABLE person2
  ALTER COLUMN user_age set NOT NULL

ALTER TABLE person2
  ALTER COLUMN user_age DROP NOT NULL

INSERT INTO person2 VALUES(7, 'text', 45, 'manik@gmail.com');

