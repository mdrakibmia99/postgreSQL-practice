-- Active: 1742151109658@@127.0.0.1@5432@ph
SELECT * from person;

ALTER TABLE person 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com ' NOT NULL;