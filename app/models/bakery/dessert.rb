class Dessert
    attr

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        # should return an array of all desserts
        @@all
    end

    def ingredients
        # should return an array of ingredients for the dessert

    end

    def bakery
        # should return the bakery object for the dessert

    end

    def calories
        # should return a number totaling all the calories for all the ingredients included in that dessert

    end

end