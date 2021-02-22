--Q6 What is the lifetime average amount spent in terms of total_amt_usd, including only the companies that spent more per order, on average, than the average of all orders.

WITH ORDERS_ABOVE_AVERAGE AS (SELECT o.account_id, AVG(o.total_amt_usd) avg_amt
    FROM orders o
    GROUP BY 1
    HAVING AVG(o.total_amt_usd) > (SELECT AVG(o.total_amt_usd) avg_all
                                   FROM orders o))

SELECT AVG(avg_amt)
FROM ORDERS_ABOVE_AVERAGE temp_table;


