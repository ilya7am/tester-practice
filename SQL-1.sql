--Display all the data from a database
select * from students;


--Display all students from the table
select id, name from students;


--Display id from the table
select id from students;


--Display only names the table
select name from students;


--Display name and email from the table
select name, email from students;


--Display id, name, email, date of regist from the table
select id, name, email, created_on from students;


--Display users with the appropriate password
select * from students where password = '12333';


--Display users with the relevant date of regist
select * from students where created_on = '2021-03-26 00:00:00';


--Display users with the name consisiting "Anna"
select * from students where name like '%Anna%';


--Display users with names ended with 8
select * from students where name like '%8';


--Display users with names consisting letter "a"
select * from students where name like '%a%';


--Display users with the relevant date of regist
select * from students where created_on = '2021-07-12 00:00:00';


--Display users with the relevant date of regist and password
select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';
 
 
--Display users with the relevant date of regist and name 'Andrey'
select * from students where created_on = '2021-07-12 00:00:00' and name = 'Andrey%';
 
 
--Display users with the relevant date of regist and name consisting '8'
select * from students where created_on = '2021-07-12 00:00:00' and name like '%8%';
 
 
--Display user with id = 110
select * from students where id = 110;
 
 
--Show a user with id = 153
select * from students where id = 153;


--Show a user with id>140
select * from students where id > 140;


--Show a user with id<130
select * from students where id < 130;


--Show a user with id<127 or id>188 (three methods)
select * from students where id < 127 or id > 188;
select * from students where not id in (127, 188);
select * from students  where not (id = 127 or id = 188);


--Show a user with id<=137
select * from students where id <= 137;


--Show a user with id>=137
select * from students where id >= 137;


--Show a user with id>180 id<190
select * from students where id > 180 and  id < 190;


--Show a user with id between 180 and 190
select * from students where id between 180 and 190;


--Show a user with a required password
select * from students where password in ('12333', '1m313', '123313');


--Show a user with required created_on date
select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');


--Show mimimal id
select min(id) as Minimal from students;


--Show maximal id
select max(id) as Maximal from students;


--Show user amount
select count(id) as User_amount from students;


--Show id, name, created_on ordered by created_on (asc)
select id, name, created_on from students order by (created_on);


--Show id, name, created_on ordered by created_on (desc)
select id, name, created_on from students order by (created_on) desc;
