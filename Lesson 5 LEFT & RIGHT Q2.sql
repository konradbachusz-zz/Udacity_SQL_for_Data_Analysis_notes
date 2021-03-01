/*There is much debate about how much the name (or even the first letter of a company name) matters. Use the accounts table to pull the first letter of each company name to see the distribution of company names that begin with each letter (or number).*/
WITH LETTERS AS (SELECT LEFT(NAME,1) AS LETTER
FROM ACCOUNTS)

SELECT LETTER, COUNT(LETTER)
FROM LETTERS
GROUP BY 1
ORDER BY 2
DESC


