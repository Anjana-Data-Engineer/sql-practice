-- Problem:
-- List all orders along with the customer name who placed each order.

SELECT
    o.order_id,
    o.order_date,
    c.customer_name
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;

-- Explanation:
-- INNER JOIN returns rows with matching customer_id in both tables.

-- INNER JOIN returns only the matching rows between tables based on a common column, 
-- excluding non-matching rows. For example, the query below shows orders with customer details only when there is a match.
-- An INNER JOIN retrieves only the rows with a match in both tables based on the specified condition. 

SELECT 
  o.OrderID, 
  c.CustomerName 
FROM 
  Orders o 
  INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

---


