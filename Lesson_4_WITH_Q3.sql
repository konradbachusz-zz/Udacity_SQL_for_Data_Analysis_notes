--Q3 How many accounts had more total purchases than the account name which has bought the most standard_qty paper throughout their lifetime as a customer? 



WITH HIGHEST_standard_qty AS(
SELECT a.name act_name, SUM(o.standard_qty) tot_std, SUM(o.total) total
                         FROM accounts a
                         JOIN orders o
                         ON o.account_id = a.id
                         GROUP BY 1
                         ORDER BY 2 DESC
                         LIMIT 1),

ACCOUNTS_2 AS (SELECT a.name
       FROM orders o
       JOIN accounts a
       ON a.id = o.account_id
       GROUP BY 1
       HAVING SUM(o.total) > (SELECT total 
                   FROM HIGHEST_standard_qty inner_tab))

SELECT COUNT(*)
FROM ACCOUNTS_2 counter_tab;
