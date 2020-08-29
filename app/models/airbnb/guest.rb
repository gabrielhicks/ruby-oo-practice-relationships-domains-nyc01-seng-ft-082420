class Guest
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        # returns an array of all guests
        @@all
    end

    def listings
        # returns an array of all listings a guest has stayed at
        Trip.all.select { |trip| trip.guest == self }.map { |trip| trip.listing }
    end

    def trips
        # returns an array of all trips a guest has made
        Trip.all.select { |trip| trip.guest == self }
    end

    def trip_count
        # returns the number of trips a guest has taken
        self.trips.count
    end

    def self.pro_traveller #NoMethodError: undefined method `count' for #<Gue
        # returns an array of all guests who have made over 1 trip
        self.all.filter { |guest| guest.trip_count > 1 }
    end

    def self.find_all_by_name(name)
        # takes an argument of a name (as a string), returns the all guests with that name
        self.all.select { |guest| guest.name == name }
    end

end