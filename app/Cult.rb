class Cult

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        Cult.all << self
    end

    def self.all
        @@all
    end

    def followers
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        followers.size
    end

    def self.find_by_name(name)
        Cult.all.select {|cult| cult.name == name}
    end

    def self.find_by_location(loc)
        Cult.all.select {|cult| cult.location == loc}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|cult| cult.founding_year == year}
    end
    
end