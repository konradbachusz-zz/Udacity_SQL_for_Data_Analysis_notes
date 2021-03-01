/*You may have noticed that in the previous solution some of the company names include spaces, which will certainly not work in an email address. See if you can create an email address that will work by removing all of the spaces in the account name, but otherwise your solution should be just as in question 1.*/



SELECT CONCAT(LEFT(primary_poc,POSITION(' ' IN primary_poc)-1),'.',RIGHT(primary_poc,LENGTH(primary_poc)-LENGTH(LEFT(primary_poc,POSITION(' ' IN primary_poc)))),'@',REPLACE(NAME,' ',''),'.COM') AS EMAIL
FROM ACCOUNTS