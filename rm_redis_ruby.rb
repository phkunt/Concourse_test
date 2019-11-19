 require "redis"
 
 redis = Redis.new
 redis.DEL("mykey")
 puts redis.get("mykey")
