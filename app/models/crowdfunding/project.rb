class Project
    attr_accessor :name, :goal, :creator

    @@all = []

    def initialize(name, goal, creator=nil)
        @name = name
        @goal = goal
        @creator = creator
        @@all << self
    end

    def self.all
        @@all
    end

    def creators
        Project.all.select {|pledge| pledge.creator}
    end

    def backers
        # find all backers for this project
        Pledge.all.select {|pledge| pledge.project == self}.map {|project| project.user}
    end

    def pledges
        # find all pledges for this project
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def projects
        self.all.select {|project| project == self}
    end

    def pledge_total
        all_pledges = self.pledges.map {|pledge| pledge.amount}
        all_pledges.sum
    end

    def self.no_pledges
        # returns all projects which have no pledges yet
        self.all.filter {|project| project.pledge_total == 0 }
    end

    def self.above_goal
        # returns all projects which have met or exceeded their pledge goal
        self.all.filter {|project| project.pledge_total > project.goal }
    end

    def self.most_backers
        # returns the project with the highest number of backers
        most = self.all.select {|project| project}.map {|project| project.backers.count}.max
        self.all.filter {|project| project.backers.count >= most}
    end
    
end