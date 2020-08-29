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
    
end