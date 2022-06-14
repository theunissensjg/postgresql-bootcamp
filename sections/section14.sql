-- SPLIT_PART(string, delimited, position)

-- SELECT SPLIT_PART(TO_CHAR(release_date, 'YYYY-mm-dd'), '-', 1) AS year FROM movies.movies;

-- SELECT SPLIT_PART(CAST(release_date AS VARCHAR(50)), '-', 1) AS year FROM movies.movies;

-- SELECT '    hello world   ' AS string;

-- SELECT TRIM('    hello world   ') AS string;

-- SELECT BTRIM('    HELLO        ', ' ') AS STRING


-- -- LPAD(string, length, fill_text)
-- SELECT m.movie_name, r.revenues_domestic, LPAD('', CAST(TRUNC(r.revenues_domestic / 50) AS INT), '*') AS magnitude
-- FROM movies.movies m
-- INNER JOIN movies.movies_revenues r
-- ON r.movie_id = m.movie_id
-- ORDER BY r.revenues_domestic DESC
-- NULLS LAST

-- -- STRPOS(string, substring)
-- SELECT first_name
-- FROM movies.actors
-- WHERE STRPOS(first_name, 'n') > LENGTH(first_name) - 1;

-- SELECT first_name
-- FROM movies.actors
-- WHERE STRPOS(first_name, 'n') > 0;

-- SELECT REPLACE('pizza ', ' ', '');

-- SELECT CAST(10/2 AS NUMERIC(5,4));

-- SELECT (1998 / 10) * 10
