select * from students

select country,count(*) from students
    group by country

select country,avg(age) from students
    group by country
    having avg(age) > 21


-- filter groups using having to show only countries with average age above 20.60

select country,avg(age) as average_age from students
    group by country
    having avg(age) > 20.60
-- count student born in each YEAR

select extract(year from dob) as year,count(*) from students
    group by year
    order by year