SELECT user,authentication_string,plugin,host FROM mysql.user;

-- List all the users;
SELECT * FROM mysql.user;

-- Reset password;
UPDATE mysql.user SET Password=PASSWORD('[password]') WHERE User='[username]';

****************************************************************************************

-- Retrieve MySQL Version & other details

SELECT VERSION();

SHOW VARIABLES LIKE "%version%";

****************************************************************************************
                       
-- Server Status Variables 
-- https://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html
  
-- the number of active connections                       
show status 
where `variable_name` = 'Threads_connected';      
                       
-- aggregate values over all connections  
SHOW GLOBAL STATUS;
                       
-- aggregate values for the current connection
SHOW SESSION STATUS;                       
                       
-- show processlist
show processlist;    

****************************************************************************************
 
SELECT SYSDATE();

****************************************************************************************
 