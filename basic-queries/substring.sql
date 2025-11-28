--MySQL SUBSTR() Function
--The SUBSTR() function extracts a substring from a string (starting at any position).

--Syntax:

SUBSTR(string, start, length)
  
SELECT SUBSTR(CustomerName, 2, 5) AS ExtractString
FROM Customers;

--Extract a substring from the text in a column (start at position 2, extract 5 characters):
