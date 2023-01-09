-- postgres=# CREATE  TABLE driverTaxi(id serial primary key, model varchar, number int);
-- CREATE TABLE
--     postgres=# CREATE TABLE clentss(id serial primary key, name varchar, price int, taxi_id int references taxi(id));
-- CREATE TABLE
--     postgres=# INSERT INTO taxi(model,number)VALUES('Mers',5555),('Audi',1111),('BMW',0001);
-- INSERT 0 3
--     postgres=# INSERT INTO clentss(name, price, taxi_id)VALUES('Baytik',230,1),('Syimik',150,2),('Bayish',350,3);
-- INSERT 0 3
--     postgres=# \d taxi
--     postgres=# \d clentess


-- postgres=# CREATE TABLE fruits(id serial primary key, name varchar, color varchar);
-- CREATE TABLE
--     postgres=# CTREAT TABLE apple(id serial primary key, color varchar, fruits_id int references fruits(id);
--     postgres(# INSERT INTO fruits(name, color)VALUES('apple','white'),('orange','orange');
--     postgres(# INSERT INTO apple(color, fruits_id)VALUES('white',1),('blue',2);


-- postgres(# CREATE TABLE films(id serial primary key, name varchar,year int);
-- postgres(# CREATE TABLE serials(id serial primary key, name varchar, year int,films_id int references films(id));
-- postgres(# INSERT INTO films(name, year)VALUES('TOR',2012),('IRANMAN',2010);
-- postgres(# INSERT INTO serials('BONES',2000,1),('LUSIFER',2005);


-- postgres(# CREATE TABLE bigcity(id serial primary key,name varchar, population int);
-- postgres(# CREATE TABLE smallcity(id serial primary, name varchar, population int, bigcity_id int references bigcity(id));
-- postgres(# INSERT INTO bigcity(name, population)VALUES('Tokio'14000000),('NY',8000000);
-- postgres(# INSERT INTO smallcity(name, population, bigcity_id)VALUES('VATIKAN',453),('HUM',27);

-- postgres(# CTREAT TABLE people(id serial primary key, name varchar, age int);
-- postgres(# CTREAT TABLE person(id serial primary key, name varchar, email varchar, people_id int references people(id);
--             postgres(# INSERT INTO people(name, age)VALUES('Justin Bierber',25),('Kaliya Jenner',23);
--             postgres(# INSERT INTO person(name,email,people_id)VALUES('BAYTIK','BAYTIK@GMAIL.COM',1),('MEGAN FOX',MEGAN@GMAIL.COM);
--             postgres(#