-- public northwind.sql
-- bootcamp customers, products, purchases, stock_prices, stock_symbols, stock_types
-- hr has hr.sql

CREATE SCHEMA movies;

CREATE SCHEMA bootcamp;

CREATE SCHEMA hr;

CREATE TABLE movies.actors(
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE,
    add_date DATE,
    update_date DATE
);

CREATE TABLE movies.directors(
    director_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    date_of_birth DATE,
    nationality VARCHAR(20),
    add_date DATE,
    update_date DATE
);

CREATE TABLE movies.movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL,
    movie_length INT,
    movie_lang VARCHAR(20),
    age_certificate VARCHAR(10),
    release_date DATE,
    director_id INT REFERENCES movies.directors (director_id) -- create foreign key
);

CREATE TABLE movies.movies_revenues (
    revenue_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies.movies (movie_id),
    revenues_domestic NUMERIC(10,2),
    revenues_international NUMERIC(10,2)
);

-- Create movies_actors junction table

CREATE TABLE movies.movies_actors (
    movie_id INT REFERENCES movies.movies (movie_id),
    actor_id INT REFERENCES movies.actors (actor_id),
    PRIMARY KEY (movie_id, actor_id) -- primary key on multiple columns
);

CREATE SCHEMA mydata;

-- insert directors.sql
-- insert actors.sql
-- insert movies.sql
-- insert movies_actors.sql
-- insert movies_revnues.sql

-- insert products.sql
-- insert customers.sql
-- insert purchases.sql

-- insert stock_prices.sql
-- insert stock_symbols.sql
-- insert stock_types.sql


