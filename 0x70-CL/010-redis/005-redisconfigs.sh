# redis config get dir
# redis config get dbfilename
# redis config persist  # save redis data to disk
# redis config get save
# redis config set save 900 1 300 10 60 10000   
# save redis data to disk every 900 seconds if there is at least 1 key changed, every 300 seconds if there is at least 10 keys changed, every 60 seconds if there is at least 10000 keys changed