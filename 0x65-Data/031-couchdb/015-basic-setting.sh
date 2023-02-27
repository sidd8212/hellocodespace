# create users and databases
# couchdb is a database server, it has no users and databases by default
# we need to create users and databases before we can use it
curl -X PUT http://localhost:5984/_users # create the _users database
# ctreate the admin user
curl -X PUT http://localhost:5984/_users/org.couchdb.user:admin -d '{"name":"admin", "password":"admin", "roles":[], "type":"user"}'
# create read only user and database
curl -X PUT http://localhost:5984/_users/org.couchdb.user:readonly -d '{"name":"readonly", "password":"readonly", "roles":[], "type":"user"}'
curl -X PUT http://localhost:5984/mydb -d '{"admins":{"names":["admin"], "roles":[]}, "members":{"names":["readonly"], "roles":[]}}'
# create read write user and database
curl -X PUT http://localhost:5880/_users/org.couchdb.user:readwrite -d '{"name":"readwrite", "password":"readwrite", "roles":[], "type":"user"}'
# give access to the database to the readwrite user
# the database is created with the admin user

curl -X PUT http://localhost:5880/mydb2 -d '{"admins":{"names":["admin"], "roles":[]}, "members":{"names":["readwrite"], "roles":[]}}'
#


curl -X PUT http://localhost:5984/_replicator # create the _replicator database
curl -X PUT http://localhost:5984/_global_changes # create the _global_changes database
curl -X PUT http://localhost:5984/mydb # create the mydb database
curl -X PUT http://localhost:5984/mydb2 # create the mydb2 database
curl -X PUT http://localhost:5984/mydb3 # create the mydb3 database

