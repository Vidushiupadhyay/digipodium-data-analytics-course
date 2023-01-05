-- SQLite
-- retrieving all data
-- syntax SELECT * FROM tablename;
SELECT * FROM users;
-- limiting
-- syntax SELECT * FROM tablename LIMIT int;
SELECT * FROM users LIMIT 5;
-- ordering
-- syntax SELECT * FROM tablename ORDER BY columname ASC/DESC(ASC default hota h aur isko likhna zaroori nhi hota h);
SELECT * FROM users ORDER BY title DESC;
-- ordering with limit
-- syntax SELECT * FROM tablename ORDER BY LIMIT ASC/DESC columnname int;(limit hamesha last mein likha jata h)
SELECT * FROM users ORDER BY title DESC LIMIT 5;
-- ordering
-- syntax SELECT * FROM tablename ORDER BY columname ASC/DESC, columnname ASC/DESC;
SELECT * FROM users ORDER BY title DESC, id ASC;

