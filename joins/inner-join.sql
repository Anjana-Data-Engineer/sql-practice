-- Problem:
-- List all orders along with the customer name who placed each order.

SELECT
    o.order_id,
    o.order_date,
    c.customer_name
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;

-- Explanation:
-- INNER JOIN returns rows with matching customer_id in both tables.
