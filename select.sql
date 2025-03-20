-- create table 

create table students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group CHAR(5),
    country VARCHAR(50)
)
-- insert data 

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', null,'2004-05-12', 'O+', 'USA')
-- ('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2002-08-25', 'A-', 'UK'),
-- ('Ali', 'Khan', 21, 'A', 'Engineering', 'ali.khan@example.com', '2003-11-02', 'B+', 'Pakistan'),
-- ('Maria', 'Gomez', 19, 'C', 'Biology', 'maria.gomez@example.com', '2005-03-14', 'AB-', 'Spain'),
-- ('Chen', 'Wei', 23, 'A', 'Physics', 'chen.wei@example.com', '2001-07-09', 'O-', 'China'),
-- ('Ahmed', 'Hassan', 20, 'B', 'Medicine', 'ahmed.hassan@example.com', '2004-01-30', 'A+', 'Egypt'),
-- ('Sophia', 'Brown', 21, 'A', 'Business', 'sophia.brown@example.com', '2003-09-12', 'B-', 'Canada'),
-- ('Liam', 'Johnson', 22, 'B', 'Law', 'liam.johnson@example.com', '2002-04-18', 'AB+', 'Australia'),
-- ('Olga', 'Ivanova', 20, 'C', 'History', 'olga.ivanova@example.com', '2004-12-05', 'O+', 'Russia'),
-- ('Hiroshi', 'Tanaka', 19, 'A', 'Economics', 'hiroshi.tanaka@example.com', '2005-06-21', 'A-', 'Japan'),
-- ('Isabella', 'Martinez', 22, 'B', 'Art', 'isabella.martinez@example.com', '2002-10-17', 'B+', 'Mexico'),
-- ('Ethan', 'Wilson', 21, 'A', 'Music', 'ethan.wilson@example.com', '2003-05-03', 'O-', 'USA'),
-- ('Fatima', 'Ali', 23, 'C', 'Philosophy', 'fatima.ali@example.com', '2001-08-29', 'AB-', 'India'),
-- ('Noah', 'Taylor', 20, 'A', 'Statistics', 'noah.taylor@example.com', '2004-02-14', 'A+', 'New Zealand'),
-- ('Emma', 'Anderson', 19, 'B', 'Literature', 'emma.anderson@example.com', '2005-07-30', 'B-', 'South Africa'),
-- ('David', 'Miller', 22, 'A', 'Chemistry', 'david.miller@example.com', '2002-11-08', 'AB+', 'Germany'),
-- ('Yuki', 'Sato', 21, 'C', 'Astronomy', 'yuki.sato@example.com', '2003-01-25', 'O+', 'Japan'),
-- ('Carlos', 'Rodriguez', 20, 'B', 'Political Science', 'carlos.rodriguez@example.com', '2004-09-15', 'A-', 'Argentina'),
-- ('Hannah', 'Moore', 23, 'A', 'Psychology', 'hannah.moore@example.com', '2001-05-22', 'B+', 'UK'),
-- ('Samuel', 'White', 19, 'B', 'Geography', 'samuel.white@example.com', '2005-03-10', 'O-', 'USA');

-- get data from students table use order by and ascending order and descending order
select * from students ORDER BY first_name DESC;
select * from students ORDER BY first_name ASC;

-- unique data find like country name etc
select DISTINCT country from students;


-- get data from students table use where clause
select * from students 
    where  grade='A' AND course='Physics';


select * from students 
    where  age <> 19;

-- null value get 
select * from students 
    where  email IS NULL;
-- COALESCE use for null value initialization using a another value
select COALESCE(email, 'Not Available') from students;