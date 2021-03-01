/*Use the accounts table to create first and last name columns that hold the first and last names for the primary_poc.*/


SELECT LEFT(primary_poc,POSITION(' ' IN primary_poc)) AS first,RIGHT(primary_poc,LENGTH(primary_poc)-LENGTH(LEFT(primary_poc,POSITION(' ' IN primary_poc)))) AS LAST
FROM ACCOUNTS