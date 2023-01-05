-- SQLite

-- find all customers where firstname starts with 'a'
SELECT * FROM customers WHERE firstname LIKE 'a%';

-- find all customers where firstname ends with 'a'
SELECT * FROM customers WHERE firstname LIKE '%a';

-- find all customers where lastname contain 'a' inside it
SELECT * FROM customers WHERE lastname LIKE '%a%' ORDER BY lastname;

-- find all customers where firstname has 'a' on the 3rd position
SELECT * FROM customers WHERE firstname LIKE '__a%';

-- important 
-- sqlite wildcard % is equivalent to mysql wildcard *
-- sqlite wildcard _ is equivalent to mysql wildcard ?

-- find all customers where firstname has 'a' inside it and do not use gmail
SELECT * FROM customers WHERE firstname LIKE '%a%' AND email NOT LIKE '%@gmail.com';

-- IN where clause
-- 'LIKE' OPERATOR AND '=' OPERATOR HUM TAB USE KARENGE JAB HUMEIN SIRF EK COUNTRY KA DATA CHAHIYE HOTA H AUR 'IN' OPERATOR TAB USE KARENGE JAB HUMEIN MULTIPLE COUNTRIES KA DATA CHAHIYE HOTA H
SELECT * FROM agents WHERE country IN ('INDIA', 'CANADA', 'USA');