from datetime import datetime




# String format example 
stringexample = 'Hello World'
print(stringexample.upper())    
# Boolean example   


# Date 
dateexample = '2019-01-21'  
dateformat = "%Y-%m-%d"
datexp=datetime.strptime(dateexample, dateformat)
dateformatout = "%d-%m-%Y"
print(datetime.strftime(datexp,dateformatout))
