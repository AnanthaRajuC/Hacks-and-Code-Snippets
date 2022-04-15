-- LINUX
-- MySQL Database server configuration file
/etc/mysql/mysql.conf.d/mysqld.cnf
/etc/mysql/mysql.conf.d/mysql.cnf

which mysql

systemctl stop mysql.service
systemctl start mysql.service

service mysql restart

journalctl
journalctl -f -u mysql.service

****************************************************************************************

SELECT * FROM INFORMATION_SCHEMA.RESOURCE_GROUPS;

-- See the create table 
show create table [schema.table_name];

-- Explain a table
explain [schema.table_name];

desc [schema.table_name];

-- display the running cost before executing queries
explain select * from [schema.table_name];

-- display the running cost before executing queries
explain FORMAT=JSON select * from [schema.table_name];

-- refresh the statistics that MySQL uses to make decisions on the use of indexes
analyze table [schema.table_name];

-- List Unused indexes
select * from sys.schema_unused_indexes;

SHOW COLUMNS FROM [schema.table_name];

RENAME TABLE [schema.table_name_old] TO [schema.table_name_new];

-- show tables starting with inv
SHOW TABLES LIKE 'inv%';

****************************************************************************************
free -h
****************************************************************************************



SHOW PRIVILEGES;

-- grant tables

-- User accounts, static global privileges, and other nonprivilege columns.
mysql.user

-- Dynamic global privileges.
mysql.global_grants 

-- Database-level privileges.
mysql.db 

-- Table-level privileges.
mysql.tables_priv

-- Column-level privileges.
mysql.columns_priv 

-- Stored procedure and function privileges.
mysql.procs_priv 

-- Proxy-user privileges.
mysql.proxies_priv

-- Default user roles.
mysql.default_roles

-- Edges for role subgraphs.
mysql.role_edges

-- Password change history.
mysql.password_history

****************************************************************************************

-- list the character sets available on the server
SHOW CHARACTER SET;

-- list the collation orders and the character sets they apply to
SHOW COLLATION;

SHOW VARIABLES LIKE 'c%';
SHOW TABLES FROM mysql LIKE '%priv';

SHOW WARNINGS;

****************************************************************************************

USE mysql;
SELECT Host, Db FROM db;
EXPLAIN SELECT Host, Db FROM db;
EXPLAIN SELECT HOST, count(Db) FROM db GROUP BY Host;

****************************************************************************************

ALTER TABLE [schema.table_name]
ADD INDEX (column_name1),
ADD INDEX (column_name2);

ALTER TABLE [schema.table_name] ADD INDEX (column_name1);

****************************************************************************************

-- when we grant some privileges for a user, running the command flush privileges will 
-- reload the grant tables in the mysql database enabling the changes to take effect without 
-- reloading or restarting mysql service.

FLUSH PRIVILEGES;

-- The command closes all tables which are currently open or in use. 
-- And clears cache which intern make better utilization on available memory.

FLUSH TABLES;

-- The command uses host cache tables, if maximum number of connections has been reached 
-- for a particular host, mysql server will not able to make new connections. 
-- flushing host tables resets the process and again allows the connections for particular HOST.

FLUSH HOSTS;

-- The command closes and reopens all log files, if log files are too big and taking more 
-- time to load then you can run the command which will create an empty log file.

****************************************************************************************

FLUSH LOGS;

****************************************************************************************

-- Retrieve MySQL Version & other details

SELECT VERSION();

SHOW VARIABLES LIKE "%version%";
SHOW VARIABLES LIKE "secure_file_priv";
SHOW VARIABLES LIKE 'have_query_cache';
SHOW VARIABLES LIKE 'query_cache_size';
show VARIABLES like '%group%';

SHOW GLOBAL STATUS LIKE 'Connections';
SHOW GLOBAL STATUS LIKE 'Threads_created';
SHOW GLOBAL STATUS LIKE 'Max_used_connections';

SET global local_infile=true;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'validate_password%';
SET GLOBAL validate_password.length = 4;
SET GLOBAL validate_password.policy = LOW;
SET foreign_key_checks=0;

select * from mysql.plugin;

select @@datadir;
select @@lower_case_table_names;

****************************************************************************************
                       
-- Server Status Variables 
-- https://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html
  
-- the number of active connections                       
SHOW status 
WHERE `variable_name` = 'Threads_connected';      
                       
-- aggregate values over all connections  
SHOW GLOBAL STATUS;
                       
-- aggregate values for the current connection
SHOW SESSION STATUS;                       
                       
-- show processlist
SHOW processlist;    

****************************************************************************************
 
SELECT SYSDATE();

****************************************************************************************
 