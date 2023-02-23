# jq is used to parse json files
#   jq is a lightweight and flexible command-line JSON processor.
#   jq is like sed for JSON data - you can use it to slice and filter and map and transform structured data with the same ease that sed, awk, grep and friends let you play with text.
#   jq is written in portable C (C99) and has zero runtime dependencies.


# install jq
sudo apt-get install jq
# check jq version
jq --version
# check jq help
jq --help
# get the first element of an array
echo '[1,2,3,4]' | jq '.[0]'
# get the last element of an array
echo '[1,2,3,4]' | jq '.[-1]'
# get the value of a key
echo '{"foo": "bar"}' | jq '.foo'
# get the value of the first key inside the last element of an array
echo '[{"foo": "bar"}]' | jq '.[-1].foo'

# get the value of the first key inside the last element of an array from file output.json
jq '.[-1].foo' output.json

# get the all the occurence of key foo from object of array 
echo '[{"foo": "bar"}, {"foo": "baz"}]' | jq '.[].foo'
# dot notation represents the current object in jq  and the square brackets represent the current array in jq 





