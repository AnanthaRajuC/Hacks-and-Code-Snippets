DQL - Data Query Language - SELECT

SELECT * FROM CUSTOMERS WHERE NAME LIKE 'Ko%';

SELECT * FROM CUSTOMERS WHERE AGE >= 25 AND SALARY >= 6500;

SELECT * FROM CUSTOMERS WHERE AGE >= 25 OR SALARY >= 6500;

-- The BETWEEN operator is used to search for values that are within a set of values, 
-- given the minimum value and the maximum value.
SELECT * FROM CUSTOMERS WHERE AGE BETWEEN 25 AND 27;

SELECT * FROM CUSTOMERS WHERE AGE IS NOT NULL;

SELECT * FROM CUSTOMERS WHERE AGE IN ( 25, 27 );

****************************************************************************************

-- The EXISTS operator is used to search for the presence of a row in a specified table
-- that meets a certain criterion.
SELECT AGE FROM CUSTOMERS WHERE EXISTS (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);

-- The ALL operator is used to compare a value to all values in another value set.
SELECT * FROM CUSTOMERS WHERE AGE > ALL (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);

-- The ANY operator is used to compare a value to any applicable value in the list 
-- as per the condition.
SELECT * FROM CUSTOMERS WHERE AGE > ANY (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);

****************************************************************************************

-- SQL Comparison Operators

=	-- Checks if the values of two operands are equal or not, if yes then condition becomes true.
!=	-- Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.
<>	-- Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.
>	-- Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.
<	-- Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.
>=	-- Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.
<=	-- Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.
!<	-- Checks if the value of left operand is not less than the value of right operand, if yes then condition becomes true.	
!>	-- Checks if the value of left operand is not greater than the value of right operand, if yes then condition becomes true.

****************************************************************************************















