# Hive
This repository contains useful Hive example


load data inpath command is use to load data into hive table. 'LOCAL' signifies that the input file is on the local file system. If 'LOCAL' is omitted then it looks for the file in HDFS.

load data inpath '/directory-path/file.csv' into <mytable>; 
load data local inpath '/local-directory-path/file.csv' into <mytable>;
LOCATION keyword allow to points to any HDFS location for its storage, rather than being stored in a folder specified by the configuration property hive.metastore.warehouse.dir.

In other words, with specified LOCATION '/your-path/', Hive does not use a default location for this table. This comes in handy if you already have data generated.

Remember, LOCATION can be specify on EXTERNAL tables only. For regular tables, default location will be used.

To summarize, load data inpath tell hive where to look for input files and LOCATION keyword tells hive where to save output files on HDFS.



Option 1: Internal table

create table <mytable> 
(name string,
number double);

load data inpath '/directory-path/file.csv' into <mytable>; 
This command will remove content at source directory and create a internal table

Option 2: External table

 create table <mytable>
 (name string,
 number double);

location '/directory-path/file.csv';
Create external table and copy the data into table. Now data won't be moved from source. You can drop external table but still source data is available.

When you drop an external table, it only drops the meta data of HIVE table. Data still exists at HDFS file location.
