DQL     - Data Query Language - SELECT
DDL     - Data Definition Language - CREATE, ALTER, DROP, TRUNCATE, RENAME
DML     - Data Manipulation Language - INSERT, UPDATE, DELETE
DTL/TCL - Data Transition/Transition Control Language - COMMIT, ROLLBACK, SAVE POINT
DCL     - Data Control Language - GRANT, REVOKE

****************************************************************************************

-- Show tables in a schema
SHOW TABLES;

-- Displays names of the columns in your table or what types they have
DESCRIBE [table_name];

****************************************************************************************

cd /etc/mysql/mysql.conf.d
cat mysqld.cnf