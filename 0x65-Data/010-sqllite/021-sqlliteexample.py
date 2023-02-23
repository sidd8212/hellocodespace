# sqllite example with python
import sqlite3
import pandas as pd
conn = sqlite3.connect('example.db')
c = conn.cursor()
# Create table
c.execute('''CREATE TABLE stocks   ''')
# Insert a row of data
c.execute("INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',100,35.14)")
# Save (commit) the changes
conn.commit()
# We can also close the connection if we are done with it.
# Just be sure any changes have been committed or they will be lost.
conn.close()

# get the data in pandas dataframe


conn = sqlite3.connect('example.db')
df = pd.read_sql_query("SELECT * FROM stocks", conn)
print(df)

# store pandas dataframe in sqllite database
df.to_sql('stocks', conn, if_exists='replace')
# store pandas dataframe in sqllite database if not present already
df.to_sql('stocks', conn, if_exists='append') 
df.to_sql('stocks', conn, if_exists='fail')
