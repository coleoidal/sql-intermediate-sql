CREATE TABLE employees (name TEXT, salary INTEGER);
INSERT INTO employees VALUES
    ('Alice', 80000),
    ('Bob', 50000),
    ('Carol', 95000),
    ('Dan', 60000),
    ('Eve', 70000);

SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
