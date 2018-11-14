class Ingredient
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
end
