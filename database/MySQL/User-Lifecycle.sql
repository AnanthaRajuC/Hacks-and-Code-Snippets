CREATE ROLE application_rw;
GRANT ALL ON sakila.* TO application_rw;

CREATE ROLE application_ro;
GRANT SELECT ON sakila.* TO application_ro;
GRANT application_ro TO 'USERNAME'@'IPADDRESS';
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS';
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS' USING `application_ro`;

****************************************************************************************

-- check the privileges that have been allowed to a role
SHOW GRANTS FOR 'USERNAME'@'IPADDRESS';

SELECT * FROM mysql.user WHERE user = 'root';

SELECT user,authentication_string,plugin,host FROM mysql.user;

-- List all the users;
SELECT * FROM mysql.user;

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

-- Reset password;
UPDATE mysql.user SET Password=PASSWORD('[password]') WHERE User='[username]';

****************************************************************************************

-- Locking and unlocking a user

ALTER USER 'USERNAME'@'IPADDRESS' ACCOUNT LOCK;

ALTER USER 'USERNAME'@'IPADDRESS' ACCOUNT UNLOCK;

****************************************************************************************

-- Instead of blocking off the user’s access completely, or changing the password for them, 
-- you may instead want to force them to change their password.

ALTER USER 'USERNAME'@'IPADDRESS' PASSWORD EXPIRE;

****************************************************************************************

-- Dropping the User
DROP USER IF EXISTS 'USERNAME'@'IPADDRESS';

****************************************************************************************

-- Rename user
RENAME USER 'USERNAME_OLD'@'IPADDRESS_OLD' TO 'USERNAME_NEW'@'IPADDRESS_NEW';

****************************************************************************************

SELECT EVENT_SCHEMA AS obj_schema
    , EVENT_NAME obj_name
    , 'EVENT' AS obj_type
FROM INFORMATION_SCHEMA.EVENTS
WHERE DEFINER = 'USERNAME@localhost'
UNION
SELECT ROUTINE_SCHEMA AS obj_schema
    , ROUTINE_NAME AS obj_name
    , ROUTINE_TYPE AS obj_type
FROM INFORMATION_SCHEMA.ROUTINES
WHERE DEFINER = 'USERNAME@localhost'
UNION
SELECT TRIGGER_SCHEMA AS obj_schema
    , TRIGGER_NAME AS obj_name
    , 'TRIGGER' AS obj_type
FROM INFORMATION_SCHEMA.TRIGGERS
WHERE DEFINER = 'USERNAME@localhost'
UNION
SELECT TABLE_SCHEMA AS obj_scmea
    , TABLE_NAME AS obj_name
    , 'VIEW' AS obj_type
FROM INFORMATION_SCHEMA.VIEWS
WHERE DEFINER = 'USERNAME@localhost';

****************************************************************************************

