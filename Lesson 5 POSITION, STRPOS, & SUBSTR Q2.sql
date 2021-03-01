/*Now see if you can do the same thing for every rep name in the sales_reps table. Again provide first and last name columns.*/

SELECT LEFT(NAME,POSITION(' ' IN NAME)) AS first,RIGHT(NAME,LENGTH(NAME)-LENGTH(LEFT(NAME,POSITION(' ' IN NAME)))) AS LAST
FROM sales_reps