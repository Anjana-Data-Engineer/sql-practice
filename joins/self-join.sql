-- Problem:
-- Show employees and their managers using a self-join.

SELECT
    e.employee_id,
    e.employee_name,
    m.employee_name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.employee_id;

-- Explanation:
-- The employees table is joined with itself to map employees to managers.
