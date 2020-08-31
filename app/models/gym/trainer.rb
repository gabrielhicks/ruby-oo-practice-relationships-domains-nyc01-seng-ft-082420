class Trainer
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
        Client.all.select {|client| client.trainer == self}.map {|client| client.name}
    end

    def client_count
        clients.count
    end

    def self.most_clients
        # should find which trainer has the most clients. give that trainer a bonus!
        max_amount = Client.all.map {|client| client.trainer.client_count}.max
        Client.all.find_all {|client| client.trainer.client_count == max_amount}.map {|client| client.trainer}.uniq
    end

end