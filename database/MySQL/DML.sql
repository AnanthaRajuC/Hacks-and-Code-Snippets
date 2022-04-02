DML - Data Manipulation Language - INSERT, UPDATE, DELETE

-- copy all data from one table to another
INSERT INTO [existing_table] 
SELECT * FROM [schema.table_name];

****************************************************************************************

-- update records
UPDATE [schema.table_name]
SET [column_one] = 'value_one', [column_two] = 'value_two'
WHERE [condition]; -- ex: CustomerID = 1;
                       
-- Update a column value, replacing part of a string
UPDATE [schema.table_name]
SET [column_name] = REPLACE(column_name, 'original_text_part', 'new_text_part');  
                       
****************************************************************************************
                       
-- Delete Records 
DELETE FROM [schema.table_name]
WHERE [condition]; -- ex: CustomerName='Alfreds Futterkiste';

-- DELETE First N Records 
DELETE FROM [schema.table_name] ORDER BY <field> ASC limit N

-- DELETE Last N Records
DELETE FROM [schema.table_name] ORDER BY <field> DESC limit 100

****************************************************************************************