# create the docker image for mysql

# run the docker image for mysql
# with the mounted volume and default user and password
# and the port 3306 exposed

mkdir -p  /apps/mysql

docker run -d -p 7306:3306 -v /apps/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root --restart=always mysql    

# instal mysql client on the machine
apt-get install mysql-client
# connect to mysql server 
mysql -h 127.0.0.1 -P 3306 -u root -p




