class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all #WORKING
        # returns an array of all listings
        @@all
    end

    def guests # NoMethodError: undefined method `listings' for Guest:Class
        # returns an array of all guests who have stayed at a listing
        Trip.all.select { |trip| trip.guest }
    end

    def trips #WORKING
        # returns an array of all trips at a listing
        Trip.all.select { |trip| trip.listing == self }
    end

    def trip_count #WORKING
        # returns the number of trips that have been taken to that listing
        self.trips.count
    end

    def self.find_all_by_city(city) #WORKING
        # takes an argument of a city name (as a string) and returns all the listings for that city
        self.all.select { |listing| listing.city == city }
    end

    def self.most_popular #NoMethodError: undefined method `size' for #<Trip:0x00007fcde3168358>
        # finds the listing that has had the most trips
        Trip.all.find { |trip1, trip2| trip1.size <=> trip2.size }
    end
    
end