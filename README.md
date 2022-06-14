### TODO:
- look into more Git functionality (branches, pull requests)
- create project with psql
- kudvenkat for missing knowledge


# Overview

* [Link to class](https://www.udemy.com/course/postgresqlmasterclass/)
* [Link to git set-up](https://www.youtube.com/watch?v=RGOj5yH7evk)

----------------------------------

## Cheat-sheet

| function | definition |
|---|---|
| git add | add updates to staging |
| git commit -m "" | commit updates |
| git push | push updates to master |
| git pull | pull updates from master |
| \c |  connect to database |
| \dt | show tables in schema |
| \d | describe table |
| **CTRL+E, CTRL+B** | format SQL query  |
| TO_CHAR(field, format) | - |
| TO_NUMBER(field, format) | - |
| TO_DATE(string, format) | - |
| TO_TIMESTAMP(field, format) | - |
| DATE_PART(FIELD, SOURCE) | - |
| AGE(timestamp, timestamp) | calculate age between two dates |
| TRIM(field, string_to_trim) | - |
| LPAD()  | section14 |
| STRINGPOS() | section14 |
| REPLACE() | section14|
| CAST()  | - |
| CONCAT_WS()  | adds two or more expressions together with a separator|

---------------------------------
## Summary

### [Order of execution](https://towardsdatascience.com/the-6-steps-of-a-sql-select-statement-process-b3696a49a642):
1. FROM / JOIN
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

### [Conversion Functions](https://www.postgresql.org/docs/current/functions-formatting.html)


