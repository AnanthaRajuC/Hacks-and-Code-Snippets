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
show databases;
create database DATABASE_NAME;
use DATABASE_NAME;
source db_insert_statement.sql;

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
