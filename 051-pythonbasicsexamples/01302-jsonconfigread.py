import json as json 
# read the json file
def readjsonfile():
    # read the json file
    with open('000-resources/datafiles/jsonfile-config.json','r') as json_file:
        # read the json object
        data = json.load(json_file)               
        # close the json file
        json_file.close()
        return data

jsondata=readjsonfile()
# beautify the json object
print(json.dumps(jsondata, sort_keys=True, indent=4))
# get the specific values from the json object
print(jsondata['configEntities']['gatewaySettings']['port'])
