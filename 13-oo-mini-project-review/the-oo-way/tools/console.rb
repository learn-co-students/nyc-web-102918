require_relative '../config/environment.rb'

u1 = User.new("m1")
u2 = User.new("m2")
u3 = User.new("m3")

r1 = Recipe.new("r1")
r2 = Recipe.new("r2")
r3 = Recipe.new("r3")

rc1 = RecipeCard.new(u1, r1, "01-01-2018", 5)
rc2 = RecipeCard.new(u1, r2, "01-01-2018", 4)
rc3 = RecipeCard.new(u2, r3, "01-01-2018", 2)

rc4 = RecipeCard.new(u1, r1, "01-01-2018", 1)
rc5 = RecipeCard.new(u1, r2, "01-01-2018", 2)
rc6 = RecipeCard.new(u1, r3, "01-01-2018", 3)

binding.pry
