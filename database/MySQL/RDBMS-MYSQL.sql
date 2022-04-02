DQL - Data Query Language - SELECT
DDL - Data Definition Language - CREATE, ALTER, DROP, TRUNCATE, RENAME
DML - Data Manipulation Language - INSERT, UPDATE, DELETE
DTL/TCL - Data Transition/Transition Control Language - COMMIT, ROLLBACK, SAVE POINT
DCL - Data Control Language - GRANT, REVOKE

****************************************************************************************

-- Show tables in a schema
SHOW TABLES;

-- Displays names of the columns in your table or what types they have
DESCRIBE [table_name];

****************************************************************************************

-- when we grant some privileges for a user, running the command flush privileges will reloads the grant tables in the mysql database enabling the changes to take effect without reloading or restarting mysql service.
FLUSH PRIVILEGES;

-- The command closes all tables which are currently open or in use. And clears cache which intern make better utilization on available memory.
FLUSH TABLES;

-- The command uses host cache tables, if maximum number of connections has been reached for a particular host, mysql server will not able to make new connections. flushing host tables resets the process and again allows the connections for particular HOST.
FLUSH HOSTS;

-- The command closes and reopens all log files, if log files are to big and taking more time to load then you can run the command which will create an empty log file.
FLUSH LOGS;

****************************************************************************************

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