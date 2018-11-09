class TweetsApp

  def call
    puts 'Welcome to Twitter'

    puts 'Enter a username:'
    username = gets.chomp

    puts 'Enter a message:'
    message = gets.chomp

    tweet = Tweet.new({'username' => username, 'message' => message})
    tweet.save # this will save to the database, create && update

    tweets = Tweet.all # load everything from the database
    render(tweets)
  end

  private

  def render(tweets)
    tweets.each.with_index(1) do |tweet, i|
      puts "#{i}. #{tweet.username} says: #{tweet.message}"
    end
  end
end
