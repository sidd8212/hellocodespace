
# mongo getting agreegation 
# https://docs.mongodb.com/manual/reference/operator/aggregation/
db.customers.aggregate([
    {$match: {name: "John"}},
    {$group: {_id: "$name", total: {$sum: "$age"}}}
])

# different agreegation functions   

# $sum
# $avg
# $min
# $max
# $push     # push all the values into an array ex: [1,2,3,4,5] 

# $addToSet # push all the values into an array but only unique values ex: [1,2,3,4,5]
# $first   # return the first value
# $last

