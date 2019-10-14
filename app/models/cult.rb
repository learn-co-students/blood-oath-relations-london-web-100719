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

    def self.locations
        Cult.all.map {|cult| cult.location}
    end

    def self.most_common_location
        locations.max_by {|location|locations.count(location)}
        #Cult.all.max_by {|cult| cult.cult_population}
    end


    def self.populations
        Cult.all.map {|cult| cult.cult_population}
    end


    def self.least_popular
        Cult.all.min_by {|cult| cult.cult_population}
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
        BloodOath.all.select{|bloadoath|bloadoath.cult==self}
    end

    def cult_population
        own_bloodoaths.map {|bloodoath|bloodoath.follower}
    end

    def cult_population_size
        cult_population.size
    end


    def population_ages
        cult_population_size.map {|follower| follower.age}
    end

    def average_age
        population_ages.reduce(0) {|sum,age| sum+=age}/population_ages.size
    end

    def my_followers_mottos
        cult_population.map {|follower| follower.life_motto}
    end



end