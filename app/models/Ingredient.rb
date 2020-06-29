class Ingredient
    @@all = []

    def initialize
        @@all << self        
    end

    def self.all
        @@all
    end


    def self.most_common_allergen
        Allergy.all.max_by{|ingredient| ingredient.user.count}
    end
end