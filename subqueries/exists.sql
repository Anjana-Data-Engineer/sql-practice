-- Problem:
-- List customers who have placed at least one order.

SELECT
    customer_id,
    customer_name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);

-- Explanation:
-- EXISTS returns TRUE if the subquery finds a match.
