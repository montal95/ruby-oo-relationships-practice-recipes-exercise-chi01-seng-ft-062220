require_relative '../config/environment.rb'

cookies = Recipe.new
beets = Recipe.new
salad = Recipe.new
candybars = Recipe.new
sandwich = Recipe.new

flour = Ingredient.new
sugar = Ingredient.new
salt = Ingredient.new
peanuts = Ingredient.new
milk = Ingredient.new

derick = User.new
mork = User.new
jeb = User.new

peanut = Allergy.new(peanuts, derick)
dairy = Allergy.new(milk, derick)
dairy_two = Allergy.new(milk, mork)

derick_cookies = RecipeCard.new("10/5/2914", 6.6, derick, cookies)
mork_salad = RecipeCard.new("6/6/6666", 4.2, mork, salad)
# derick_salad = RecipeCard.new("6/2/13", 6.7, derick, salad)
derick_candybars = RecipeCard.new("january", 100, derick, candybars)
derick_beets = RecipeCard.new("feb", 70, derick, beets)
mork_sandwich = RecipeCard.new("10/5/2914", 6.6, mork, sandwich)
derick_sandwich = RecipeCard.new("10/5/2914", 6.6, derick, sandwich)


mork.add_recipe_card(sandwich, "4/20/240", 2.1)
jeb.add_recipe_card(salad, "october", 7)

cookies.add_ingredients([flour, salt, sugar, peanuts])

binding.pry