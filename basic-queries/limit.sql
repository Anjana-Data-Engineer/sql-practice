-- Problem:
-- Show the first 5 most recent orders.

SELECT
    order_id,
    order_date,
    customer_id
FROM orders
ORDER BY order_date DESC
LIMIT 5;

-- Explanation:
-- LIMIT restricts the number of returned rows.
