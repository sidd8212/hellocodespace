# installing the docker container for postgresql
# expose the port 5432 to the host machine  -p 5432:5432
# mount the volume to the host machine -v /var/lib/postgresql/data:/var/lib/postgresql/data
# set the user and password -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres
# set the name of the container --name postgresql
# set it to always restart --restart=always 

mkdir -p /apps/postgresql/data
chown -R 999:999 /apps/postgresql/data # 999 is the default user id for postgresql

docker run --name postgresql -e POSTGRES_USER=sidd -e POSTGRES_PASSWORD=kanchan -d -p 7432:5432 -v /apps/postgresql/data:/var/lib/postgresql/data --restart=always postgres

# basic alternate command to run the postgresql docker container
docker run --name postgresql -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres


