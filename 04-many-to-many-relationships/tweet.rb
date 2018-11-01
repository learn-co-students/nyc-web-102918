class Tweet
  attr_reader :message, :user

  @@all = []

                # String, User instance
  def initialize(message, user)
    @message = message
    @user = user

    # update the user's tweets
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    @user.username
  end
end
#
# class Song
#   attr_reader :title
# end
#
# class Artist
#   attr_reader :name, songs
# end
