// java script program to connect to mongodb and insert data
// cruid example 

var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
// insert data
MongoClient.connect(url, function(err, db) {
    if (err) throw err;
    var dbo = db.db("mydb");
    var myobj = { name: "Company Inc", address: "Highway 37" };
    dbo.collection("customers").insertOne(myobj, function(err, res) {
        if (err) throw err;
        console.log("1 document inserted");
        db.close();
    });
    });
// find data
MongoClient.connect(url, function(err, db) {
    if (err) throw err;
    var dbo = db.db("mydb");
    dbo.collection("customers").findOne({}, function(err, result) {
        if (err) throw err;
        console.log(result.name);
        db.close();
    });
    }
);
// update data
MongoClient.connect(url, function(err, db) {
    if (err) throw err;
    var dbo = db.db("mydb");
    var myquery = { address: "Valley 345" };
    var newvalues = { $set: {name: "Mickey", address: "Canyon 123" } };
    dbo.collection("customers").updateOne(myquery, newvalues, function(err, res) {
        if (err) throw err;
        console.log("1 document updated");
        db.close();
    });
    }
);
// delete data
MongoClient.connect(url, function(err, db) {
     if (err) throw err;
        var dbo = db.db("mydb");
        var myquery = { address: 'Mountain 21' };
        dbo.collection("customers").deleteOne(myquery, function(err, obj) {
        if (err) throw err;
        console.log("1 document deleted");
        db.close();
    });
    }
);
// sort data

