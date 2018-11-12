require_relative '../lib/artist'
require_relative '../lib/song'
require_relative '../lib/genre'
require 'pry'

10.times do |number|
  Artist.new("Santana #{number}", number)
end

10.times do |number|
  Genre.new("Genre #{number}")
end

Song.new("s1", Artist.all[0], Genre.all[0])
Song.new("s1.1", Artist.all[1], Genre.all[0])
Song.new("s2", Artist.all[1], Genre.all[1])

binding.pry

'cool'

'SILENCE!!!!'
