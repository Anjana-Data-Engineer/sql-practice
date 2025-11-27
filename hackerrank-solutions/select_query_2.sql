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

-- Problem4:
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT 
  DISTINCT CITY 
from 
  STATION 
WHERE 
  city regexp '^[aeiou].*[aeiou]$';

---Another way
SELECT 
  DISTINCT CITY 
from 
  STATION 
WHERE 
  (
    city LIKE '%a' 
    or city LIKE '%e' 
    or city LIKE '%i' 
    or city LIKE '%o' 
    or city LIKE '%u'
  ) 
  and (
    city LIKE 'a%' 
    or city LIKE 'e%' 
    or city LIKE 'i%' 
    or city LIKE 'o%' 
    or city LIKE 'u%'
  )

-- Problem5:
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT 
  DISTINCT CITY 
FROM 
  STATION 
WHERE 
  CITY REGEXP '^[^aeiou]';

---Another way
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%'
  AND CITY NOT LIKE 'e%'
  AND CITY NOT LIKE 'i%'
  AND CITY NOT LIKE 'o%'
  AND CITY NOT LIKE 'u%';

-- Problem6:
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT 
  DISTINCT CITY 
FROM 
  STATION 
WHERE 
  CITY REGEXP '[^aeiou]$'

  ---Another way
SELECT 
  DISTINCT CITY 
FROM 
  STATION 
WHERE 
  CITY NOT LIKE '%a' 
  AND CITY NOT LIKE '%e' 
  AND CITY NOT LIKE '%i' 
  AND CITY NOT LIKE '%o' 
  AND CITY NOT LIKE '%u';

-- Problem7:
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE NOT (
    CITY REGEXP '^[aeiou]' 
    AND CITY REGEXP '[aeiou]$'
);

-- Problem8:
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

select 
  distinct city 
from 
  station 
where 
  city regexp '^[^aeiou].*[^aeiou]$';
---------------

-- Problem9:
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
--If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT 
  NAME 
FROM 
  STUDENTS 
WHERE 
  MARKS > 75 
ORDER BY 
  SUBSTR(NAME,-3), 
  ID ASC;

-- Explanation:
-- MARKS > Marks
--Filters only students scoring higher than the given value.
-- ORDER BY SUBSTR(NAME, -3)
-- Sorts by the last 3 characters of the student's name.
-- ID ASC When two names have the same last 3 characters (e.g., Bobby, Robby),The tie-breaker is ascending ID.

-- Problem10:
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT 
  NAME 
FROM 
  EMPLOYEE 
ORDER BY 
  NAME;
---------------
-- Problem11:
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater 
-- than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

SELECT 
  NAME 
FROM 
  EMPLOYEE 
WHERE 
  SALARY > 2000 
  AND months < 10;
--------------------------
