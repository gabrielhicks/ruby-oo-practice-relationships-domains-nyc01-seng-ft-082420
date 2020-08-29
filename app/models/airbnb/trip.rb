class Trip
    attr

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        # returns an array of all trips
        @@all
    end

    def listing
        # returns the listing object for the trip

    end

    def guest
        # returns the guest object for the trip

    end

end