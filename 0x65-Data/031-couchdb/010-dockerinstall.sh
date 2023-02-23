# docker install couchdb 
docker pull couchdb:latest  # pull the latest couchdb image
docker run -d -p 5984:5984 --name couchdb couchdb:latest  # run the image as a container
docker ps  # check the container is running
docker exec -it couchdb bash  # enter the container
curl http://localhost:5984  # check the couchdb is running
exit  # exit the container
docker stop couchdb  # stop the container
docker rm couchdb  # remove the container
docker rmi couchdb:latest  # remove the image
