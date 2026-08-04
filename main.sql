CREATE TABLE products (category TEXT, price INTEGER);
INSERT INTO products VALUES
    ('food', 10),
    ('tech', 500),
    ('food', 25),
    ('tech', 1500),
    ('book', 30),
    ('book', 20);

WITH total_sales AS(
  SELECT category, SUM(price) as total_price
  FROM products
  GROUP BY category
)
SELECT category, total_price
FROM total_sales
WHERE total_price > 100
ORDER BY category;
