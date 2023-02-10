# create the json file
import json
import logging as logging 
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("debug.log"),
        logging.StreamHandler()
    ]
)
# create the json file
def createjsonfile():
    logging.info("**** starting createjsonfile")

    # create the json file
    with open('000-resources/datafiles/jsonfile.json', 'w') as json_file:
        # create the json object
        json.dump({'name': 'John', 'age': 30}, json_file)
        # close the json file
        json_file.close()
# read the json file
def readjsonfile():
    # read the json file
    with open('000-resources/datafiles/jsonfile.json','r') as json_file:
        # read the json object
        data = json.load(json_file)
        
        # print the json object
        print(data)
        
        # close the json file
        json_file.close()
        return data
# append the json file
def appendjsonfile():
    data = readjsonfile()
        # print the json object
    print(data)
    print(type(data))
    # append the json file
    with open('000-resources/datafiles/jsonfile.json','w') as json_file:
        # read the json object
        
        data.append({'name': 'Johnx', 'age': 33})

        print(type(data))
        # append the json object

        # close the json file
        json_file.close()
#call createjsonfile()
createjsonfile()
#call readjsonfile()
readjsonfile()
appendjsonfile()
#readjsonfile()


