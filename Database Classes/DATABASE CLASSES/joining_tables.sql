-- joining tables

-- users and locations
-- types of join
-- 1. Inner join
-- 2. Outer join
-- 3. Join with where clause

-- Join with where clause
-- simple example
SELECT * FROM users, locations WHERE users.location_id = location_id;
-- better version
SELECT 
    users.id, users.title, users.email, locations.name
FROM 
    users, locations
WHERE 
    users.location_id = locations.id 
ORDER BY
    locations.id;
