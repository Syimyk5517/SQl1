CREATE TABLE director
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(55)        NOT NULL,
    surname      VARCHAR(55),
    age          INTEGER,
    email        VARCHAR(77) UNIQUE NOT NULL,
    phone_number VARCHAR(13)
);
CREATE TABLE librarian
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(55)        NOT NULL,
    surname      VARCHAR(55),
    age          INTEGER,
    email        VARCHAR(77) UNIQUE NOT NULL,
    phone_number VARCHAR(13)
);
CREATE TABLE schedule
(
    id       SERIAL PRIMARY KEY,
    open_at  TIME,
    close_at TIME
);
CREATE TABLE book
(
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(79)  NOT NULL,
    author VARCHAR(120) NOT NULL
);
CREATE TABLE account
(
    id             SERIAL PRIMARY KEY,
    account_number INTEGER NOT NULL,
    money          DOUBLE PRECISION
);
CREATE TABLE memory
(
    id  SERIAL PRIMARY KEY,
    ram INTEGER          NOT NULL,
    ssd DOUBLE PRECISION NOT NULL
);
CREATE TABLE computer
(
    id        SERIAL PRIMARY KEY,
    model     VARCHAR(33) NOT NULL,
    cpu       VARCHAR(40) NOT NULL,
    id_memory INT REFERENCES memory (id)
);
CREATE TABLE room
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(30),
    size INT
);
CREATE TABLE contact
(
    id           SERIAL PRIMARY KEY,
    phone_number VARCHAR(13) UNIQUE NOT NULL,
    email        VARCHAR(70) UNIQUE NOT NULL
);
CREATE TABLE library
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(55) NOT NULL,
    id_director  INT REFERENCES director (id),
    id_librarian INT REFERENCES librarian (id),
    id_schedule  INT REFERENCES schedule (id),
    id_book      INT REFERENCES book (id),
    id_account   INT REFERENCES account (id),
    id_computer  INT REFERENCES computer (id),
    id_room      INT REFERENCES room (id),
    id_contact   INT REFERENCES contact (id)
);
INSERT INTO director(name, surname, age, email, phone_number)
VALUES ('Tobi', 'Brain', 47, 'tobi@gmail.com', '+996772445566'),
       ('Asan', 'Adylbekov', 26, 'a@gmail.com', '+996220478806');

INSERT INTO librarian(name, surname, age, email, phone_number)
VALUES ('Baktygul', 'Elesova', 32, 'b@gmail.com', '+996221554499'),
       ('Samat', 'Satybaev', 22, 's@gmail.com', '+996556007700');

INSERT INTO book(name, author)
VALUES ('BOOK','AUTHOR AUTHOR'),
       ('BOOK','AUTHOR AUTHOR'),
       ('BOOK','AUTHOR AUTHOR');

INSERT INTO account(account_number, money)
VALUES (4455, 23970.98),
       (1111, 33200.1),
       (8900, 70000.0);

INSERT INTO memory(ram, ssd)
VALUES (4, 256),
       (16, 128),
       (32, 512);

INSERT INTO computer(model, cpu, id_memory)
VALUES ('aser', 'core i7', 2),
       ('TUF', 'core i7', 3);

INSERT INTO room(name, size)
VALUES ('conference room', 57),
       ('reading room', 33);

INSERT INTO contact(phone_number, email)
VALUES ('+996990999999', 'mylibrary@gmail.com'),
       ('+996990122112', 'thislibrary@gmail.com'),
       ('+996990909090', 'lk@gmail.com');

INSERT INTO library(name, id_director, id_librarian, id_book,
                    id_account, id_computer, id_room, id_contact)
VALUES ('Main library', 2, 1, 3, 3, 2, 1, 5);