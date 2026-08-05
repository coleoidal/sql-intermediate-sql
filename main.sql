CREATE TABLE customers (id INTEGER, name TEXT);
INSERT INTO customers VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Carol'), (4, 'Dan');

CREATE TABLE orders (customer_id INTEGER, item TEXT);
INSERT INTO orders VALUES (1, 'book'), (3, 'phone'), (1, 'pen');

SELECT name FROM customers c
EXCEPT
SELECT c.name FROM customers c JOIN orders o ON c.id = o.customer_id 
ORDER BY c.name;
