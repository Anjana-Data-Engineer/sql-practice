-- SQL
-- Problem:
-- Show the country and the area for countries with an area between 200,000 and 250,000.

SELECT 
  name, 
  population 
FROM 
  world 
WHERE 
  name IN ('Sweden', 'Norway', 'Denmark');

-- Explanation:
-- ETWEEN allows range checking (range specified is inclusive of boundary values)
