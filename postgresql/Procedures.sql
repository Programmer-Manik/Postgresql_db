CREATE PROCEDURE remove_sql_var()
LANGUAGE plpgsql 
AS
$$
    DECLARE
        text_var INT;   
    BEGIN
        -- Assign the value to text_var
        SELECT subSql_id INTO text_var FROM subSql WHERE subSql_id = 26;

        -- Delete the record with the corresponding subSql_id
        DELETE FROM subSql WHERE subSql_id = text_var;
    END;
$$;

CALL remove_sql_var();



SELECT * FROM subSql;


CREATE PROCEDURE remove_sql_by_id(p_sql_var INT)
LANGUAGE plpgsql 
AS
$$
    DECLARE
        text_var INT;   
    BEGIN
        -- Assign the value to text_var
        SELECT subSql_id INTO text_var FROM subSql WHERE subSql_id = p_sql_var;

        -- Delete the record with the corresponding subSql_id
        DELETE FROM subSql WHERE subSql_id = text_var;

        -- notice successfully sms show terminals
        RAISE NOTICE 'subSql remove successfully done ';

    END;
$$;

CALL remove_sql_by_id(28);