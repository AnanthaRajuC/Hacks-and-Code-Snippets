-- drop schema
DROP SCHEMA
IF EXISTS [schema_name];

-- create schema
CREATE SCHEMA [schema_name];

-- use schema
USE [schema_name];

-- Create user 
create user 'USERNAME'@'IPADDRESS' identified by 'PASSWORD';

-- Grant privileges to user
grant all privileges on *.* to 'USERNAME'@'IPADDRESS' with grant option;

****************************************************************************************

-- Dumping Data Using INSERT statement

SET AUTOCOMMIT=O;

COMMIT;

SET AUTOCOMMIT=1;

****************************************************************************************

-- Insert/Load data into table via shell

mysql -u USERNAME -pPASSWORD

mysql -uUSERNAME -p

show databases;
create database DATABASE_NAME;
use DATABASE_NAME;
SET AUTOCOMMIT=O;
source db_insert_statement.sql;
COMMIT;
SET AUTOCOMMIT=1;

****************************************************************************************

-- Load table from a CSV file to a table

LOAD DATA LOCAL INFILE  
'D:filename.csv'
INTO TABLE your_awesome_table  
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(field_1,field_2 , field_3);

****************************************************************************************         

mysqldump -u USERNAME -p DATABASENAME > /path/to/download/FILENAME.sql

mysqldump -u USERNAME -p DATABASENAME TABLENAME > /path/to/download/FILENAME.sql

mysqldump -u USERNAME -p DATABASENAME TABLENAME --where="actor_id > 195"

-- https://www.sqlshack.com/how-to-backup-and-restore-mysql-databases-using-the-mysqldump-command/
-- https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html#mysqldump-option-examples
-- https://www.percona.com/doc/percona-xtrabackup/LATEST/intro.html

****************************************************************************************   