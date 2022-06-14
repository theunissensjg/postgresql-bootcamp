-- -- 1. Create sequence
-- CREATE SEQUENCE IF NOT EXISTS test_seq;

-- -- 2. Select sequence
-- SELECT nextval('seq_asc');

-- -- 3. Select current value
-- SELECT currval('test_seq');

-- -- 4. Set a sequence
-- SELECT setval('test_seq', 100);

-- -- 5. Set a sequence and do not skip over
-- SELECT setval('test_seq', 100, false);

-- -- 6. Control the sequence START value
-- CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100;

-- -- 7. Create sequence with multiple parameters
-- CREATE SEQUENCE IF NOT EXISTS test_seq3
-- INCREMENT 10
-- MINVALUE 100
-- MAXVALUE 1000
-- START WITH 100;

-- 8. Specify the data type of a sequence (SMALLINT | INT | BIGINT)

-- -- 9. Create a descending sequence
-- -- if CYCLE then it restarts at 1000 when reaching MINVALUE
-- -- if NOCYCLE it will be stuck at 100
-- CREATE SEQUENCE IF NOT EXISTS seq_asc
-- INCREMENT -10
-- MINVALUE 100
-- MAXVALUE 1000
-- START WITH 1000
-- CYCLE;

-- 10. Attache a sequence to a table
-- CREATE TABLE sequence.users(
--     user_id SERIAL PRIMARY KEY,
--     user_name VARCHAR(50)
-- )

-- INSERT INTO sequence.users (user_name) VALUES ('PETE');

-- SELECT * FROM sequence.users

-- ALTER SEQUENCE sequence.users_user_id_seq RESTART WITH 100;

-- 11. Create table with sequence
-- CREATE TABLE sequence.users(
--     user_id INT PRIMARY KEY,
--     user_name VARCHAR(50)
-- );

-- CREATE SEQUENCE sequence.users_user_id_seq
-- START WITH 100 OWNED BY sequence.users.user_id;

-- ALTER TABLE sequence.users
-- ALTER COLUMN user_id SET DEFAULT nextval('sequence.users_user_id_seq');

-- INSERT INTO sequence.users (user_name) VALUES ('JOHN');
-- INSERT INTO sequence.users (user_name) VALUES ('PETE');
-- INSERT INTO sequence.users (user_name) VALUES ('MAXIM');

-- 12. Share sequence among tables
-- SEE LECTURE
