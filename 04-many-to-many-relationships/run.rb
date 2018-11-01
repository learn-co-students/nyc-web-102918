require 'pry'
require_relative './tweet.rb'
require_relative './user.rb'

# Yesterday's test data.
u1 = User.new("Mike")
t1 = Tweet.new("coffee", u1)
u1.post_tweet("cold brew")
u1.post_tweet("death before decaf!")
u1.post_tweet("happy coffee")

binding.pry

puts "meow"
