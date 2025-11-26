-- Problem:
-- Rank products by price (highest price = rank 1).

SELECT
    product_id,
    product_name,
    price,
    RANK() OVER (
        ORDER BY price DESC
    ) AS price_rank
FROM products;

-- Explanation:
-- RANK assigns equal rank to products with the same price.
