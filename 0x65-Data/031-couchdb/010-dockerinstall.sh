# docker install couchdb 
docker pull couchdb:latest  # pull the latest couchdb image
docker run -d -p 5880:5984  -e COUCHDB_USER=sidd -e COUCHDB_PASSWORD=kanchan --name couchdb couchdb:latest  # run the image as a container
# couchdb data file is stored in /opt/couchdb/data
# map the data file to the host in docker images 

docker ps  # check the container is running
docker exec -it couchdb bash  # enter the container
curl http://localhost:5880  # check the couchdb is running
exit  # exit the container
docker stop couchdb  # stop the container
docker rm couchdb  # remove the container
docker rmi couchdb:latest  # remove the image
