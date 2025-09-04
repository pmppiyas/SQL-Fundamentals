select * from students;

--Update
update students set first_name = 'MD Rafi' where student_id = 2;

--Delete
delete from students where student_id = 1;

delete from students where student_id in (291, 292, 293)

delete from students where student_id between 294 and 299;