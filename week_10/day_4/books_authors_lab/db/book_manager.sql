DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
id SERIAL PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255)
);

CREATE TABLE books (
id SERIAL PRIMARY KEY,
title VARCHAR(255),
release_date INT,
author_id IN REFERENCES authors (id)
);

