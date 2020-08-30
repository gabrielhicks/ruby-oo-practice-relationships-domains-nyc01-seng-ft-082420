class Ingredient
    attr_accessor :name, :calories

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        # should return an array of all ingredients
        @@all
    end

    def dessert #WORKING
        # should return a dessert object for that ingredient
        DessertIngredient.all.select {|di| di.ingredient == self}.map {|every| every.dessert}
    end

    def bakery
        # should return the bakery object for the bakery that uses that ingredient
        DessertIngredient.all.select {|di| di.ingredient == self}.map {|every| every.dessert.bakery}
    end

    def self.find_all_by_name(ingredient)
        # should take a string argument return an array of all
        # ingredients that include that string in their name
        ### .find_all_by_name('chocolate') 
        # might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
        # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
        ingredients = DessertIngredient.all.select {|di| di.ingredient}.map {|every| every.ingredient.name}.uniq
        ingredients.select {|every| every.include?(ingredient)}
    end

end