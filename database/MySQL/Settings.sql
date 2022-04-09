
-- check the privileges that have been allowed to a role
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS';

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

SELECT * FROM mysql.user WHERE user = 'root';

****************************************************************************************

-- authentication plugins --
-- caching_sha2_password
-- mysql_native_password
SELECT plugin FROM mysql.user WHERE user = 'USERNAME' AND host = 'IPADDRESS';

-- modify the authentication plugin used
ALTER USER 'USERNAME'@'IPADDRESS' IDENTIFIED WITH mysql_native_password;

****************************************************************************************

-- Changing user’s password

ALTER USER 'USERNAME'@'IPADDRESS' IDENTIFIED by 'new password';

SET PASSWORD FOR 'USERNAME'@'IPADDRESS' = 'new password';

****************************************************************************************

-- Locking and unlocking a user

ALTER USER 'USERNAME'@'IPADDRESS' ACCOUNT LOCK;

ALTER USER 'USERNAME'@'IPADDRESS' ACCOUNT UNLOCK;

****************************************************************************************

mysql -uUSERNAME -p

****************************************************************************************

-- Instead of blocking off the user’s access completely, or changing the password for them, you may instead want to force them to change their password.
ALTER USER 'USERNAME'@'IPADDRESS' PASSWORD EXPIRE;

****************************************************************************************

-- Dropping the User
DROP USER IF EXISTS 'USERNAME'@'IPADDRESS';

****************************************************************************************

RENAME USER 'USERNAME_OLD'@'IPADDRESS_OLD' TO 'USERNAME_NEW'@'IPADDRESS_NEW';

****************************************************************************************
mysqldump -u USERNAME -p DATABASENAME > /path/to/download/FILENAME.sql

mysqldump -u USERNAME -p DATABASENAME TABLENAME > /path/to/download/FILENAME.sql

mysqldump -u USERNAME -p DATABASENAME TABLENAME --where="actor_id > 195"

-- https://www.sqlshack.com/how-to-backup-and-restore-mysql-databases-using-the-mysqldump-command/
-- https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html#mysqldump-option-examples
-- https://www.percona.com/doc/percona-xtrabackup/LATEST/intro.html

free -h
****************************************************************************************

SELECT EVENT_SCHEMA AS obj_schema
    , EVENT_NAME obj_name
    , 'EVENT' AS obj_type
FROM INFORMATION_SCHEMA.EVENTS
WHERE DEFINER = 'bob@localhost'
UNION
SELECT ROUTINE_SCHEMA AS obj_schema
    , ROUTINE_NAME AS obj_name
    , ROUTINE_TYPE AS obj_type
FROM INFORMATION_SCHEMA.ROUTINES
WHERE DEFINER = 'bob@localhost'
UNION
SELECT TRIGGER_SCHEMA AS obj_schema
    , TRIGGER_NAME AS obj_name
    , 'TRIGGER' AS obj_type
FROM INFORMATION_SCHEMA.TRIGGERS
WHERE DEFINER = 'bob@localhost'
UNION
SELECT TABLE_SCHEMA AS obj_scmea
    , TABLE_NAME AS obj_name
    , 'VIEW' AS obj_type
FROM INFORMATION_SCHEMA.VIEWS
WHERE DEFINER = 'bob@localhost';

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
CREATE ROLE application_rw;
GRANT ALL ON sakila.* TO application_rw;

CREATE ROLE application_ro;
GRANT SELECT ON sakila.* TO application_ro;
GRANT application_ro TO 'USERNAME'@'IPADDRESS';
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS';
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS' USING `application_ro`;
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

SELECT user,authentication_string,plugin,host FROM mysql.user;

-- List all the users;
SELECT * FROM mysql.user;

-- Reset password;
UPDATE mysql.user SET Password=PASSWORD('[password]') WHERE User='[username]';

****************************************************************************************

-- Retrieve MySQL Version & other details

SELECT VERSION();

SHOW VARIABLES LIKE "%version%";
SHOW VARIABLES LIKE "secure_file_priv";
SHOW VARIABLES LIKE 'have_query_cache';
SHOW VARIABLES LIKE 'query_cache_size';
show variables like '%group%';

SHOW GLOBAL VARIABLES LIKE 'local_infile';

select * from mysql.plugin;


SHOW GLOBAL STATUS LIKE 'Connections';
SHOW GLOBAL STATUS LIKE 'Threads_created';
SHOW GLOBAL STATUS LIKE 'Max_used_connections';

SET global local_infile=true;

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
 