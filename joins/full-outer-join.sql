-- Problem:
-- List all products and the orders they appear in,
-- including products with no orders and orders with missing product info.

SELECT
    p.product_id,
    p.product_name,
    o.order_id
FROM products p
FULL OUTER JOIN order_items o
    ON p.product_id = o.product_id;

-- Explanation:
-- FULL OUTER JOIN keeps all rows from both tables.
-- (Note: Some SQL engines don’t support FULL JOIN.)
