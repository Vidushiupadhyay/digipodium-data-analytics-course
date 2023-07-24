-- HOW TO FIND Nth amount ?

-- To find maximum amount from expenses table
SELECT MAX(amount) FROM expenses;

-- To extract all the amount except Maximum amount
SELECT amount FROM expenses WHERE amount <(SELECT MAX(amount) FROM expenses);

-- To find all 2nd Max amount from expenses table
SELECT MAX(amount) FROM expenses WHERE amount <(SELECT MAX(amount) FROM expenses);

-- Limit() clause
-- The LIMIT clause is used to specify the number of records to return.
SELECT amount FROM expenses ORDER BY amount LIMIT 7,3;

