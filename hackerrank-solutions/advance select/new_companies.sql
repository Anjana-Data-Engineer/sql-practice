--Problem:
-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, 
-- total number of senior managers, total number of managers, and total number of employees. 
-- Order your output by ascending company_code.

-- Note:
-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

SELECT 
  c.company_code, 
  founder, 
  count(distinct lm.lead_manager_code) as lead_manager_counts, 
  count(distinct sm.senior_manager_code) as senior_manager_counts, 
  count(distinct m.manager_code) asmanager_counts, 
  count(distinct e.employee_code) as employee_counts 
FROM 
  Company c 
  LEFT JOIN Lead_Manager lm on c.company_code = lm.company_code 
  LEFT JOIN Senior_Manager sm on lm.company_code = sm.company_code 
  LEFT JOIN Manager m on sm.company_code = m.company_code 
  LEFT JOIN Employee e on e.company_code = m.company_code 
group by 
  c.company_code, founder 
ORDER by 
  c.company_code

--We joined with company_code because:

--✔ All tables have company_code
--✔ We only need counts per company
--✔ No need to follow full hierarchy LM→SM→M→E

--We used LEFT JOIN because:

--✔ We must keep all companies in output
--✔ Missing records should count as zero
--✔ INNER JOIN would eliminate companies
