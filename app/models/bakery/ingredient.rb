class Ingredients
    attr

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        # should return an array of all ingredients
        @@all
    end

    def dessert
        # should return a dessert object for that ingredient

    end

    def bakery
        # should return the bakery object for the bakery that uses that ingredient

    end

    def self.find_all_by_name(ingredient)
        # should take a string argument return an array of all
        # ingredients that include that string in their name

        ### .find_all_by_name('chocolate') 
        # might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
        # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')

    end

end