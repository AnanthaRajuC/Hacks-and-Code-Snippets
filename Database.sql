****************************************************************************************

-- select largest value of a column

SELECT MAX(column_name)
FROM [schema.table_name];

-- select smallest value of a column

SELECT MIN(column_name)
FROM [schema.table_name];

-- Find the average value of a column

SELECT AVG(column_name)
FROM [schema.table_name];

-- Select distinct values of a column from a table

SELECT DISTINCT [column_name]
FROM [schema.table_name];

-- Get count of distinct values of a column from a table

SELECT COUNT(DISTINCT [column_name])
FROM [schema.table_name];

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

-- copy/clone just an entire table structure and data 

CREATE TABLE [new_table_new] 
AS SELECT * FROM [existing_table_name];

-- copy/clone select columns of a table structure and data

CREATE TABLE [new_table_new] 
AS SELECT [column_one, column_two] FROM [existing_table_name];

-- copy/clone table without data

CREATE TABLE [new_table_new] 
LIKE [schema.table_name];

-- copy all data from one table to another

INSERT INTO [existing_table] 
SELECT * FROM [schema.table_name];

****************************************************************************************

-- update records

UPDATE [schema.table_name]
SET [column_one] = 'value_one', [column_two] = 'value_two'
WHERE [condition]; -- ex: CustomerID = 1;

-- Delete Records 

DELETE FROM [schema.table_name]
WHERE [condition]; -- ex: CustomerName='Alfreds Futterkiste';

-- DELETE First N Records 

DELETE FROM [schema.table_name] ORDER BY <field> ASC limit N

-- DELETE Last N Records

DELETE FROM [schema.table_name] ORDER BY <field> DESC limit 100

****************************************************************************************

DROP TABLE [schema.table_name]; -- drop an existing table in a database
DROP DATABASE [database_name];	-- drop an existing SQL database

****************************************************************************************

/*This is
a multi-line
comment*/

SELECT CustomerName, /*City,*/ Country FROM Customers; -- In-line comment

****************************************************************************************

-- Update a column value, replacing part of a string

UPDATE [schema.table_name]
SET [column_name] = REPLACE(column_name, 'original_text_part', 'new_text_part');

****************************************************************************************

LOAD DATA LOCAL INFILE  
'D:filename.csv'
INTO TABLE your_awesome_table  
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(field_1,field_2 , field_3);

****************************************************************************************

SELECT SYSDATE();

