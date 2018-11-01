class User
  attr_reader :username #, :tweets

  def initialize(usernmae)
    @username = username
    # @tweets = [] # this is what we ended up removing
  end

  def post_tweet(message)
    Tweet.new(message, self)
    # we don't want to keep track of tweets as it would duplicate data
    # @tweets << my_tweet
  end

  def tweets
    # @tweets # this then became the below select; we calculate
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

end
