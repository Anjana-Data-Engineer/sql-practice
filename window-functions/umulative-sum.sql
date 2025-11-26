-- Problem:
-- Calculate running total of sales amount by order date.

SELECT
    order_date,
    amount,
    SUM(amount) OVER (
        ORDER BY order_date
    ) AS running_total
FROM sales;

-- Explanation:
-- SUM() OVER creates a cumulative running total.
