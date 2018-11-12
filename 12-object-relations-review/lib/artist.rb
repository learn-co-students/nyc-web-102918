# READ THE README!!!!!! DON'T CODE!!!!!!
# LOOK AT THE FILES!!! FOR HINTS!!!
# Go back to the README and figure out how to draw the schema
# From that schema, decide who has what instance inside of them
# Go through the deliverables and pick out the easy stufffffff EZ!!!!
  # The easiest methods are usually:
  # get that initialize working
  # do the .all stuff
  # attr_s
  # the one hop lookups
  # the two hop lookups
  # do the hard stuff

class Artist
  attr_accessor :name, :age

  # The Artist class needs a class variable @@all that begins as an empty array
  @@all = []

  # The Artist class needs a class method .all that lists each artist in the class variable
  def self.all
    @@all
  end

  # Artist.average
  def self.average
    total = Artist.all.inject(0){|sum, artist| sum + artist.age }
    # binding.pry
    how_many = Artist.all.count
    # total age / how many ages
    total / how_many.to_f # if you're not sure, leave a comment
    # whole number / whole number == truncating
  end

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
  end
  # An artist is initialized with a name
  #  and artist instance is saved in the @@all array.

  # The Artist class needs an instance method,
  # #new_song,
  # that takes in an argument of a name and genre
  # creates a new song.
  # That song should know that it belongs to the artist.
  def new_song(name, genre)
    # who is the artist it belongs to?
    # since I'm in an instance method, it should be the instance that called it
    # this should be yourself, and to get access to yourself, you use self
    Song.new(name, self, genre) # the artist == self
  end

  # has_many and belongs_to

  # The Artist class needs an instance method,
  # #songs,
  # that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  # The Artist class needs an instance method,
  # #genres
  # that iterates over that artist's songs
  # and collects the genre of each song.
  def genres
    # look for a local variable called songs
    # look for a method on self. called songs => self.songs
    # looks up the parent chain
    self.songs.map do |song|
      song.genre
    end
  end
end
