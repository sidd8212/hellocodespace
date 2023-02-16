# mongodb search with and condition 
db.customers.find({$and: [{name: "John"}, {age: 25}]})
# mongodb search with or condition
db.customers.find({$or: [{name: "John"}, {age: 25}]})
# mongodb search with not condition
db.customers.find({name: {$ne: "John"}})
# mongodb search with greater than condition
db.customers.find({age: {$gt: 25}})
# mongodb search with greater than or equal to condition
db.customers.find({age: {$gte: 25}})
# mongodb search with less than condition
db.customers.find({age: {$lt: 25}})
# mongodb search with less than or equal to condition
db.customers.find({age: {$lte: 25}})
# mongodb search with in condition
db.customers.find({age: {$in: [25, 35]}})
# mongodb search with not in condition
db.customers.find({age: {$nin: [25, 35]}})
# mongodb search with regex condition
db.customers.find({name: {$regex: "^J"}})
# mongodb search with exists condition
db.customers.find({name: {$exists: true}})
# mongodb search with type condition
db.customers.find({age: {$type: "int"}})
# mongodb search with size condition
db.customers.find({name: {$size: 4}})
# mongodb search with all condition
db.customers.find({name: {$all: ["J", "o", "h", "n"]}})
# mongodb search with elemMatch condition
db.customers.find({name: {$elemMatch: {$regex: "^J"}}})
# mongodb search with mod condition
db.customers.find({age: {$mod: [5, 0]}})
# mongodb search with text condition
db.customers.find({$text: {$search: "John"}})
# mongodb search with where condition

