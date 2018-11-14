class Allergen
  attr_reader :user, :ingredient
  @@all = []

  def self.all
    @@all
  end

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient

    @@all << self
  end
end
