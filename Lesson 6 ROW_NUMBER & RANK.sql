/*Ranking Total Paper Ordered by Account

Select the id, account_id, and total variable from the orders table, then create a column called total_rank that ranks this total amount of paper ordered (from highest to lowest) for each account using a partition. Your final table should have these four columns.*/

SELECT ID, account_id,TOTAL,
RANK() OVER (partition BY account_id ORDER BY TOTAL DESC) AS total_rank
FROM ORDERS
