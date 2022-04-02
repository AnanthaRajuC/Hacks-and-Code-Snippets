DDL - Data Definition Language - CREATE, ALTER, DROP, TRUNCATE, RENAME

-- copy/clone just an entire table structure and data 
CREATE TABLE [new_table_new] 
AS SELECT * 
FROM [existing_table_name];

-- copy/clone select columns of a table structure and data
CREATE TABLE [new_table_new] 
AS SELECT [column_one, column_two] 
FROM [existing_table_name];

-- copy/clone table without data
CREATE TABLE [new_table_new] 
LIKE [schema.table_name];

****************************************************************************************

-- create table with Auto Increment Id as Primary key & default current timeStamp column

CREATE TABLE `[table_name]` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='Fruits Table';

****************************************************************************************
                   
-- create table with primary key 
                       
CREATE TABLE `data table` (
  `cust_name` text,
  `username` text,
  `cust_mobile` bigint(20) DEFAULT NULL,
  `cust_email` text,
  `relationship_manager` text,
  `mobile_no` text,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;                       

****************************************************************************************
                       
ALTER TABLE [schema.table_name]
RENAME COLUMN [column_name] TO [column_name];                
                       
ALTER TABLE [schema.table_name]
DROP (column_name);
                       
ALTER TABLE [schema.table_name]
DROP (column1,column2,.....,columnN);

****************************************************************************************           

DROP TABLE [schema.table_name]; -- drop an existing table in a database

DROP DATABASE [database_name];	-- drop an existing SQL database

****************************************************************************************
