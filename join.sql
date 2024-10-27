
CREATE TABLE "userss"(
    id SERIAL PRIMARY KEY ,
    username VARCHAR(25) NOT NULL
)

INSERT INTO "userss" (username) 
VALUES ('bohn'), ('sakib'), ('Rhihan'), ('Joy');

CREATE TABLE posts(
    id SERIAL PRIMARY KEY ,
    title text NOT NULL,
    user_id INTEGER REFERENCES "userss"(id)
);

INSERT INTO posts (title, user_id) 
VALUES
    ('Hello World', 2),
    ('My First Post', 1),
    ('Another Post', 4),
    ('Another last post', 4);


SELECT * FROM "userss";

SELECT * FROM posts;

DROP TABLE "user";

DROP TABLE posts; 

SELECT title, username FROM posts
 JOIN "userss" on posts.user_id = "userss".id;

SELECT * FROM posts
 JOIN "userss" on posts.user_id = "userss".id;
SELECT posts.id FROM posts
 JOIN "userss" on posts.user_id = "userss".id;
SELECT userss.id FROM posts
 JOIN "userss" on post.user_id = "userss".id;


 SELECT * FROM "userss"
 JOIN posts on posts.user_id = "userss".id;


 SELECT * FROM posts as p 
 JOIN "userss" as u ON p.user_id = u.id;

 INSERT INTO posts  (id, title , user_id)
 VALUES (5, 'this is a Test Post title', NULL);


 SELECT * FROM posts as p 
 left JOIN "userss" as u ON p.user_id = u.id;

SELECT * FROM posts as p 
 right JOIN "userss" as u ON p.user_id = u.id;


 SELECT * FROM posts as p 
 left OUTER JOIN "userss" as u ON p.user_id = u.id;

SELECT * FROM posts as p 
 right OUTER JOIN "userss" as u ON p.user_id = u.id;
 

 SELECT * FROM posts

 SELECT * FROM posts as p 
 FULL OUTER JOIN "userss" as u ON p.user_id = u.id;

 