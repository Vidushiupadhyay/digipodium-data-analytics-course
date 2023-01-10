-- another example
SELECT 
    projects.name, expenses.amount, expenses.description
FROM 
    expenses, projects
WHERE 
    expenses.project_id = projects.id 
ORDER BY
    projects.id;

-- Inner join(more professional of the above example)
SELECT 
    p.id, p.name, e.amount, e.description 
FROM
    projects AS p
INNER JOIN
    expenses AS e
ON
    e.project_id = p.id
ORDER BY
    p.id;

-- Left outer join
SELECT 
    p.id, p.name, e.amount, e.description 
FROM
    projects AS p
LEFT OUTER JOIN
    expenses AS e
ON
    e.project_id = p.id
ORDER BY
    p.id;

-- right outer join
-- SELECT 
    p.id, p.name, e.amount, e.description 
FROM
    projects AS p
RIGHT OUTER JOIN
    expenses AS e
ON
    e.project_id = p.id
ORDER BY
    p.id;