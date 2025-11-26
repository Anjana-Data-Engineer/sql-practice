-- Problem:
-- Find the top 3 customers who placed the most orders.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC
LIMIT 3;

-- Explanation:
-- Combines GROUP BY and ORDER BY to find highest activity.
