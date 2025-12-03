-- Problem:
-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
-- The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.
-- Note: Print NULL when there are no more names corresponding to an occupation.

SELECT
  MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
  MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
  MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
  MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
  SELECT
    Name,
    Occupation,
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
  FROM OCCUPATIONS
) AS x
GROUP BY rn
ORDER BY rn;

------

-- Pivot the occupations into 4 fixed columns:
-- Doctor, Professor, Singer, Actor
-- Sort names alphabetically inside each occupation
-- Align them by row number
-- Print NULL where no name exists
--We use MAX() because:
--It works correctly on strings
--It simply picks the only non-NULL value
--It is safe and deterministic
--MySQL requires an aggregate function when grouping non–GROUP BY columns
