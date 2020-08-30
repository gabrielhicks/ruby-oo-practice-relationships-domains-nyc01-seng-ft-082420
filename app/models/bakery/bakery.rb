class Bakery
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        # should return an array of all bakeries
        @@all
    end

    def ingredients
        # should return an array of ingredients for the bakery's desserts
        DessertIngredient.all.select {|di| di.dessert.bakery = self}.map {|dessert| dessert.ingredient}.uniq
    end

    def desserts
        # should return an array of desserts the bakery makes
        DessertIngredient.all.select {|di| di.dessert.bakery = self}.map {|dessert| dessert.dessert}.uniq
    end

    def shopping_list
        # should return a string of names for ingredients for the bakery
        ingredients = DessertIngredient.all.select {|dessert| dessert.dessert.bakery = self}.map {|dessert| dessert.ingredient.name}
        listed = ""
        ingredients.each { |ingredient, amount|
                listed += "#{ingredient}, "
        }
        listed.chop!.chop!
    end

end
