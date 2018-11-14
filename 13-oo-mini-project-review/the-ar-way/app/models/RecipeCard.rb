class RecipeCard < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
  # attr_reader :user, :recipe, :date
  # attr_accessor :rating
  #
  # @@all = []
  #
  # def self.all
  #   @@all
  # end
  #
  # def initialize(user, recipe, date, rating)
  #   @user = user
  #   @recipe = recipe
  #   @date = date
  #   @rating = rating
  #
  #   @@all << self
  # end
end
