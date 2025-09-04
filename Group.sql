-- Group by Country
select country , count(*) as total_student  from students
group by  country ;

-- Group by Bload Group
select bload_group ,count(*) from students
group by bload_group;

-- Group by Grade
select grade , count(grade) from students
group by grade;


---Filtering---

--
select course , count(*) from students
group by course
having count(*) > 4;

--
select country , count(*) from students
group by country
having count(*) between 10 and 20

-- Group By First Letter
select left(first_name, 1) as Letter, count(*) from students
group by Letter
  having left(first_name, 1) between 'A' and 'Z'
order by Letter asc

-- Group by first_name
select first_name as name , count(*) from students
  group by (name)
  having first_name between 'A' and 'S'
order by name asc

-- Group by Full Name
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM students
GROUP BY first_name, last_name
HAVING SUBSTRING(CONCAT(first_name, ' ', last_name), 1, 1) BETWEEN 'A' AND 'Z'
ORDER BY name ASC;
