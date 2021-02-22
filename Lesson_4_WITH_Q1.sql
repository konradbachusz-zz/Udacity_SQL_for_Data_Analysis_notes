--Provide the name of the sales_rep in each region with the largest amount of total_amt_usd sales.

WITH TOTALS_BY_REP AS (
SELECT s.name rep_name, r.name region_name, SUM(o.total_amt_usd) total_amt
             FROM sales_reps s
             JOIN accounts a
             ON a.sales_rep_id = s.id
             JOIN orders o
             ON o.account_id = a.id
             JOIN region r
             ON r.id = s.region_id
             GROUP BY 1, 2),

MAX_TOTALS_BY_REGION AS (
SELECT region_name, MAX(total_amt) total_amt
FROM TOTALS_BY_REP 
GROUP BY 1)

SELECT t3.rep_name, t3.region_name, t3.total_amt
FROM MAX_TOTALS_BY_REGION t2
JOIN TOTALS_BY_REP t3
ON t3.region_name = t2.region_name AND t3.total_amt = t2.total_amt
ORDER BY 3
DESC;

