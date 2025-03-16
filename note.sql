-- get data 
 SELECT * from person;
-- create table 
CREATE TABLE person(  
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- insert data
INSERT INTO person ( name)  
VALUES  
    ( 'Rakib'),  
    ( 'Hasna'),  
    ( 'Tora');

-- create a column 
ALTER TABLE person 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com ' NOT NULL;

-- inset value  
INSERT into person VALUES(6,'asdf','asdf@gmail.com');