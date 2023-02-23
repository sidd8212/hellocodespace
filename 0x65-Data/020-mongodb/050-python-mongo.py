# program to connect to mongodb and insert a document
import pymongo
from pymongo import MongoClient
import pandas as pd

client = MongoClient('localhost', 27017)
db = client['test']
collection = db['test']
post = {"author": "Mike", "text": "My first blog post!", "tags": ["mongodb", "python", "pymongo"], "date": "2013-11-10"}
posts = db.posts
post_id = posts.insert_one(post).inserted_id
print(post_id)
print(db.collection_names(include_system_collections=False))
print(posts.find_one())
print(posts.find_one({"author": "Mike"}))

# connect to mongodb and get value in pandas 



client = MongoClient('localhost', 27017)
db = client['test']
collection = db['test']
post = {"author": "Mike", "text": "My first blog post!", "tags": ["mongodb", "python", "pymongo"], "date": "2013-11-10"}
posts = db.posts
post_id = posts.insert_one(post).inserted_id

df = pd.DataFrame(list(posts.find()))
print(df)
# insert dataframe  into mongodb
db.collection.insert_many(df.to_dict('records')) # insert dataframe into mongodb

# insert from datafrmaes into mongodb if values are not present
for index, row in df.iterrows():
    db.collection.update_one({"author": row['author']}, {"$set": row.to_dict()}, upsert=True)






