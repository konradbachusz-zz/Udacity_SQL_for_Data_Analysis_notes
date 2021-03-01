/*Each company in the accounts table wants to create an email address for each primary_poc. The email address should be the first name of the primary_poc . last name primary_poc @ company name .com.*/


SELECT CONCAT(LEFT(primary_poc,POSITION(' ' IN primary_poc)-1),'.',RIGHT(primary_poc,LENGTH(primary_poc)-LENGTH(LEFT(primary_poc,POSITION(' ' IN primary_poc)))),'@',NAME,'.COM') AS EMAIL
FROM ACCOUNTS