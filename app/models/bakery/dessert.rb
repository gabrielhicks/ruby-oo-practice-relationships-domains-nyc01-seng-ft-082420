class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @@all << self
        @name = name
        @bakery = bakery
    end

    def self.all
        # should return an array of all desserts
        @@all
    end

    def ingredients #empty
        # should return an array of ingredients for the dessert
        DessertIngredient.all.select { |di| di.dessert == self }.map { |every| every.ingredient }
    end

    def bakery #empty
        # should return the bakery object for the dessert
        @bakery
    end

    def calories #empty
        # should return a number totaling all the calories for all the ingredients included in that dessert
    ingredients = DessertIngredient.all.select { |di| di.dessert == self }.map { |every| every.ingredient }
    ingredients.map {|ingredient| ingredient.calories}.sum
    end

end