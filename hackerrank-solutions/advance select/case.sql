--This file contains solution for advance sql queries in hacker rank
--CASE
--The CASE statement goes through conditions and return a value when the first condition is met (like an IF-THEN-ELSE statement). 
--So, once a condition is true, it will stop reading and return the result.
--If no conditions are true, it will return the value in the ELSE clause.
--If there is no ELSE part and no conditions are true, it returns NULL.
--Syntax

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

SELECT 
  CASE WHEN A + B <= C 
  OR B + C <= A 
  OR A + C <= B THEN 'Not A Triangle' WHEN A = B 
  AND B = C THEN 'Equilateral' WHEN A = B 
  or B = C 
  OR A = C THEN 'Isosceles' else 'Scalene' END AS triangle_type 
FROM 
  TRIANGLES;

--Why this works
--Step 1 — Check invalid triangle
--Invalid must be detected before anything else.
--Step 2 — Check Equilateral
--Must come before Isosceles.
--Step 3 — Check Isosceles
--Must come after Equilateral.
--Step 4 — Default is Scalene

