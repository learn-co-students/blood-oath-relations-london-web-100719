class Cult

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end 

    # Cult#recruit_follower
    # takes in an argument of a Follower instance and adds them to this cult's list of followers
    def recruit_follower(follower)
        BloodOath.new(self, follower, Date.today.to_s)
    end

    # Cult#cult_population
    # returns a Fixnum that is the number of followers in this cult
    def cult_population
        BloodOath.all.select{|oath| oath.cult == self}.count
    end

    def self.all
        @@all
    end

    # Cult.find_by_name
    # takes a String argument that is a name and returns a Cult instance whose name matches that argument
    def self.find_by_name(cult_name)
        self.all.find{|cult| cult.name == cult_name}
    end

    # Cult.find_by_location
    # takes a String argument that is a location and returns an Array of cults that are in that location
    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location}
    end

    # Cult.find_by_founding_year
    # takes a Fixnum argument that is a year and returns all of the cults founded in that year
    def self.find_by_founding_year(founding_year)
        self.all.select{|cult| cult.founding_year == founding_year}
    end
end