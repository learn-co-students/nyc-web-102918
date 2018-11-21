class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre



  # def self.find(id)
  #   puts 'Hi from find'
  #   # self.all.find do |song|
  #   #   song['id'] == id
  #   # end
  # end

  # def self.find_by_title(title)
  #   self.all.find do |song|
  #     song.title == title
  #   end
  # end
end
