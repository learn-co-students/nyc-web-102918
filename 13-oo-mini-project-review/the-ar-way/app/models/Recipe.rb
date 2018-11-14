class Recipe
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.most_popular
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def users
    self.recipe_cards.map do |rc|
      rc.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |rc|
      rc.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |rc|
      rc.ingredient
    end
  end

  def allergens
    # do this!
  end

  def add_ingredients
  end

end
