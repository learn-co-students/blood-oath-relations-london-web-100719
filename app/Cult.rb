class Cult

    attr_accessor :name, :location, :slogan, :follower
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
        followed = BloodOath.all.select {|oath| oath.cult == self}
        followed.map {|oath| oath.follower}
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

    def average_age
        ages = followers.map {|cult_follower| cult_follower.age}.sum
        average_age = ages/cult_population
    end

    def my_followers_mottos
        followers.map {|cult_follower| cult_follower.life_motto}
    end
    
    def self.least_popular
        Cult.all.min_by {|cult| cult.cult_population}
    end

    def self.most_common_location
        all_locations = Cult.all.map {|cult| cult.location}
        all_locations.max_by {|location| location.count(location)}
    end

end
