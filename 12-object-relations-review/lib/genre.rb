class Genre
  attr_accessor :name

  @@all = []

  # The Artist class needs a class method .all that lists each artist in the class variable
  def self.all
    @@all
  end

  # g1.average ==> average age of artists for that genre
  def average
    total = self.artists.inject(0){|sum, artist| sum + artist.age }
    # binding.pry
    how_many = self.artists.count
    # total age / how many ages
    total / how_many.to_f # if you're not sure, leave a comment
    # whole number / whole number == truncating
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  # The Genre class needs an instance method, #songs,
  # that iterates through all songs and finds the songs
  # that belong to that genre.
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  # The Genre class needs an instance method,
  # #artists,
  # that iterates over the genre's collection of songs
  # and collects the artist
  # that owns each song.
  def artists
    self.songs.map do |song| # map == collect  # my songs
      song.artist
    end
  end
end
