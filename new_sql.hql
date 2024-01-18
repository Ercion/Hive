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