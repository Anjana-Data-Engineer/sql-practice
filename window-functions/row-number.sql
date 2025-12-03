-- Problem:
-- ROW_NUMBER() is a window function that assigns a sequential number to rows within each partition, 
-- in the order defined by the ORDER BY inside the OVER(...) clause. The PARTITION BY is optional—if you omit it, the entire result set is treated as a single partition.
--It creates a window and assigns row number to them
-- Assign a row number to each order for every customer,
-- ordered by order date.

SELECT
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS order_sequence
FROM orders;

-- Explanation:
-- PARTITION BY splits rows by customer, ordering them within each group.
