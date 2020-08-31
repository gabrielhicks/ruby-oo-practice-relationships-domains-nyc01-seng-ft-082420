class Location
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        TrainerLocation.all.select {|tl| tl.location == self}.map {|each| each.trainer.clients}
    end

    def client_count
        self.clients.count
    end

    def self.least_clients
        # should find which location has the least clients training there. 
        # we need to increase the marketing spend for that location!
        min_amount = Client.all.map {|client| client.location.client_count}.min
        Client.all.find_all {|client| client.location.client_count == min_amount}.map {|client| client.location}.uniq
    end
    
end