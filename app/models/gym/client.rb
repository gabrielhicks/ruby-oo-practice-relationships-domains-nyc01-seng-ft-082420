class Client
    attr_accessor :name, :trainer

    @@all = []

    def initialize(name, trainer=nil)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer) #WORKING
        # should take a trainer as argument and assign it to the client
        self.trainer = trainer
    end
    
end