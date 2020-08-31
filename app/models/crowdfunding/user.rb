class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def create_project(name, goal)
        # names = name.split(" ")
        # project_name = names.join("").downcase
        Project.new(name, goal, self)
    end

    def back_project(project, amount)
        Pledge.new(self, project, amount)
    end

    def pledges
        # find all pledges by this user
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def pledge_total
        # find total of pledges by this user
        self.pledges.count
    end

    def pledges_sum
        Pledge.all.select {|pledge| pledge.user == self}.map {|pledge| pledge.amount}.sum
    end

    def projects
        # find all projects backed by this user
        Pledge.all.select {|pledge| pledge.user == self}.map {|pledge| pledge.project}
    end

    def projects_total
        self.projects.count
    end

    def self.highest_pledge
        # returns the user who has made the highest pledge
        max = self.all.map {|user| user.pledges_sum}.max
        self.all.filter {|user| user.pledges_sum == max}
    end

    def self.multi_pledger
        # returns all users who have pledged to multiple projects
        self.all.select {|user| user}.filter {|user| user.pledge_total > 1}
    end

    def self.project_creator
        # returns all users who have created a project
        Project.all.filter {|project| project.creator != nil}
    end

end