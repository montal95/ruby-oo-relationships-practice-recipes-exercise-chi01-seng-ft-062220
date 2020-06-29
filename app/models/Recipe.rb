class Recipe
    @@all = []
    attr_accessor :ingredients

    def initialize
        @@all << self
        @ingredients = []
    end

    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all.max_by {|card| card.users.count}
    end

    def add_ingredients(array)
        RecipeIngredient.new(self, array)
    end

    def users
        @result = RecipeCard.all.select { |card| card.recipe == self }
        @result.map { |result| result.user}     
    end

    def ingredients
        result = RecipeIngredient.all.select {|list| list.recipe == self}
        result[0].ingredient
    end

    def allergens
        self.ingredients.select {|ingredient| ingredient.class == Allergy}
    end
end