# require_relative './tweet'

class User
  attr_accessor :username #, :tweets

  # the equivalent of attr_reader :username
  # getter method, it reads
  # def username
  #   @username
  # end

  # * `#initialize`
  # which takes a username
  # and has a reader method for the username
  def initialize(username)
    @username = username
    # @tweets = []
  end

  # * `#tweets`
  # that returns an array of Tweet instances
  def tweets
    # class or instance variable
    # @tweets
    # calculate which tweets i wrote
      # look at every tweet
      # then see which ones I wrote
    Tweet.all.select do |tweet|
      # binding.pry
      tweet.user == self
    end
  end

  # * `#post_tweet`
  # that takes a message,
  def post_tweet(message)
    # creates a new tweet,
    # binding.pry
    my_tweet = Tweet.new(message, self)
    # and adds it to the user's tweet collection
    # @tweets << my_tweet
  end
end
