select * from users;
--Insert data
insert into
    users (name, email, age)
values ('kodu', 'kodu@gmail.com', 45);

--Update data
update users
set age = 50
where id = 6Q
--Multi update
update users set address = 'Dhaka' where address is null;

--Delete row
delete from users where email = 'kodu@gmail.com';

--Rename Table
alter table users rename to userss;

--Add column
alter table users add column address varchar(100);

--Rename Column
alter table users rename column name to username;

alter table users rename column username to name;

--

--Add contraint
alter table users add constraint unique_email unique (email);

-- Set Not Null
alter table users alter column email set not null;

--Set Default Value
alter table users
alter column address
set default 'Dhaka, Bangladesh';
--Drop Default
alter table users alter column address drop default;
--Update constraint
alter table users alter column name type varchar(50);

--Remove constraint
alter table users drop constraint uniqueAddress;

--