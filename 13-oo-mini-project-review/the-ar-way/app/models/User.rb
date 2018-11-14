class User
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen

  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def ingredients
    # do this!
  end

  def top_three_recipes
    sorted_recipe_cards = self.recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end
    top_three_recipe_cards = sorted_recipe_cards.last(3)
    top_three_recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def most_recent_recipe
  end

end
