-- Problem:
-- Show all customers and their orders, including customers with no orders.

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;

-- Explanation:
-- LEFT JOIN keeps all customers, even those without matching orders.
