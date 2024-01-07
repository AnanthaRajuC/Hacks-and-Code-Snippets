#### ClickHouse

~~~sql

SHOW DATABASES

CREATE DATABASE my_db

CREATE DATABASE IF NOT EXISTS my_db 
ENGINE = Replicated 
COMMENT 'My first database'

CREATE DATABASE training

SHOW CREATE DATABASE training

DROP DATABASE training

CREATE TABLE my_db.hits (
   id UInt32,
   timestamp DateTime,
   url String,
   size Nullable(Float),
   params Array(String),
   event FixedString(4)
)
ENGINE = ReplicatedMergeTree
ORDER BY (timestamp, id)
COMMENT 'My table for storing hits'


CREATE TABLE hits_today AS my_db.hits

SELECT create_table_query
FROM system.tables
WHERE name = 'hits_today'

SELECT *
FROM s3(
   'https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz',
   'TSV'
)
LIMIT 100
SETTINGS input_format_try_infer_datetimes=0

DESCRIBE TABLE s3('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz', 'TSV')

DESCRIBE TABLE s3('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz', 'TSV')
SETTINGS input_format_try_infer_datetimes = 0

SELECT *
FROM s3(
   'https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz',
   'TSV',
   'id UInt64,
    url String,
    timestamp DateTime64
   '
)
LIMIT 10


CREATE TABLE hits (
   id UInt64,
   url String,
   timestamp DateTime64
)
PRIMARY KEY (id, timestamp)

INSERT INTO hits 
SELECT *
FROM s3(
   'https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz',
   'TSV',
   'id UInt64,
    url String,
    timestamp DateTime64
   '
)

SELECT COUNT()
FROM hits


CREATE TABLE ch_table
AS 
   SELECT * 
   FROM mysql(
      `mysqlhost:3306`, 
      'mysql_database', 
      'mysql_table', 
      'user', 
      'password'
)


CREATE TABLE one_million 
AS numbers(1000000) 


SELECT count()
FROM one_million


SELECT number
FROM one_million
LIMIT 10


CREATE TABLE daily_totals (
   user_id UInt32,
   day Date,
   metric1_sum UInt64,
   metric1_count UInt32,
   metric2_sum UInt64,
   metric2_count UInt32
)
ENGINE = SummingMergeTree
PARTITION BY day
ORDER BY (day, user_id)


CREATE TABLE logs_raw (
   message String
)
ENGINE = Null


CREATE TABLE hits_on_S3 (
   id UInt64,
   url String,
   timestamp DateTime64
)
Engine = S3(
   'https://datasets-documentation.s3.eu-west-3.amazonaws.com/hits/hits.tsv.gz',
   'TSV'
)

SELECT * 
FROM file(
   '{x,y}_dir/file_{1..3}', 
   'TSV', 
   'name String, value UInt32'
)

SELECT * 
FROM 
   url('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hackernews/clickhouse_hacker_news.csv',
  'CSVWithNames')
LIMIT 100;

DESCRIBE 
   url('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hackernews/clickhouse_hacker_news.csv',
  'CSVWithNames');


SELECT 
   count() AS count,
   by
 FROM  
   url('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hackernews/clickhouse_hacker_news.csv',
  'CSVWithNames')
GROUP BY by
ORDER BY count DESC;



CREATE TABLE hackernews (

   id UInt32,

   by String,

   time DateTime,

   text String

)

ORDER BY (by, time);



INSERT INTO hackernews

   SELECT id, by, time, toString(text) 

   FROM    

      url('https://datasets-documentation.s3.eu-west-3.amazonaws.com/hackernews/clickhouse_hacker_news.csv',

          'CSVWithNames');






SELECT * FROM system.data_type_families


CREATE TABLE null_vs_default (
   id1 UInt32,
   id2 Nullable(UInt32),
   url_1 String,
   url_2 Nullable(String)
)
ORDER BY tuple()

INSERT INTO null_vs_default (id1, id2) VALUES (1,2)
INSERT INTO null_vs_default (url_1, url_2) VALUES ('just','testing')



SELECT toDecimal128(9.123456789, 12)
SELECT toDecimal128(9.123456789, 5)

CREATE TABLE items_for_sale
(
    id UInt32,
    description String,
    rating Float32,
    quantity_in_stock Int32,
    quantity_sold UInt16,
    current_price Decimal64(2),
    sale_price Decimal64(2)
) 
ORDER BY id


INSERT INTO items_for_sale VALUES
   (1, 'baseball', 4.2, 100, 5000, 6.50, 5.25)
   (2, 'bicycle', 3.99, -3, 21, 599.99, 559.99)
   (3, 'just testing', 4.6666666, 0.0, -10, 5.99999, 4.555555)


CREATE TABLE string_demo 
(
   city String,
   state FixedString(2)
)
ORDER BY tuple()

INSERT INTO string_demo VALUES
   ('Albany', 'NY'),
   ('Salem', 'OR'),
   ('Just testing', 'X')

SELECT *
FROM string_demo


INSERT INTO string_demo VALUES
   ('Just testing', 'XYZ')

SELECT *
FROM system.data_type_families
WHERE alias_to = 'String'



CREATE TABLE date_demo 
(
   a Date,
   b Date32,
   c DateTime('US/Mountain'),
   d DateTime64(3, 'Europe/London')
)
ORDER BY tuple()

INSERT INTO date_demo VALUES
(1667181600, '2022-10-31', '2022-10-31 09:45:27', '2022-10-31 09:45:27.123')


SELECT *
FROM date_demo

┌──────────a─┬──────────b─┬───────────────────c─┬───────────────────────d─┐
│ 2022-10-31 │ 2022-10-31 │ 2022-10-31 09:45:27 │ 2022-10-31 09:45:27.123 │
└────────────┴────────────┴─────────────────────┴─────────────────────────┘



CREATE TABLE enum_demo
(
   device_id UInt32,
   device_type Enum('server' = 1, 'container' = 2, 'router' = 3)
)
ORDER BY tuple()

INSERT INTO enum_demo VALUES 
   (123, 'router'),
   (456, 'container')


SELECT *
FROM enum_demo
WHERE device_type = 'container'





CREATE TABLE lowcardinality_demo
(
   x UInt64,
   y LowCardinality(String)
)
ORDER BY x


INSERT INTO lowcardinality_demo
   SELECT 
      number AS x, 
      randomPrintableASCII(1) AS y
   FROM numbers(10000000)


SELECT count()
FROM lowcardinality_demo
WHERE y = 'A'



SELECT * 
FROM s3(
   'https://learn-clickhouse.s3.us-east-2.amazonaws.com/crypto_raw.csv.gz',
   'CSVWithNames'
)
LIMIT 100;



SELECT *
FROM s3(
   'https://learn-clickhouse.s3.us-east-2.amazonaws.com/crypto_raw.csv.gz',
   'CSVWithNames'
)





SELECT *
FROM s3(
   'https://learn-clickhouse.s3.us-east-2.amazonaws.com/crypto_raw.csv.gz',
   'CSVWithNames'
)
SETTINGS input_format_allow_errors_num=100;



SELECT *
FROM s3(
   'https://learn-clickhouse.s3.us-east-2.amazonaws.com/crypto_raw.csv.gz',
   'CSVWithNames'
)
LIMIT 50000
SETTINGS schema_inference_hints='volume Float32, market_cap Float32';



CREATE TABLE crypto_raw (

    trade_date Date,

    volume Float32,

    price_usd Float32,

    price_btc Float32,

    market_cap Float32,

    capitalization_change_1_day Float32,

    USD_price_change_1_day Float32,

    BTC_price_change_1_day Float32,

    crypto_name LowCardinality(String),

    crypto_type Nullable(UInt8),

    ticker LowCardinality(String),

    max_supply Float32,

    site_url LowCardinality(String),

    github_url LowCardinality(String),

    minable UInt8,

    platform_name LowCardinality(String),

    industry_name LowCardinality(String)

)

PRIMARY KEY (crypto_name, trade_date);



INSERT INTO crypto_raw 

   SELECT *

   FROM s3(

      'https://learn-clickhouse.s3.us-east-2.amazonaws.com/crypto_raw.csv.gz',

      'CSVWithNames'

   )

   SETTINGS schema_inference_hints='volume Float32, market_cap Float32';





SELECT count() FROM crypto_raw;

SELECT 
   crypto_name,
   max(price_usd) AS m,
   max(price_btc)
FROM crypto_raw
GROUP BY crypto_name
ORDER BY m DESC;




SELECT 
   platform_name,
   uniq(crypto_name) AS count
FROM crypto_raw
WHERE platform_name != ''
GROUP BY platform_name
ORDER BY count DESC;



SELECT 
   crypto_name,
   count() AS count
FROM crypto_raw
WHERE USD_price_change_1_day < 0
AND crypto_name != ''
GROUP BY crypto_name
ORDER BY count DESC;



SELECT 
   crypto_name,
   count() AS count
FROM crypto_raw
WHERE USD_price_change_1_day < -0.5
AND crypto_name != ''
GROUP BY crypto_name
ORDER BY count DESC;



CREATE TABLE items_sold
(
    id           UInt32,
    price        Float,
    quantity     UInt32,
    sellDate     Date
) 
ENGINE = MergeTree 
ORDER BY id
PARTITION BY toYYYYMMDD(sellDate)






DESC crypto_prices;







EXPLAIN indexes = 1
SELECT 
   URL, 
   count(URL) as total
FROM hits
WHERE UserID = 3731416266
GROUP BY URL
ORDER BY total DESC
LIMIT 10


SELECT
   uniq(URL)
FROM hits
~~~
