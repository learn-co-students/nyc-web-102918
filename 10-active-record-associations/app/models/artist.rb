class Artist < ActiveRecord::Base
	has_many :songs
	has_many :genres, through: :songs

	# def songs
	# 	Song.all.select do |song|
	# 		song.artist == self
	# 	end
	# end
end
