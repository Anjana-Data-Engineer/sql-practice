-- Problem1 :
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT 
  * 
From 
  CITY 
WHERE 
  CountryCode = "USA" 
  AND population > 100000;

-- Returning all the columns and filtering the table based on country and population

-- Problem2 :
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

SELECT 
  NAME 
FROM 
  CITY 
WHERE 
  CountryCode = "USA" 
  and population > 120000;

-- Returning name column and filtering the table based on country and population

--Problem3:
--Query all columns (attributes) for every row in the CITY table.
select 
  * 
from 
  CITY;
--select statment enables to selec all column for every row

--Problem4:
--Query all columns for a city in CITY with the ID 1661.

select 
  * 
from 
  CITY;

--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT 
  * 
FROM 
  CITY 
where 
  COUNTRYCODE = "JPN";

--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT 
  NAME
FROM 
  CITY 
where 
  COUNTRYCODE = "JPN";

--Query a list of CITY and STATE from the STATION table.

SELECT 
  city, 
  state 
FROM 
  STATION;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in

SELECT 
  city
FROM 
  STATION;

--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

SELECT 
  distinct city 
FROM 
  STATION 
WHERE 
  MOD(ID, 2) = 0;


--MOD(ID, 2) = 0 → selects rows where ID is even, DISTINCT → removes duplicate city names AND No ORDER BY needed (HackerRank allows any order unless specified)
