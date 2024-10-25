CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set NULL
)
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set NULL NOT NULL
)
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on DELETE SET DEFAULT DEFAULT 2
)

ALTER TABLE post
    alter COLUMN user_id set NOT NULL;

INSERT INTO "user" (username)
    VALUES ('john'), ('jane'), ('bob'),('dave');

SELECT * FROM "user";

INSERT INTO post (title, user_id) VALUES 
    ('My First Post', 2), 
    ('My Second Post', 1), 
    ('My Third post', 4), 
    ('My Fourth post', 4);

SELECT * FROM post;



INSERT INTO post (title, user_id) VALUES('manik', NULL)

DROP TABLE post;

DROP TABLE "user"

-- Insertion constraint on insert post
-- attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID 
-- Attempting to insert a post without specifying a user ID



DELETE FROM "user"
    WHERE id = 4; 
    
SELECT * FROM post;


-- deletion constraint on Delete user 
-- cascading Deletion --> on delete cascade 
-- setting null --> on delete set null 
-- restrict deletion -> on DElETE Restrict / on delete no action (default)
-- set default value -> on delete set default