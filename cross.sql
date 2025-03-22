create table employee(
    emp_id INT,
    emp_name varchar(50),
    dept_id INT
)

create table department(
    dept_id INT,
    dept_name varchar(50)
)

insert into employee values(1, 'John', 1);
insert into employee values(2, 'Doe', 2);

insert into department values(1, 'HR');
insert into department values(2, 'IT');

select * from employee

select * from department

-- cross join 
select * from employee cross join department
-- natural join
--  doita table ar modde akta common coloumn thakte hobe

select * from employee natural join department