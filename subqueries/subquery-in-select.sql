-- Problem:
-- For each customer, show the total number of orders they’ve placed.

SELECT
    customer_name,
    (SELECT COUNT(*)
     FROM orders o
     WHERE o.customer_id = c.customer_id) AS total_orders
FROM customers c;

-- Explanation:
-- Subquery is executed per customer (correlated subquery).
