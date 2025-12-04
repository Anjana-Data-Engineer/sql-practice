-- Problem:
-- Show all customers and their orders, including customers with no orders.
-- LEFT JOIN OR LEFT OUTER JOIN 


SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;

-- Explanation:
-- LEFT JOIN keeps all customers, even those without matching orders.

-- The LEFT OUTER JOIN returns all records from the left table and matched records from the right table. If there is no match, NULL values are returned for columns from the right table.

SELECT 
  employees.employee_id, 
  employees.employee_name, 
  departments.department_name, 
  employees.salary 
FROM 
  employees 
  LEFT JOIN departments ON employees.department_id = departments.department_id;

-- The following example retrieves all the records from the employees table, even where there are unmatched records. Missing department_name for employees is returned as NULL.
-- LEFT JOIN and LEFT OUTER JOIN are used interchangeably in SQL since both queries fetch all the rows from the left table and the matched rows from the right table.
