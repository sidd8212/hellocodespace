# mysql create database
# mysql -u root -p
# mysql> create database mydb;
# create new database user     
# 

# mysql json data type
# https://dev.mysql.com/doc/refman/5.7/en/json.html
# https://dev.mysql.com/doc/refman/5.7/en/json-modification-functions.html
# https://dev.mysql.com/doc/refman/5.7/en/json-search-functions.html

# create table json_test (id int, json_data json);

# insert into json_test values (1, '{"name":"John", "age":30, "city":"New York"}');
# insert into json_test values (2, '{"name":"Peter", "age":40, "city":"Paris"}');

# search json data
# select * from json_test where json_data->"$.name" = "John";
# select * from json_test where json_data->"$.age" > 30;

# select group by json data
# select json_data->"$.city" as city, count(*) as count from json_test group by json_data->"$.city";
# select json_data->"$.city" as city, count(*) as count from json_test group by json_data->"$.city" having count(*) > 1;

# update json data
# update json_test set json_data = json_set(json_data, "$.age", 31) where json_data->"$.name" = "John";

# delete json data
# update json_test set json_data = json_remove(json_data, "$.age") where json_data->"$.name" = "John";
# delete json data
