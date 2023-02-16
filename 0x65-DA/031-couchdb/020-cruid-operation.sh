# cruid on couchdb 
# create a database
curl -X PUT http://localhost:5984/mydb
# create a document
curl -X PUT http://localhost:5984/mydb/mydoc -d '{"name":"John", "age":30, "city":"New York"}'
# read a document
curl http://localhost:5984/mydb/mydoc
# update a document
curl -X PUT http://localhost:5984/mydb/mydoc -d '{"name":"John", "age":31, "city":"New York"}'
# delete a document
curl -X DELETE http://localhost:5984/mydb/mydoc
# delete a database
curl -X DELETE http://localhost:5984/mydb
#   
# Path: 0x65-DA/031-couchdb/030-cruid-operation.sh
