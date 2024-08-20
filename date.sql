SHOW TIMEZONE

SELECT now();

CREATE TABLE timeZZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO timeZZ VALUES ('2022-01-01 01:01:00', '2022-01-01 01:01:00'),

SELECT * FROM timeZZ;

SELECT now();

SELECT CURRENT_DATE;

SELECT now()::DATE;

SELECT CURRENT_TIME;

SELECT now()::TIME;

SELECT now()::TIME;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '1997-01-01')

SELECT * FROM students;

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(year from '2024-05-25'::DATE)