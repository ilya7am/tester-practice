--Create employees table 
create table employees 
(id int not null primary key auto_increment,
employee_name varchar(50) not null);

--Fill in the table with 70 employees
insert into employees (employee_name)
values ('Ilya'),
	   ('Sonya'),
	   ('Kate'),
	   ('Dima'),
	   ('Artem'),
	   ('Liza'),
	   ('Vanya'),
	   ('Stasy'),
	   ('Tanya'),
	   ('Tina'),
	   ('Valya'),
	   ('Daria'),
	   ('Nikita'),
	   ('Arseniy'),
	   ('Sasha'),
	   ('Vladimir'),
	   ('Sveta'),
	   ('Tom'),
	   ('Jane'),
	   ('Alla'),
	   ('Nick'),
	   ('Jerry'),
	   ('Vasya'),
	   ('Lev'),
	   ('Dina'),
	   ('Vlad'),
	   ('Maria'),
	   ('Jylia'),
	   ('Natalya'),
	   ('Nina'),
	   ('Nelya'),
	   ('Igor'),
	   ('Kolya'),
	   ('Ksenia'),
	   ('Kirill'),
	   ('Mike'),
	   ('Irina'),
	   ('Vitaliy'),
	   ('Egor'),
	   ('Oksana'),
	   ('Olga'),
	   ('Artur'),
	   ('Viktor'),
	   ('Margo'),
	   ('Alya'),
	   ('Derek'),
	   ('Penny'),
	   ('Lybov'),
	   ('Roman'),
	   ('Vera'),
	   ('George'),
	   ('Linda'),
	   ('Helga'),
	   ('Mike'),
	   ('Raf'),
	   ('Donna'),
	   ('Luke'),
	   ('Ron'),
	   ('Ben'),
	   ('Ludmila'),
	   ('Anna'),
	   ('Marina'),
	   ('Kristina'),
	   ('Lida'),
	   ('Denis'),
	   ('Sergey'),
	   ('Andrey'),
	   ('Margo'),
	   ('Nonna'),
	   ('Ulyana');
	   
--Create salary table
create table salary 
(id int not null primary key auto_increment,
monthly_salary int not null);

--Add 16 rows
insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
	   
--Create employee_salary table
create table employee_salary 
(id int not null primary key auto_increment,
employee_id int not null unique,
salary_id int not null);
	   
--Add 40 rows
insert into employee_salary (employee_id, salary_id)
values (2, 14),
	   (5, 10),
	   (3, 12),
	   (7, 15),
	   (1, 16),
	   (11, 3),
	   (13, 2),
	   (14, 4),
	   (16, 8),
	   (19, 10),
	   (21, 1),
	   (24, 13),
	   (26, 12),
	   (27, 11),
	   (28, 3),
	   (30, 13),
	   (32, 14),
	   (34, 4),
	   (36, 16),
	   (39, 6),
	   (41, 2),
	   (44, 11),
	   (45, 13),
	   (48, 3),
	   (49, 14),
	   (53, 2),
	   (55, 7),
	   (57, 12),
	   (59, 1),
	   (62, 13),
	   (74, 3),
	   (79, 15),
	   (80, 2),
	   (88, 111),
	   (92, 1),
	   (97, 13),
	   (99, 4),
	   (101, 4),
	   (106, 8),
	   (109, 13);
	   
--Create roles tabe
create table roles 
(id int not null primary key auto_increment,
role_name int not null unique);

--Change the data type for role_name 
alter table roles 
modify role_name varchar(30);  
	   
--Add 20 roles
insert into roles (role_name)   
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

	   
--Create roles_employee table
create table roles_employee 
(id int not null primary key auto_increment,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id));
	   
		

--Add 40 rows
insert into roles_employee (employee_id, role_id)
values (4, 13),
	   (6, 20),
	   (8, 11),
	   (9, 11),
	   (12, 10),
	   (13, 3),
	   (14, 15),
	   (18, 2),
	   (16, 2),
	   (17, 19),
	   (19, 4),
	   (20, 20),
	   (21, 15),
	   (23, 7),
	   (26, 8),
	   (28, 2),
	   (30, 4),
	   (31, 11),
	   (32, 19),
	   (33, 1),
	   (35, 17),
	   (39, 18),
	   (40, 12),
	   (41, 13),
	   (44, 16),
	   (46, 11),
	   (48, 10),
	   (50, 4),
	   (52, 3),
	   (53, 1),
	   (55, 13),
	   (56, 7),
	   (58, 19),
	   (60, 4),
	   (62, 13),
	   (63, 11),
	   (66, 12),
	   (67, 3),
	   (69, 5),
	   (70, 1);
