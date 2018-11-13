require_relative '../config/environment.rb'

user1 = User.new("Tom")
user2 = User.new("Dick")
user3 = User.new("Harry")

recipe1 = Recipe.new ("Apple pie")
recipe2 = Recipe.new ("Pumpkin pie")
recipe3 = Recipe.new ("Cherry pie")

ingredient1 = Ingredient.new("Apple")
ingredient2 = Ingredient.new("Pumpkin")
ingredient3 = Ingredient.new("Cherry")
ingredient4 = Ingredient.new("Milk")
ingredient5 = Ingredient.new("Egg")

recipecard1 = RecipeCard.new("01/01", 8, user1, recipe1)
recipecard2 = RecipeCard.new("02/02", 5, user2, recipe2)
recipecard3 = RecipeCard.new("03/03", 7, user3, recipe3)
recipecard4 = RecipeCard.new("04/04", 5, user1, recipe2)
recipecard5 = RecipeCard.new("05/05", 7, user2, recipe3)
recipecard6 = RecipeCard.new("06/06", 9, user3, recipe2)

recipeingredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipeingredient2 = RecipeIngredient.new(ingredient2, recipe2)
recipeingredient3 = RecipeIngredient.new(ingredient3, recipe3)
recipeingredient4 = RecipeIngredient.new(ingredient1, recipe2)
recipeingredient1 = RecipeIngredient.new(ingredient2, recipe1)

allergen1 = Allergen.new(user1, ingredient4)
allergen2 = Allergen.new(user2, ingredient2)
allergen3 = Allergen.new(user3, ingredient3)
allergen4 = Allergen.new(user1, ingredient2)
allergen5 = Allergen.new(user2, ingredient3)




binding.pry
