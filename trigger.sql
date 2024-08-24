
CREATE Table my_user
(user_name VARCHAR(50), email VARCHAR(50)); 

INSERT INTO my_user (user_name, email) VALUES ('manik', 'manik@gmail.com'),('mr', 'mr@gmail.com');

SELECT * FROM my_user;

CREATE Table deleted_user_audit
    (deleted_user_name VARCHAR(50), deletedAt TIME);

SELECT * FROM deleted_user_audit;

CREATE FUNCTION save_deleted_user()
    LANGUAGE plpgsql
    AS
    $$
     BEGIN
     END
    $$

CREATE TRIGGER save_deleted_user_trigger
    AFTER DELETE ON my_user
    FOR EACH ROW
    EXECUTE FUNCTION save_deleted_user();
