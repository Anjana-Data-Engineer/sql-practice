-- Problem:
-- Show product name and how many times each product was ordered.

SELECT
    p.product_id,
    p.product_name,
    (
        SELECT COUNT(*)
        FROM order_items oi
        WHERE oi.product_id = p.product_id
    ) AS order_count
FROM products p;

-- Explanation:
-- Scalar subquery returns a single value per row.
