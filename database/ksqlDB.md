##### Basic ksqlDb commands for reference

|                           Command                  |                                     Description                               |
|----------------------------------------------------|-------------------------------------------------------------------------------| 
|`show tables;`							             | list tables			                                                         |
|`show topics;`                                      | list topics                                                                   |
|`SELECT * FROM TABLE_NAME EMIT CHANGES LIMIT 1;`    |                                                                               |
|`CREATE TABLE PERSON (id bigint PRIMARY KEY,uuid VARCHAR,created_date_time TIMESTAMP,last_modified_date_time TIMESTAMP,name VARCHAR,username VARCHAR,address_id bigint) WITH (KAFKA_TOPIC='mysql.streaming_etl_db.person',VALUE_FORMAT='JSON');`||