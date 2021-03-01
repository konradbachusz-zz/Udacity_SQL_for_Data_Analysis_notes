/*In the accounts table, there is a column holding the website for each company. 
The last three digits specify what type of web address they are using. 
A list of extensions (and pricing) is provided here. 
Pull these extensions and provide how many of each website type exist in the accounts table.*/

WITH EXTENSIONS AS(SELECT right(WEBSITE, 4) AS extension
FROM accounts)

select extension, COUNT(extension)
FROM EXTENSIONS
GROUP BY 1
