/*We would also like to create an initial password, which they will change after their first log in. The first password will be the first letter of the primary_poc's first name (lowercase), then the last letter of their first name (lowercase), the first letter of their last name (lowercase), the last letter of their last name (lowercase), the number of letters in their first name, the number of letters in their last name, and then the name of the company they are working with, all capitalized with no spaces. */


WITH TAB AS (SELECT LEFT(primary_poc,POSITION(' ' IN primary_poc)) AS first,RIGHT(primary_poc,LENGTH(primary_poc)-LENGTH(LEFT(primary_poc,POSITION(' ' IN primary_poc)))) AS LAST,NAME
FROM ACCOUNTS)



SELECT CONCAT(LOWER(LEFT(FIRST,1)),LOWER(RIGHT(REPLACE(FIRST,' ',''),1)),LOWER(LEFT(LAST,1)),LOWER(RIGHT(REPLACE(LAST,' ',''),1)),LENGTH(REPLACE(FIRST,' ','')),LENGTH(REPLACE(LAST,' ','')),UPPER(REPLACE(NAME,' ',''))) AS PASSWORD
FROM TAB