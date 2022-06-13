-- list all top 5 movies after the top 5 highest domestic profits movies
SELECT *
FROM movies.movies_revenues
ORDER BY  revenues_domestic DESC NULLS LAST
LIMIT 5 OFFSET 5;

-- get all actors where birth_date between 1991 and 1995
SELECT *
FROM movies.actors
WHERE date_of_birth BETWEEN '1991-01-21' AND '1994-06-11';

-- get all actors names where first name has 5 characters only
SELECT * FROM movies.actors WHERE LENGTH(first_name) = 5;
SELECT * FROM movies.actors WHERE first_name LIKE '_____';

SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM movies.actors;

