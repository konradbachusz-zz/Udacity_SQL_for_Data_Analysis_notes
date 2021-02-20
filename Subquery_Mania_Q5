--Q5 What is the lifetime average amount spent in terms of total_amt_usd for the top 10 total spending accounts?

WITH TOP_10 AS(
    SELECT ACCOUNT_ID, SUM(total_amt_usd) AS total_amt_usd
    FROM ORDERS
    GROUP BY ACCOUNT_ID
    ORDER BY 2 DESC
    LIMIT 10
)

SELECT AVG(total_amt_usd)
FROM TOP_10
