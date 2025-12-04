--GROUP BY 
--Using SQL GROUP BY
--GROUP BY is a SQL command commonly used to aggregate the data to get insights from it. There are three phases when you group data:

--Split: the dataset is split up into chunks of rows based on the values of the variables we have chosen for the aggregation
--Apply: Compute an aggregate function, like average, minimum and maximum, returning a single value
--Combine: All these resulting outputs are combined in a unique table. In this way, we’ll have a single value for each modality of the variable of interest.


-- Problem:
-- Count how many orders each customer has placed.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Explanation:
-- GROUP BY groups rows by customer_name so COUNT can summarize orders.

-- Problem 
-- Suppose we want to find the top ten countries with the highest number of Unicorn companies.

SELECT 
  country, 
  COUNT(*) AS n_companies 
FROM 
  companies 
GROUP BY 
  country 
ORDER BY 
  n_companies DESC 
LIMIT 
  10
--SQL GROUP BY Example 2
-- For each order number, we have the type of client, the product line, the quantity, the unit price, the total, etc.
-- This time, we are interested in finding the average price per unit, the total number of orders, and the total gain for each product line:

SELECT 
  product_line, 
  AVG(unit_price) AS avg_price, 
  SUM(quantity) AS tot_pieces, 
  SUM(total) AS total_gain 
FROM 
  sales 
GROUP BY 
  product_line 
ORDER BY 
  total_gain DESC

-- Instead of counting the number of rows, we have the AVG() function to obtain the average price and the SUM() 
-- function to calculate the total number of orders and the total gain for each product line. 

--The Limitations of WHERE
-- Let’s take the previous example again. Now, we want to put a condition to the query: we only want to filter for the total number of orders higher than 40,000. Let's try the WHERE clause:

SELECT 
  product_line, 
  AVG(unit_price) AS avg_price, 
  SUM(quantity) AS tot_pieces, 
  SUM(total) AS total_gain 
FROM 
  sales 
WHERE 
  SUM(total) > 40000 
GROUP BY 
  product_line 
ORDER BY 
  total_gain DESC

--This query will return an  error

-- Using SQL HAVING
-- Like WHERE, the HAVING clause filters the rows of a table. 
-- Whereas WHERE tried to filter the whole table, HAVING filters rows within each of the groups defined by GROUP BY
    
SELECT 
  product_line, 
  AVG(unit_price) AS avg_price, 
  SUM(quantity) AS tot_pieces, 
  SUM(total) AS total_gain 
FROM 
  sales 
GROUP BY 
  product_line 
HAVING 
  SUM(total) > 40000 
ORDER BY 
  total_gain DESC

--SQL HAVING Example 2
-- This time, we are interested in showing the average product carbon footprint (pcf) for each company that belongs to the industry group “Technology Hardware & Equipment.” 
-- Moreover, it would be helpful to see the number of products for each company to understand 
-- if there is some relationship between the number of products and the carbon footprint. We also again use HAVING to extract companies with an average carbon footprint of over 100.

SELECT 
  pe.company, 
  count(product_name) AS n_products, 
  avg(carbon_footprint_pcf) AS avg_carbon_footprint_pcf 
FROM 
  product_emissions AS pe 
WHERE 
  industry_group = 'Technology Hardware & Equipment' 
GROUP BY 
  pe.company, 
  industry_group 
having 
  avg_carbon_footprint_pcf > 100  # Error because of using alias
ORDER BY 
  n_products

-- Alioas name cannot be used in a having class
-- An error appeared after trying to use the alias. For the HAVING clause, the new column’s name doesn’t exist, so it won’t be able to filter the query. Let’s correct the request:

SELECT 
  pe.company, 
  count(product_name) AS n_products, 
  avg(carbon_footprint_pcf) AS avg_carbon_footprint_pcf 
FROM 
  product_emissions AS pe 
WHERE 
  industry_group = 'Technology Hardware & Equipment' 
GROUP BY 
  pe.company, 
  industry_group 
having 
  avg(carbon_footprint_pcf)> 100 
ORDER BY 
  n_products

--SQL Order of Execution
--This is the order of the commands while writing the query:

SELECT
FROM
WHERE
GROUP BY
HAVING


