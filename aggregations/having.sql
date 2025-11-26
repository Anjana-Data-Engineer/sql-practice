-- Problem:
-- Find customers with more than 5 orders.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 5;

-- Explanation:
-- HAVING filters aggregated results after GROUP BY.
