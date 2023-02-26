SELECT
	* ,
	creditLimit + 2000 as new_credit
FROM customers
ORDER BY new_credit DESC;

