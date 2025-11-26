-- Problem:
-- For each product, show its price compared to the previous price entry.

SELECT
    product_id,
    price,
    LAG(price, 1) OVER (ORDER BY product_id) AS previous_price
FROM products;

-- Explanation:
-- LAG looks back one row within the window.
