# basics of pouch db
# https://pouchdb.com/guides/overview.html

# install pouch db
npm install pouchdb

# create a pouch db instance
var PouchDB = require('pouchdb');
var db = new PouchDB('mydb');

# create a document
db.put({
  _id: 'mydoc',
  title: 'PouchDB',
  _rev: '1-xxx'
}).then(function (response) {
  // handle response
}).catch(function (err) {
  console.log(err);
});

# get a document
db.get('mydoc').then(function (doc) {
  // handle doc
}).catch(function (err) {
  console.log(err);
});

# update a document - 
db.put({
  _id: 'mydoc',
  _rev: '1-xxx',
  title: 'PouchDB',
  "description": "PouchDB is an open-source ..well within the browser."
}).then(function (response) {
    // handle response
    }).catch(function (err) {
    console.log(err);
    });

# puch db use by python 
# https://pouchdb.com/2014/05/01/secondary-indexes-have-landed-in-pouchdb.html

# install pouchdb
pip install PouchDB

# use pouchdb in python
import PouchDB
db = PouchDB('mydb')

# create a document
db.put({
  '_id': 'mydoc',
  'title': 'PouchDB',
  '_rev': '1-xxx'
}).then(function (response) {
  // handle response
}).catch(function (err) {
  console.log(err);
});

# get a document
db.get('mydoc').then(function (doc) {
  // handle doc
}).catch(function (err) {
  console.log(err);
});

# pouch db in browser and access it 

# create a pouch db instance
var PouchDB = require('pouchdb');
var db = new PouchDB('mydb');

# create a document
db.put({
  _id: 'mydoc',
  title: 'PouchDB',
  _rev: '1-xxx'
}).then(function (response) {
  // handle response
}).catch(function (err) {
  console.log(err);
});



