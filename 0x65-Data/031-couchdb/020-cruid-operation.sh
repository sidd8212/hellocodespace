# cruid on couchdb 
# run the create database as the admin user
curl -X PUT http://localhost:5880/testdb01 -u sidd:kanchan
# create a database
curl -X PUT http://localhost:5880/testdb01

# create the user database
curl -X PUT http://localhost:5880/_users -u sidd:kanchan
# create a user 
curl -X PUT http://localhost:5880/_users/org.couchdb.user:readwrite -d '{"name":"readwrite", "password":"readwrite", "roles":[], "type":"user"}' -u sidd:kanchan

# grant access to the user to the database new user 
curl 
curl -X PUT http://localhost:5880/testdb01/_security -d '{"admins":{"names":["admin"], "roles":[]}, "members":{"names":["readwrite"], "roles":[]}}' -u sidd:kanchan


# create a document
uniqueid=date +%s-%N
curl -X PUT http://localhost:5880/testdb01/`date +%s-%N` -d '{"name":"John", "age":30, "city":"New York"}'

# query the database get all the documents in the database
curl http://localhost:5880/testdb01/_all_docs

# query the database get all the documents in the database view only field name and age
curl http://localhost:5880/testdb01/_all_docs?include_docs=true

# query the database get all the documents in the database view only field name and age
curl http://localhost:5880/testdb01/_all_docs?include_docs=true&fields=["name","age"]

# get all the docs where code exists in the database
curl http://localhost:5880/testdb01/_all_docs?include_docs=true&key="code"
# read a document
curl http://localhost:5880/testdb01/testdoc01
# update a document
curl -X PUT http://localhost:5984/mydb/mydoc -d '{"name":"John", "age":31, "city":"New York"}'
# delete a document
curl -X DELETE http://localhost:5984/mydb/mydoc
# delete a database
curl -X DELETE http://localhost:5984/mydb
#   
# Path: 0x65-DA/031-couchdb/030-cruid-operation.sh
