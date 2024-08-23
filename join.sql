
CREATE TABLE "userss"(
    id SERIAL PRIMARY KEY ,
    username VARCHAR(25) NOT NULL
)

INSERT INTO "userss" (username) 
VALUES ('bohn'), ('sakib'), ('Rhihan'), ('Joy');

CREATE TABLE post(
    id SERIAL PRIMARY KEY ,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);

INSERT INTO post (title, user_id) 
VALUES
    ('Hello World', 2),
    ('My First Post', 1),
    ('Another Post', 4),
    ('Another last post', 4);


SELECT * FROM "userss";

SELECT * FROM post;

DROP TABLE "user";

DROP TABLE post;

SELECT title, username FROM post
 JOIN "userss" on post.user_id = "userss".id;

SELECT * FROM post
 JOIN "userss" on post.user_id = "userss".id;
SELECT post.id FROM post
 JOIN "userss" on post.user_id = "userss".id;
SELECT userss.id FROM post
 JOIN "userss" on post.user_id = "userss".id;


 SELECT * FROM "userss"
 JOIN post on post.user_id = "userss".id;


 SELECT * FROM post as p 
 JOIN "userss" as u ON p.user_id = u.id;

 INSERT INTO post  (id, title , user_id)
 VALUES (5, 'this is a Test Post title', NULL);


 SELECT * FROM post as p 
 left JOIN "userss" as u ON p.user_id = u.id;

SELECT * FROM post as p 
 right JOIN "userss" as u ON p.user_id = u.id;


 SELECT * FROM post as p 
 left OUTER JOIN "userss" as u ON p.user_id = u.id;

SELECT * FROM post as p 
 right OUTER JOIN "userss" as u ON p.user_id = u.id;
 

 SELECT * FROM post