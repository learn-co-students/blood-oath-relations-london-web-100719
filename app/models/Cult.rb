class Cult 

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan 
        @@all << self 
    end

    def bloodoath 
        BloodOath.all.select {|bo| bo.cult == self}
    end

    def recruit_follower(follower)
        BloodOath.new(Time.new.month, self, follower)
    end 

    def cult_population
        bloodoath.length 
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_name(name)
        self.all.select {|cult| cult.name == name}
    end 

    def self.find_by_location(location)
        self.all.select {|cult| cult.location == location}
    end 

    def self.find_by_founding_year(year)
        self.all.select{|cult| cult.founding_year == year}
    end 

    def average_age
        arr = bloodoath.map {|bo| bo.follower}
        arr.reduce(0){|sum, f| sum += f.age}/self.cult_population
    end 

    def my_followers_mottos
        arr = bloodoath.map {|bo| bo.follower.life_motto}
    end 

    def self.most_common_location
        arr = self.all.map {|c| c.location}
        arr.mode
    end 

    def self.least_popular 
        self.all.max_by {|cult| cult.cult_population}
    end 



end 