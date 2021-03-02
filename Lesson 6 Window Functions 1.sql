/*Using Derek's previous video as an example, create another running total. This time, create a running total of standard_amt_usd (in the orders table) over order time with no date truncation. Your final table should have two columns: one with the amount being added for each new row, and a second with the running total.*/

SELECT STANDARD_AMT_USD,SUM(STANDARD_AMT_USD) OVER (ORDER BY OCCURRED_AT) AS RUNNING_TOTAL
FROM ORDERS