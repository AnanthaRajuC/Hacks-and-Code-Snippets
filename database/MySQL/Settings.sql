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
SHOW GLOBAL VARIABLES LIKE 'local_infile';

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
 