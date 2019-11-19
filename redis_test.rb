require "redis"

redis = Redis.new
redis.select(0)
if (redis.exists("mykey"))
  puts "Release exists, nothing to do!"
else
  redis.select(1)
  acc = redis.get("mykey")
  puts "Release does not exist, fetching from #{acc}"
  redis.set("mykey", "#{acc}")
  puts redis.get("mykey")
end
