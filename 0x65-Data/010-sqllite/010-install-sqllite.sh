# sqllite cli   : sqlite3
# sqllite db    : /var/lib/sqllite3/iot.db
# sqllite table : iot
# sqllite table : iot (id, name, value, time)

# install sqllite
sudo apt-get install sqlite3

# create sqllite db
sqlite3 /var/lib/sqllite3/iot.db

# sqlite3 commands
# .tables # show tables
# .schema # show schema
# .quit

# sqllite3 command line client to query sqllite db
sqlite3 /var/lib/sqllite3/iot.db "SELECT * FROM iot;"
sqlite3 /var/lib/sqllite3/iot.db "SELECT * FROM iot WHERE name='temp';"

# install data from command line 
sudo apt-get install sqlitebrowser

# install data from command line
sudo apt-get install sqlite3

# sqlite cli    : sqlite3
# create sqllite db using cli 

# list all sqllite dbs





# create sqllite table
CREATE TABLE iot (id INTEGER PRIMARY KEY, name TEXT, value TEXT, time TEXT);

# insert data into sqllite table
INSERT INTO iot (name, value, time) VALUES ('temp', '25', '2018-01-01 00:00:00');

# select data from sqllite table
SELECT * FROM iot;

# put the json data into sqllite table




# 

