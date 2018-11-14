# # u1 = User.new("m1")
# u1 = User.new(name: "m1")
# u1.save
# # u2 = User.new("m2")
# u2 = User.create(name: "m2")
# # u3 = User.new("m3")
# u3 = User.create(name: "m3")

10.times do
  User.create(name: Faker::Name.name)
end

10.times do
  Ingredient.create(name: Faker::Name.name)
end

10.times do
  Recipe.create(name: Faker::Name.name)
end

10.times do
  Allergen.create(ingredient_id: Ingredient.all.sample.id, user_id: User.all.sample.id)
end

10.times do
  RecipeCard.create(recipe_id: Recipe.all.sample.id, user_id: User.all.sample.id, date: "1999", rating: (0..5).to_a.sample)
end

10.times do
  RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end

#
# r1 = Recipe.new("r1")
# r2 = Recipe.new("r2")
# r3 = Recipe.new("r3")
#
# rc1 = RecipeCard.new(u1, r1, "01-01-2018", 5)
# rc2 = RecipeCard.new(u1, r2, "01-01-2018", 4)
# rc3 = RecipeCard.new(u2, r3, "01-01-2018", 2)
#
# rc4 = RecipeCard.new(u1, r1, "01-01-2018", 1)
# rc5 = RecipeCard.new(u1, r2, "01-01-2018", 2)
# rc6 = RecipeCard.new(u1, r3, "01-01-2018", 3)
