DQL - Data Query Language - SELECT

-- String Functions
-- Numeric Functions
-- Date Functions
-- Aggregate Functions: operates on all of the data types and produces summarized result sets

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

select SUM(amount) AS total_sales from sakila.payment;
					   
					   
					   
					   
					   