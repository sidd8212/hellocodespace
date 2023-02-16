
# mangodb basic crud application
# show dbs (show databases)
show dbs
# show collections (show tables)
show collections
# show current database
db

# create a database
use mydb
# create a data model for a collection  (table)
db.createCollection("customers")
# insert a document into the collection
db.customers.insertOne({name: "John", age: 25})
# insert multiple documents into the collection
db.customers.insertMany([{name: "Peter", age: 19}, {name: "Amy", age: 35}])
# find a document in the collection
db.customers.findOne()

# find all documents in the collection
db.customers.find()
# find all documents in the collection and return only the name field
db.customers.find({}, {name: 1})
# find all documents in the collection and return only the name and age fields
db.customers.find({}, {name: 1, age: 1})
# find all documents in the collection and return only the name and age fields and exclude the _id field
db.customers.find({}, {name: 1, age: 1, _id: 0})
# find all documents in the collection and return only the name and age fields and exclude the _id field and sort the result by name (1) and age (-1)
db.customers.find({}, {name: 1, age: 1, _id: 0}).sort({name: 1, age: -1})
# find all documents in the collection and return only the name and age fields and exclude the _id field and sort the result by name (1) and age (-1) and limit the result to 2 documents
db.customers.find({}, {name: 1, age: 1, _id: 0}).sort({name: 1, age: -1}).limit(2)
# find all documents in the collection and return only the name and age fields and exclude the _id field and sort the result by name (1) and age (-1) and limit the result to 2 documents and skip the first 2 documents
db.customers.find({}, {name: 1, age: 1, _id: 0}).sort({name: 1, age: -1}).limit(2).skip(2)

# update a document in the collection
db.customers.updateOne({name: "John"}, {$set: {age: 26}})
# update multiple documents in the collection
db.customers.updateMany({}, {$set: {status: "active"}})
# delete a document in the collection
db.customers.deleteOne({name: "John"})
# delete multiple documents in the collection
db.customers.deleteMany({status: "active"})
# drop a collection
db.customers.drop()
# drop a database
db.dropDatabase()


