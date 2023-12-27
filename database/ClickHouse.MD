#### ClickHouse

cat /etc/clickhouse-server/config.xml  

clickhouse-client --password  

select name, value,changed,description from system.settings where name = 'allow_experimental_database_materialized_mysql'  

SELECT *
FROM system.settings
WHERE name LIKE '%min_i%'  




select name, value,changed,description from system.settings where name = 'allow_experimental_database_materialized_mysql'  

SET allow_experimental_database_materialized_mysql=1  


Reference: https://clickhouse.com/docs/knowledgebase/mysql-to-parquet-csv-json#export-mysql-to-csv

~~~sql
-- Export MySQL to JSON - jsonl or ndjson
clickhouse local -q "SELECT * FROM
   mysql(
    '127.0.0.1:3306',
    'sakila',
    'film',
    'root',
    'root'
)
INTO OUTFILE 'my_output_file.ndjson'"
~~~

~~~sql
-- Export MySQL to CSV
clickhouse local -q "SELECT * FROM
   mysql(
    '127.0.0.1:3306',
    'sakila',
    'film',
    'root',
    'root'
)
INTO OUTFILE 'my_output_file.csv'"
~~~

~~~sql
-- Export MySQL to Parquet
clickhouse local -q "SELECT * FROM
   mysql(
    '127.0.0.1:3306',
    'sakila',
    'film',
    'root',
    'root'
)
INTO OUTFILE 'my_output_file.parquet'"
~~~


