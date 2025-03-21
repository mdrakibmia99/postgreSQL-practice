-- Active: 1742151109658@@127.0.0.1@5432@ph
create table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)
-- insert data

INSERT INTO timeZ values('2024-01-02 10:45:00', '2024-01-02 10:45:00');

select * from timeZ

-- use to_char for change data time formate 

select to_char(now(), 'dd/MM/yyyy HH:mm:ss')

-- date representation
select CURRENT_DATE - INTERVAL '1 year 2 month'
-- use age function get age 
select age(CURRENT_DATE,'2000-03-09')

select *,age(CURRENT_DATE,dob) from students

-- use extract function get year, month, day etc
select extract(month from '2000-03-09'::date)
