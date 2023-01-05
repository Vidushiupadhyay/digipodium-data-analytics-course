-- SQLite
SELECT * FROM orders WHERE ord_amount > 2500;

-- range of values
SELECT * FROM orders WHERE ord_amount < 4000 AND ord_amount < 2500;

-- between
SELECT * FROM orders WHERE ord_amount BETWEEN 3000 AND 4000;

-- subracting ord_amount and advance_amount
SELECT *, ord_amount - advance_amount AS Remaining FROM orders ORDER BY Remaining DESC; --where remaining is new column name
   