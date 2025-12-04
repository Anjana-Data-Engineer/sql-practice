-- RIGHT OUTER JOIN (RIGHT JOIN)
-- The RIGHT OUTER JOIN returns all records from the right table and matched records from the left table. Unmatched rows in the left table return NULL.

SELECT 
  employees.employee_id, 
  employees.employee_name, 
  departments.department_name, 
  employees.salary 
FROM 
  employees 
  RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- The query below returns all records from the departments table, even where there are no matching employees.
