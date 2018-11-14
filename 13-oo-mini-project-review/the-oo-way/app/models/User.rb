class User
  attr_reader :name

  @@all = []

  def self.all
    @@all
    #should return all of the user instances
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  # helper method
  def recipe_cards
    RecipeCard.all.select do |recipe_card| #rc
      # self == recipe_card.user # recipe_card.user == self
      recipe_card.user == self
    end
  end

  # goes through the join table
  def recipes
    # should return all of the recipes this user has recipe cards for

    # first match up the user with their recipe cards
    # my_recipe_cards = RecipeCard.all.select do |recipe_card| #rc
    #   # self == recipe_card.user # recipe_card.user == self
    #   recipe_card.user == self
    # end

    # binding.pry
    # then take that array and get the recipes out of it
    self.recipe_cards.map do |recipe_card| # what is this an array of?
      recipe_card.recipe
    end
    # [recipe card objects for that user]

    # return an array of recipes
  end

  def add_recipe_card(recipe, date, rating)
    # should accept a recipe instance as an argument,
    # as well as a date and rating,
    # and create a new recipe card for this user and the given recipe
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen
    # should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
    # should return all of the ingredients this user is allergic to
  end

  def top_three_recipes
    # should return the top three highest rated recipes
    # for this user.

    # need to find the top three recipe cards by rating
      sorted_recipe_cards = self.recipe_cards.sort_by do |recipe_card|
        recipe_card.rating
      end
      top_three_recipe_cards = sorted_recipe_cards.last(3) #.reverse
      top_three_recipe_cards.map do |recipe_card|
        recipe_card.recipe
      end
      # binding.pry
      # get the ratings
      # do a sort by on those ratings
      # get the top 3
      # go back and find the recipe cards with those ratings

      # sort, reverse, get first three
    # then from those recipe cards, get the recipes

    # return an array of recipes
  end

  def most_recent_recipe
    # should return the recipe most recently added to the user's cookbook.
  end


end
