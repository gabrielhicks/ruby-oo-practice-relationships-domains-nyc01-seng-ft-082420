class Trip
    attr_accessor :listing, :guest

    @@all = []

    def initialize(listing, guest)
        @@all << self
        @listing = listing
        @guest = guest
    end

    def self.all #WORKING
        # returns an array of all trips
        @@all
    end

    def listing
        # returns the listing object for the trip
        @listing
    end

    def guest
        # returns the guest object for the trip
        @guest
    end

end