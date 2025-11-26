--sql
--Problem:
--Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT 
  name, 
  population 
FROM 
  world 
WHERE 
  name IN ('Sweden', 'Norway', 'Denmark');


--Explanation:
--The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Sweden', 'Norway' and 'Denmark'.
