class Cult

    @@all=[]

    attr_reader :name, :location, :slogan, :founding_year

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Cult.all.select {|cult| cult.name==name}
    end

    def self.find_by_location(location)
        Cult.all.select {|cult| cult.location==location}
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select {|cult| cult.founding_year==founding_year}
    end

    def initialize(name, location, slogan, founding_year)

        @name = name
        @location = location
        @slogan = slogan
        @founding_year = founding_year

        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower, Time.now)
    end

    def own_bloodoaths
        BloodOath.all#.select{|bloadoath|bloadoath.cult==self}
    end

    def cult_population
        own_bloodoaths.map {|bloodoath|bloodoath.follower}
    end

end