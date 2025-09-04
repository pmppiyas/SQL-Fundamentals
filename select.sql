-- Active: 1747576279510@@127.0.0.1@5432
CREATE TABLE STUDENTS (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT null,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(60),
    age SMALLINT,
    course VARCHAR(50),
    grade CHAR(2),
    dob DATE,
    bload_group VARCHAR(5),
    country VARCHAR(50)
);

select * from students;
--Selcet Column
select first_name, last_name, age from students;

--Alias Column
select
    first_name as "First Name",
    age as "User Age"
from students;

-- Sorting
select
    first_name,
    bload_group,
    country,
    age
from students
order by first_name asc;

-- FIlter
select first_name, last_name, country
from students
where
    country = 'USA'

select
    first_name,
    last_name,
    bload_group
from students
where
    bload_group = 'A+';

-- Filter use And
select
    first_name,
    last_name,
    grade,
    course
from students
where
    grade = 'A+'
    and course = 'Chemistry';

-- FIlter use Or
select first_name, last_name, country
from students
where
    country = 'USA'
    or country = 'Australia';

-- Filter use In
select first_name, last_name, country
from students
where
    country in ('USA', 'Australia');

-- Filter use IN and AND
select
    student_id,
    first_name,
    course,
    grade,
    country
from students
where
    course in (
        'Math',
        'Physics',
        'Chemistry'
    )
    and grade in ('A+', 'B+')
    and country = 'Bangladesh'
order by grade asc;

-- FIlter us Comparison Operations
select
    student_id,
    first_name,
    age,
    course,
    grade,
    country
from students
where
    student_id between 200 and 300
    and course in (
        'Chemistry',
        'Physics',
        'Math',
        'English'
    )
    and country not in ('India', 'Nepal', 'UK');

-- Filter use Like
-- 'A%' => start with A
-- '%A' => end with A
--'_A%' => start with any 2th letter is A
-- 'A___' => Start with A and next 3 letters
-- '%A__' => end with A and next 2 letters

--like => Case sensetive
select first_name from students where first_name like 'a%'

-- Ilike => Case insensetive
select first_name from students where first_name Ilike 'a%'

-- Distinct (Common data)
select distinct country from students;

select distinct course as "Our Course" from students;

--Delete Row
delete from students where last_name = 'Test'

-- Delete Duplicate
DELETE FROM students a USING students b
WHERE
    a.email = b.email
    AND a.student_id > b.student_id;

-- Null Place Holder
select coalesce(email, 'Not Provived') from students;