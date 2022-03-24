--Create new database
create database unions;

--Create table Users
create table users 
(id int not null primary key auto_increment, 
countries varchar(50));


--Fill in Users
insert into users (countries) 
values ('UAE'),
	   ('Great Britain'),
	   ('S Korea'),
	   ('USA'),
	   ('Germany'),
	   ('Turkey');
	 

--Create table Cities	 
create table cities
(id int not null primary key auto_increment,
size_id int not null,
city_name varchar(50),
cost int,
countries_id int);


--Add data to the table Cities
insert into cities (size_id, city_name, cost, countries_id)
values (1, 'Seul', 15000, 3),
	   (3, 'Munich', 9000, 5),
	   (1, 'New York', 3000, 4),
	   (2, 'Ankara', 1600, 6),
	   (2, 'Dubai', 1300, 1),
	   (2, 'Berlin', 5000, 5),
	   (1, 'London', 2600, 2),
	   (3, 'Plymouth', 1200, 2),
	   (2, 'Pusan', 2000, 3),
	   (3, 'Bodrum', 800, 6),
	   (3, 'Tavistock', 900, 2);
	   
	   
--Create table population	 
create table population
(id int not null primary key auto_increment, 
size_title varchar(50));

--Add data to the table population
insert into population (size_title)
values ('10 mln+'),
	   ('3-8 mln'),
	   ('up to 3 mln');

	   
--Create table cities_2	 
create table cities_2
(id int not null primary key auto_increment,
size_id int not null,
city_name varchar(50),
cost int,
countries_id int);	 


--Add data to the table cities_2
insert into cities_2 (size_id, city_name, cost, countries_id)
values (2, 'Birmingham', 900, 2),
	   (3, 'Hamburg', 1300, 5),
	   (1, 'Los Angeles', 1900, 4),
	   (3, 'Lids', 600, 2),
	   (2, 'Abu Dhabi', 300, 1),
	   (2, 'Izmir', 500, 6),
	   (3, 'Osan', 200, 3),
	   (2, 'Chicago', 1200, 4),
	   (2, 'Sharjah', 500, 1),
	   (1, 'Stambul', 800, 6),
	   (3, 'Kwacheon', 300, 3);  
	
	
--Create table visits	 
create table visits  
(id int not null primary key auto_increment,
city_name varchar(50),
cost int,
amount int);


--Add data to the table visits
insert into visits (city_name, cost, amount)
values ('Birmingham', 900, 1),
	   ('Hamburg', 1300, 3),
	   ('Los Angeles', 1900, 2),	
	   ('New York', 3000, 1),
	   ('Ankara', 1600, 3),
	   ('Dubai', 1300, 2),
	   ('Berlin', 5000, 5),
	   ('London', 2600, 4);


--UNIONS
--Choose all places (20) where the cost of living is less than 6000 dollars 
select size_id, city_name, cost from cities where cost < 6000
union
select size_id, city_name, cost from cities_2 where cost < 6000;


--Show all places with decrypted size_id (population.size_title)
select population.size_title, city_name, cost from cities       
join population on cities.size_id = population.id
where cost < 6000
union
select population.size_title, city_name, cost from cities_2    
join population on cities_2.size_id = population.id
where cost < 6000
order by cost;

--Show all countries, cities, cost of life
select countries, population.size_title, city_name, cost from cities
join users on users.id = cities.countries_id
join population on cities.size_id = population.id
union 
select countries, population.size_title, city_name, cost from cities_2
join users on users.id = cities_2.countries_id
join population on cities_2.size_id = population.id;


--Show only  data for USA
select countries, population.size_title, city_name, cost from cities
join users on users.id = cities.countries_id
join population on cities.size_id = population.id
where countries = 'USA'
union 
select countries, population.size_title, city_name, cost from cities_2
join users on users.id = cities_2.countries_id
join population on cities_2.size_id = population.id
where countries = 'USA';
