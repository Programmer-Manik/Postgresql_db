
CREATE Table my_user
(user_name VARCHAR(50), email VARCHAR(50)); 

INSERT INTO my_user (user_name, email) VALUES ('manik', 'manik@gmail.com'),('mr', 'mr@gmail.com');

SELECT * FROM my_user;

CREATE Table deleted_user_audit
    (deleted_user_name VARCHAR(50), deletedAt TIME);

SELECT * FROM deleted_user_audit;

--TRIGGER function 
CREATE OR REPLACE FUNCTION save_deleted_user()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS
    $$
     BEGIN
        INSERT INTO deleted_user_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'deleted user audit log created successfully';
        RETURN OLD;
     END
    $$

CREATE OR REPLACE TRIGGER save_deleted_user_trigger
    AFTER DELETE ON my_user
    FOR EACH ROW
    EXECUTE FUNCTION save_deleted_user();


DELETE FROM my_user WHERE user_name = 'mr'