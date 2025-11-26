-- Problem:
-- Get all products that cost more than 50.

SELECT
    product_id,
    product_name,
    price
FROM products
WHERE price > 50;

-- Explanation:
-- The WHERE clause filters rows based on a condition.
