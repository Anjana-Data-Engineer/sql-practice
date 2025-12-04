-- FULL OUTER JOIN
-- The FULL OUTER JOIN combines results from both left and right outer joins. It returns all records from both tables, filling in NULL where no matches exist.

SELECT 
  employees.employee_id, 
  employees.employee_name, 
  departments.department_name, 
  employees.salary 
FROM 
  employees FULL 
  JOIN departments ON employees.department_id = departments.department_id;

-- The query below returns all records for the employees and departments table, even with unmatched rows.

-- Problem:
-- List all products and the orders they appear in,
-- including products with no orders and orders with missing product info.

SELECT
    p.product_id,
    p.product_name,
    o.order_id
FROM products p
FULL OUTER JOIN order_items o
    ON p.product_id = o.product_id;

-- Explanation:
-- FULL OUTER JOIN keeps all rows from both tables.
-- (Note: Some SQL engines don’t support FULL JOIN.)

-- 
