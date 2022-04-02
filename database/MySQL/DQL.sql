DQL - Data Query Language - SELECT

****************************************************************************************

SELECT NOW() FROM DUAL;
-- 2006-07-01 10:02:41 

SELECT SYSDATE() FROM DUAL;
-- 2006-07-01 10:03:21 

SELECT CURRENT_TIMESTAMP() FROM DUAL;
-- 2006-07-01 10:04:03 

SELECT LOCALTIME() FROM DUAL;
-- 2006-07-01 10:07:37 

SELECT LOCALTIMESTAMP() FROM DUAL;
-- 2006-07-01 10:08:08 

SELECT UTC_TIMESTAMP() FROM DUAL;
-- 2006-07-01 14:09:49 

SELECT UTC_TIME() FROM DUAL;
-- 14:09:22 

SELECT CURRENT_TIME() FROM DUAL;
-- 10:02:58

****************************************************************************************

-- select records from table where columns contain null
					   
SELECT [column_name]
FROM [schema.table_name]
WHERE [column_name] IS NULL;

-- select records from table where columns does not contain null
					   
SELECT [column_name]
FROM [schema.table_name]
WHERE [column_name] IS NOT NULL;

****************************************************************************************

-- specify multiple values in a WHERE clause
					   
SELECT [column_name]
FROM [schema.table_name]
WHERE [column_name] IN ('value_one', 'value_two');

SELECT [column_name]
FROM [schema.table_name]
WHERE [column_name] NOT IN ('value_one', 'value_two');

****************************************************************************************

-- sort result set in ascending order
					   
SELECT [column_name]
FROM [schema.table_name]
ORDER BY [column_name] ASC;

-- sort result set in descending order
					   
SELECT [column_name]
FROM [schema.table_name]
ORDER BY [column_name] DESC;

****************************************************************************************

-- search for rows not containing a sub-string
					   
SELECT [column_name]
FROM [schema.table_name] 
WHERE [column_name] 
NOT LIKE "%substring%";

-- search for rows containing a sub-string
					   
SELECT * 
FROM [schema.table_name]
WHERE [column_name] 
LIKE "%substring%";

WHERE [column_name] LIKE 'a%'		-- Finds any values that starts with "a"
WHERE [column_name] LIKE '%a'		-- Finds any values that ends with "a"
WHERE [column_name] LIKE '%or%'		-- Finds any values that have "or" in any position
WHERE [column_name] LIKE '_r%'		-- Finds any values that have "r" in the second position
WHERE [column_name] LIKE 'a_%_%'	-- Finds any values that starts with "a" and are at least 3 characters in length
WHERE [column_name] LIKE 'a%o'		-- Finds any values that starts with "a" and ends with "o"

****************************************************************************************

/*This is
a multi-line
comment*/

SELECT CustomerName, /*City,*/ Country FROM Customers; -- In-line comment

****************************************************************************************

-- Check for Duplicates based on 1 Column & get the count of duplicates

SELECT 
[column_name], COUNT([column_name])
FROM
[schema.table_name]
GROUP BY [column_name]
HAVING COUNT([column_name]) > N; -- N is the number of times the record is occuring

-- Check for Duplicates based on multiple Columns & get the count of duplicates

SELECT [column_name1], [column_name2], COUNT([column_name1]), COUNT([column_name2]) 
FROM myusers.user
GROUP BY [column_name1], [column_name2]
HAVING count(*) > 1;

****************************************************************************************

-- column_name is datetime
					   
SELECT * 
FROM [schema.table_name] 
WHERE date(column_name) = SUBDATE(curdate(),1);       
                       
****************************************************************************************                  
