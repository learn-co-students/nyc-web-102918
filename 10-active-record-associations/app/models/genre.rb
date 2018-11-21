class Genre < ActiveRecord::Base
  has_many(:songs)
  has_many(:artists, {through: :songs})


  # OLD WAY
  # def songs
  #   Song.all.select do |song|
  #     song.genre == self
  #   end
  # end

  # def artists
  #   self.songs.map do |song|
  #     song.artist
  #   end
  # end
end