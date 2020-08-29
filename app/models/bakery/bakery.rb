class Bakery
    attr

    @@all = []
    
    def initialize
        @@all << self
    end

    def self.all
        # should return an array of all bakeries
        @@all
    end

    def ingredients
        # should return an array of ingredients for the bakery's desserts

    end

    def desserts
        # should return an array of desserts the bakery makes

    end

    def average_calories
        # should return a number totaling the average number of calories for the desserts sold at this bakery

    end

    def shopping_list
        # should return a string of names for ingredients for the bakery

    end

end
