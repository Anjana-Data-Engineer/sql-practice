-- Coalesce function:
-- The COALESCE() function in SQL returns the first non-null value from a list of expressions. 
-- If all values are null, it returns null. 
-- It’s commonly used to handle missing values or combine multiple columns into one fallback output.

--Syntax of COALESCE()

COALESCE(value_1, value_2, ...., value_n)

--Example 1: Replacing null with a constant

SELECT
   country_id,
   name, 
   national_day,
   COALESCE(national_day, 'Unknown') AS national_day_coalesced
FROM countries
ORDER BY country_id

-- Example 2: Choosing between two columns
  
SELECT DISTINCT
   product_name,
   description,
   COALESCE(
      CASE WHEN 
         LENGTH(description) >= 60 
         THEN NULL 
         ELSE description 
         END, 
      product_name) product_name_or_description
FROM products

-- Example 3: Fallback logic with multiple columns

SELECT DISTINCT
   product_name,
   description,
   COALESCE(
      CASE 
         WHEN LENGTH(description) > 50
         THEN NULL
         ELSE description
      END,
   CASE 
      WHEN LENGTH(product_name) > 14
      THEN NULL
      ELSE product_name
   END,
'product') AS product_name_or_description
FROM products
ORDER BY product_name
