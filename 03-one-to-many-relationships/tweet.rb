class Tweet
  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user

    @@all << self
  end
  # * `Tweet#message`
  # that returns a string
  # def message
  #   @message
  # end

  # * `Tweet#user` that returns an instance of the user class
  # def user
  #   @user
  # end

  # * `Tweet.all` that returns all the Tweets created.
  # the . tells you it's a class method
  # class methods start with self.<methodname>
  def self.all
    @@all
  end

  # * `Tweet#username` that returns the username of the tweet's user
  def username
    # this @user will always be an instance of a User
    @user.username
  end

  def delete
    # deleting
  end
end
