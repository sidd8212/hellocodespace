
# compose the airflow image name
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.4.1/docker-compose.yaml'
# docker compose is used to run multiple containers at once (see https://docs.docker.com/compose/)
# example: docker-compose up -d # start all containers in the background and print the container names
docker-compose pull
docker-compose up -d
docker-compose ps
docker-compose down
# docker-compose down -v # remove volumes as well (e.g. to remove the database) 



