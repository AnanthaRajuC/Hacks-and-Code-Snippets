#### ClickHouse

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

---  

~~~shell
cd /var/lib/clickhouse/user_files/


clickhouse local -q "SELECT * FROM
mysql(
'127.0.0.1:3306',
'sakila',
'actor',
'root',
'root'
)
INTO OUTFILE 'actor.parquet'"


clickhouse-client --password root --user default

DESCRIBE TABLE file('actor.parquet',Parquet);

select * from file('actor.parquet',Parquet) LIMIT 3;

use sakila;

CREATE TABLE actor
ENGINE = MergeTree
ORDER BY tuple() AS
SELECT *
FROM file('actor.parquet', Parquet);
~~~