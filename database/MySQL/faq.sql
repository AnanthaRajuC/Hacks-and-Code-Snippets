SET SQL_SAFE_UPDATES = 0;

ALTER TABLE vendors
ADD COLUMN phone VARCHAR(15) AFTER name;

UPDATE your_table
SET    your_column = NULL
WHERE  some_id = 1;

-- update a column with derived value from another column in mysql
UPDATE test t1, test t2 
SET t1.date_custom = SUBSTRING_INDEX(t2.dt," " ,1)
WHERE t1.id = t2.id

-- change the data type for a column in MySQL?
ALTER TABLE tablename MODIFY columnname INTEGER;

SELECT 
     table_schema as `Database`, 
     table_name AS `Table`, 
     round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB` 
FROM information_schema.TABLES 
WHERE table_schema = "my_database"
AND table_name in
('my_table')
ORDER BY (data_length + index_length) DESC;








