# spark to connect to mongodb 

# https://spark.apache.org/docs/latest/sql-data-sources-mongodb.html
spark-shell --packages org.mongodb.spark:mongo-spark-connector_2.11:2.4.1   

# spark to connect to mongodb
# get the data from mongodb and save it as a dataframe
val df = spark.read.format("com.mongodb.spark.sql.DefaultSource").option("uri", "mongodb://" + mongoHost + ":" + mongoPort + "/mydb.customers").load()  

# show the dataframe
df.show()
# show the dataframe schema
df.printSchema()
# show the dataframe columns
df.columns
# create a temp view
df.createOrReplaceTempView("customers")
# run a query
spark.sql("SELECT * FROM customers").show()
# run a query       
spark.sql("SELECT * FROM customers WHERE age > 30").show()
# run query for updates and deletes
spark.sql("UPDATE customers SET age = 50 WHERE age = 40")
spark.sql("DELETE FROM customers WHERE age = 50")


# save df to mongodb    
df.write.format("com.mongodb.spark.sql.DefaultSource").option("uri", "mongodb://" + mongoHost + ":" + mongoPort + "/mydb.customers").mode("append").save()



