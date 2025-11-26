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

-- sql zoo ---

-- Problem:
-- Get the  population of Germany from table world

SELECT 
  population 
FROM 
  world 
where 
  name = 'Germany'

-- Explanation:
-- The WHERE clause filters rows based on a condition. Here based on name Germany
