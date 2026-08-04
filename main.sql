CREATE TABLE emps (name TEXT, department TEXT, salary INTEGER);
INSERT INTO emps VALUES
    ('Alice', 'eng', 100000),
    ('Bob', 'eng', 80000),
    ('Carol', 'eng', 120000),
    ('Dan', 'eng', 90000),
    ('Eve', 'sales', 70000),
    ('Frank', 'sales', 60000),
    ('Grace', 'sales', 80000);

WITH ranked AS (
  SELECT name, department, salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) as rn
  FROM emps
)
SELECT name, department, salary
FROM ranked
WHERE rn <= 3
ORDER BY department, salary DESC;
