import couchdb
import json
import datetime
import random
import pandas as pd

# create couch db
def create_couchdb():
    couch = couchdb.Server('http://localhost:5984/')
    couch.resource.credentials = ('admin', 'admin')
    db_name = 'couchdb'
    if db_name in couch:
        db = couch[db_name]
    else:
        db = couch.create(db_name)
    return db
# insert data
def insert_data(db):
    # create data
    data = {}
    data['timestamp'] = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    data['value'] = random.randint(0, 100)
    # insert data
    db.save(data)
    print('insert data: %s' % data)
# pandas operations on couchdb
def pandas_operations(db):
    # get the data in pandas dataframe
    df = pd.DataFrame([doc for doc in db])
    print(df)
    # get the data in json format
    data = json.dumps([doc for doc in db])
    print(data)
    # get the data in csv format
    df.to_csv('data.csv', index=False)
    # get the data in excel format
    df.to_excel('data.xlsx', index=False)
    
    # insert df to couchdb
    for index, row in df.iterrows():
        db.save(row.to_dict())
        
    # get the data in pandas dataframe
    df = pd.DataFrame([doc for doc in db])
    print(df)
# main
def main():
    # create couch db
    db = create_couchdb()
    # insert data
    insert_data(db)
    # pandas operations on couchdb
    pandas_operations(db)


# main

if __name__ == '__main__':
    main()
