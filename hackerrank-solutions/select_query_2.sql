-- sql--
-- Problem1:
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. For example, 
--if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'.

SELECT 
  (
    COUNT(CITY) - COUNT(DISTINCT CITY)
  ) AS distinct_city_numbers 
FROM 
  STATION;

-- Problem2:
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SELECT CITY, 
LENGTH(CITY) AS CITY_LENGTH 
FROM 
  STATION 
ORDER BY 
  CITY_LENGTH, 
  CITY 
LIMIT 
  1
) 
UNION 
  (
    SELECT 
      CITY, 
      LENGTH(CITY) AS CITY_LENGTH 
    FROM 
      STATION 
    ORDER BY 
      CITY_LENGTH DESC, 
      CITY ASC 
    LIMIT 
      1
  );

--First sort by the shortest length If multiple, alphabetically pick the first

-- Problem3:
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a'
   OR CITY LIKE '%e'
   OR CITY LIKE '%i'
   OR CITY LIKE '%o'
   OR CITY LIKE '%u';

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';

--LIKE '%a' → checks if CITY ends with 'a'Use OR to cover all vowels DISTINCT removes duplicates No need for ORDER BY unless required



