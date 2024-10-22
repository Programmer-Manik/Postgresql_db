// --create database ph;


// ------------character---------------
// CHAR(10)--> aikhane alwas 10 character hobe, 5 character dele bake 5 caracter spech deye full hoye jabe.

// VARCHAR(19)--> aikhane 10 character er vetore hote hobe. spech deye full hobe nah.

// TEXT --> konu limit ney. joto khuse toto character dua jabe.

// ----------- integers --------------
// INT
// range: -2,147,483,648 to 2,147,483,647
// storage: 4 bytes

//BIGINT
// range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
// storage: 8 bytes

// SMALLINT
// range: -32,768 to 32,767
// storage: 2 bytes

// SERIAL
// range: like intergers
// auto incrementing integer [previous data theke 1 kora barbe]


//-------------------- column constraints ------------------
// NOT NULL,
// UNIQUE,
// PRIMARY KEY (PRIMARY KEY = NOT NULL + UNIQUE),
// REFERENCES customers(customer_id), [it's a forign key, REFERENCES tableName(keyName)]
// DEFAULT true
// CHECK (age >= 18), [custom validation]



// --creating table----------------------------
// --create TABLE person(
//     --person_id SERIAL,
//     --first_name VARCHAR(50),
//     --last_name VARCHAR(50),
//     --age INTEGER,
//     --is_active BOOLEAN,
//     --dob DATE
// -- )

// --rename table
// --ALTER TABLE person RENAME to "user";

// -- delete table
// --drop TABLE "user";



// -- create table with constraint-----------------------

// CREATE TABLE person (
// id serial PRIMARY Key,
// user_name VARCHAR(20) Not NULL,
// age INTEGER CHECK (age >= 18)
// )

// person and pserson2 same

// CREATE TABLE person2 (
// id serial,
// user_name VARCHAR(20) Not NULL,
// age INTEGER CHECK (age >= 18),
// PRIMARY KEY(id),
// )



// CREATE TABLE person3 (
//     id serial,
//     user_name VARCHAR(20) Not NULL,
//     age INTEGER CHECK (age >= 18),
//     PRIMARY KEY(id, user_name), // id & user_name mele primary key create hobe
//     UNIQUE(user_name, age) // user_name & age mele unique hobe. means user_name and age er combination 2 ta row e same hote parbe nah
//     )



