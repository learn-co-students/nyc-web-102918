class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  # The Artist class needs a class method .all that lists each artist in the class variable
  def self.all
    @@all
  end

                #string  #instance #instance
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end
end
