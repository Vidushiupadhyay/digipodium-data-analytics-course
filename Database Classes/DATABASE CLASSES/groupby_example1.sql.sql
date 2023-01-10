-- sqlite group by

-- agents table
SELECT * FROM agents;

-- we can use these function with group by function: min, max, avg, count, sum

-- group and count agents from country
SELECT COUNT(agent_name), country FROM agents GROUP BY country;

-- group min commission per country
SELECT min(commission) AS min_commission, country FROM agents GROUP BY country;

-- expenses table
SELECT * FROM expenses;

-- group expenses amount total by project id
SELECT SUM(amount) AS total_amount, project_id FROM expenses GROUP BY project_id ORDER BY total_amount DESC;
