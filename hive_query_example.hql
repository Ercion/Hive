-- run hql file --  hive -f hive_query.hql
--CREATE TABLE

CREATE EXTERNAL TABLE IF NOT EXISTS geolocation_test(
truckid STRING,
driverid STRING,
event STRING,
latitude STRING,
longitude STRING,
city STRING,
state STRING,
velocity INT,
event_ind INT,
idling_ind INT)
COMMENT 'Geolocation Knowledge'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/data1';

-- SEE THE TABLE COLUMNS

describe geolocation_test;

-- FETCH THE RECORDS FROM THE TABLE

select * from geolocation_test limit 10;

-- SHOW DBs

show databases;

-- SHOW TABLES

show tables;