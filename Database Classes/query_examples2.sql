-- SELECT COL1, COL2,..... FROM tablename;
SELECT user_id , amount FROM expenses;
-- column renaming
-- SELECT col1 AS new_name1, col2 AS new_name2, .... FROM tablename;
SELECT user_id AS user, amount, updated_at AS date FROM expenses;
-- column renaming/aliasing with ordering
-- SELECT col1 AS new_name1, col2 AS new_name2, .... FROM tablename ORDER BY columnname;
SELECT user_id AS user, amount, updated_at AS date FROM expenses ORDER BY user;
-- aggregate functions, COUNT, SUM, AVG, MIN,MAX
-- count all unique user ids
SELECT COUNT(user_id) FROM expenses;
-- total amount
SELECT SUM(amount) as total_amount FRom expenses;
-- distinct batayega ki hamare pass unique user_id ya kuch aur kitna h?
SELECT COUNT(DISTINCT user_id) FROM expenses;
-- sum, average, minimum, maximum of records of concerned column
SELECT SUM(amount), AVG(amount), MIN(amount), Max(amount) as total_amount FROM expenses;
-- unique values in a column
SELECT DISTINCT user_id FROM expenses;