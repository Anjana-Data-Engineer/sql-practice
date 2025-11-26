-- Problem:
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
