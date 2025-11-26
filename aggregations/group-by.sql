-- Problem:
-- Count how many orders each customer has placed.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Explanation:
-- GROUP BY groups rows by customer_name so COUNT can summarize orders.
