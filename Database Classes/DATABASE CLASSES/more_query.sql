-- SQLite
-- you can update the scheema of a table using ALTR
-- ALTER TABLE products ADD COLUMN discount INTEGER;(ye wali query ek baari run kara kar ke , isko comment kar dena h nhi toh jitni baar hum pura code run karenge , unti baari column add hoga)

-- you can remove a column using DROP COLUMN in ALTER
-- ALTER TABLE products DROP COLUMN discount;


-- insert 5 products in products table
INSERT INTO products (name, price, description, discount)
VALUES ("T-Shirt", 100, "Yellow Colour", 2),
       ("Trouser", 300, "Black Colour", 3),
       ("Coat", 600, "Black Colour", 4),
       ("Watch", 150, "Silver Colour", 2),
       ("Heels", 300, "Lavender Colour", 3);

-- display all products
SELECT * FROM products;

-- display data
SELECT name, price, description, discount, price*discount AS total FROM products ORDER BY total DESC;

