class Ingredient < ActiveRecord::Base
  # attr_reader :name
  #
  # @@all = []
  #
  # def self.all
  #   @@all
  # end
  #
  # def initialize(name)
  #   @name = name
  #
  #   @@all << self
  # end

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.ingredient == self
    end
  end

  def recipes
    self.recipe_ingredients.map do |ri|
      ri.recipe
    end
  end

end
