-- Problem-COUNT:
-- Query a count of the number of cities in CITY having a Population larger than 100000.

SELECT 
  COUNT(DISTINCT NAME) 
FROM 
  CITY 
WHERE 
  POPULATION > 100000;

-- Problem-SUM:
-- Query the total population of all cities in CITY where District is California.

select 
  sum(population) 
from 
  city 
where 
  district = 'California'

-- Query the average population of all cities in CITY where District is California.

SELECT 
  AVG(POPULATION) 
FROM 
  CITY 
WHERE 
  DISTRICT = 'California'

-- Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT 
  FLOOR(
    AVG(population)
  ) 
FROM 
  CITY

-- 
