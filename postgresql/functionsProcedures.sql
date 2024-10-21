SELECT * FROM subSql;


CREATE Function sql_count()
RETURNS INT 
LANGUAGE SQL
AS 
$$
SELECT count(*) FROM subSql;
$$;

SELECT sql_count();



CREATE Function delete_sql_count()
RETURNS void 
LANGUAGE SQL
AS 
$$
 DELETE FROM subSql WHERE subSql_id = 30;
$$;

SELECT delete_sql_count();



SELECT * FROM subSql;




CREATE Function parameter_sql_count(p_sql_id INT)
RETURNS void 
LANGUAGE SQL
AS 
$$
 DELETE FROM subSql WHERE subSql_id = p_sql_id;
$$;

SELECT parameter_sql_count(29);