CREATE  TABLE university(
                            id SERIAL PRIMARY KEY ,
                            name VARCHAR (50)NOT NULL
);
select * from university;

CREATE  TABLE students(
                          id SERIAL PRIMARY KEY ,
                          first_name VARCHAR(50) NOT NULL ,
                          last_name VARCHAR(50) NOT NULL ,
                          age INT,
                          gender VARCHAR,
                          email VARCHAR (70) UNIQUE,
                          university_id INT REFERENCES university(id)
);
select * from students;

INSERT INTO university(name)
VALUES ('Manas'),
       ('MGU'),
       ('Oxford');

INSERT INTO students (first_name, last_name, age, gender, email, university_id)
VALUES ('Syimyk','Zhumabek uulu',22,'MALE','syimyk@gmail.com',2),
       ('Zhazgul','Zhoroeva',19,'FEMALE','zhazgul@gmail.com',1),
       ('Baytik','Taalaybekov',20,'MALE','b@gmail.com',3);

CREATE  TABLE selesman(
                          id SERIAL PRIMARY KEY ,
                          name VARCHAR(50)NOT NULL
);
select * from selesman;

CREATE TABLE manufacturing (
                               id SERIAL PRIMARY KEY ,
                               country VARCHAR(50)
);
select *from manufacturing;

CREATE TABLE products(
                         id SERIAL PRIMARY KEY ,
                         name VARCHAR(50)NOT NULL
);
select * from products;

CREATE TABLE shop_products(
                              id SERIAL PRIMARY KEY ,
                              name VARCHAR(50)NOT NULL ,
                              selesman_id INT REFERENCES  selesman(id),
                              manufacturing_id INT REFERENCES  manufacturing(id),
                              products_id INT REFERENCES  products(id)
);
select * from shop_products;

INSERT INTO selesman(name)
VALUES ('Saltanat'),
       ('Kanykey'),
       ('Davran');

INSERT INTO manufacturing( country)
VALUES ('Africa'),
       ('Kyrgyzstan'),
       ('Chine');

Insert Into products(name)
VALUES ('Apricot'),
       ('Banana'),
       ('Tea');

INSERT INTO shop_products(name, selesman_id, manufacturing_id, products_id)
VALUES ('Globus',1,1,2),
       ('Vkusvill',3,2,1),
       ('Atak',2,3,3);

CREATE TABLE country(
                        id SERIAL PRIMARY KEY ,
                        country varchar(50) not null ,
                        population INT
);

CREATE TABLE capital (
                         id serial primary key ,
                         capital varchar(60) not null ,
                         area int,
                         country_id int references country(id)

);

INSERT INTO country(country, population)
values ('Kyrgyzstan',7000000),
       ('Russia',145000000),
       ('Kazakhstan',170000000);

INSERT INTO capital(capital, area, country_id)
VALUES ('Bishkek', 169000,1),
       ('Astana',2000000,2),
       ('Moscow',5000000,3);

select * from country;
select * from capital;

CREATE TABLE cars(
                     id serial primary key ,
                     model varchar(50)not null ,
                     price int not null ,
                     color varchar(50) not null
);

CREATE TABLE driver(
                       id serial primary key ,
                       education varchar(50) not null ,
                       gender varchar check ( gender = 'MALE' OR gender = 'FEMALE' ),
                       cars_id int references cars(id));

INSERT INTO cars(model, price, color)
VALUES('Mers',1200,'WHite'),
      ('BMW',1300,'BLACK'),
      ('AUDI',14000,'DREY');

insert into driver(education, gender, cars_id)
VALUES('High','MALE',1),
      ('Middle','FEMALE',2),
      ('High','MALE',3);

select * from cars;
select * from driver;