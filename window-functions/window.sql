--Syntax :
-- Windows can be defined in the SELECT section of the query.

SELECT
    window_function() OVER(
         PARTITION BY partition_expression
         ORDER BY order_expression
         window_frame_extent
    ) AS window_column_alias
    FROM table_name

-- To reuse the same window with several window functions, define a named window using the WINDOW keyword. 
-- This appears in the query after the HAVING section and before the ORDER BY section.

   SELECT
    window_function() OVER(window_name)
    FROM table_name
    [HAVING ...]
    WINDOW window_name AS (
         PARTITION BY partition_expression
         ORDER BY order_expression
         window_frame_extent
    )
    [ORDER BY ...]

--Example : 

/* Rank price from LOW->HIGH */
SELECT 
  production.products.product_id, 
  production.products.list_price, 
  RANK() OVER(
    ORDER BY 
      production.products.list_price asc
  ) product_rank 
FROM 
  production.products;
