class Guest
    attr

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        # returns an array of all guests
        @@all
    end

    def listings
        # returns an array of all listings a guest has stayed at

    end

    def trips
        # returns an array of all trips a guest has made

    end

    def self.trip_count
        # returns the number of trips a guest has taken

    end

    def self.pro_traveller
        # returns an array of all guests who have made over 1 trip

    end

    def self.find_all_by_name(name)
        # takes an argument of a name (as a string), returns the all guests with that name

    end

end