/*In the following SQL Explorer, write a query with FULL OUTER JOIN to fit the above described Parch & Posey scenario (selecting all of the columns in both of the relevant tables, accounts and sales_reps) */

SELECT *
FROM accounts a
FULL OUTER JOIN sales_reps s 
ON a.sales_rep_id = s.id

