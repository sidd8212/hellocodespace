# redis basic commands and configuration
redis-cli -h
redis-cli -p 6379   # connect to redis server
redis-cli -a    # auth  password    # auth to redis server      
redis-cli -n    # select  db    # select db to use      example: redis-cli -n 1         
redis-cli -c    # cluster  subcommand    # cluster subcommand
redis-cli -u    # unixsocket  path    # connect to redis server via unix socket
redis-cli -r    # repeat  count    # repeat execution of previous command
redis-cli -i    # interactive    # enter interactive mode

redis-cli -v    # version    # show redis version
redis-cli -h    # help    # show help

# redist put value  key value   # set key value in redis            
redis-cli set key value                         
# redis get value  key    # get value of key in redis
redis-cli get key
# redis del key  key    # delete key in redis
redis-cli del key
# redis exists key  key    # check if key exists in redis
redis-cli exists key
# redis expire key  key seconds    # set expire time of key in redis
redis-cli expire key seconds
# redis ttl key  key    # get expire time of key in redis
redis-cli ttl key
# redis incr key  key    # increase value of key in redis
redis-cli incr key
# redis decr key  key    # decrease value of key in redis
redis-cli decr key
# redis incrby key  key increment    # increase value of key in redis by increment
redis-cli incrby key increment
# redis decrby key  key decrement    # decrease value of key in redis by decrement
redis-cli decrby key decrement
# redis append key  key value    # append value to key in redis
redis-cli append key value
# redis strlen key  key    # get length of value of key in redis
redis-cli strlen key
# redis setrange key  key offset value    # set value of key in redis starting at offset
redis-cli setrange key offset value
# redis getrange key  key start end    # get value of key in redis starting at start and ending at end
redis-cli getrange key start end
# redis setnx key  key value    # set key value in redis if key does not exist
redis-cli setnx key value
# redis setex key  key seconds value    # set key value in redis with expire time seconds
redis-cli setex key seconds value
# redis mset key value [key value ...]    # set multiple keys to multiple values in redis
redis-cli mset key value [key value ...]

