# install the postgresql client
apt-get install postgresql-client
# connect to the postgresql server
psql -h localhost -p 7432 -U sidd
# create a database
create database test;
# create a user
create user test with password 'test';
# grant all privileges to the user
grant all privileges on database test to test;
# connect to the database
\c test
# create a table
create table test (id serial primary key, name varchar(20));
# insert a record
insert into test (name) values ('test');
# select the records
select * from test;
# update the records
update test set name = 'test1' where id = 1;
# delete the records
delete from test where id = 1;
# drop the table
drop table test;
# drop the database
drop database test;
# drop the user
drop user test;
# exit the psql
\q