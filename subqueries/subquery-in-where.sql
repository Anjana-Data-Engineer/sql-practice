-- Problem:
-- Get the names of customers who have placed at least one order.

SELECT
    customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders
);

-- Explanation:
-- Subquery finds customer_ids that appear in orders.
