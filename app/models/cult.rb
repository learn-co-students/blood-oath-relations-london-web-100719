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

    def recruit_follower(follower)
        BloodOath.new(self, follower, Date.today.to_s)
    end

    def get_cult
        BloodOath.all.select{|oath| oath.cult == self}
    end 

    def cult_population
        get_cult.count
    end


    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        self.all.find{|cult| cult.name == cult_name}
    end

    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        self.all.select{|cult| cult.founding_year == founding_year}
    end

    def average_age
        get_cult.map{|oath| oath.follower.age}.sum/cult_population
    end

    def my_followers_mottos
        get_cult.map{|oath|oath.follower.life_motto}
    end


    def self.least_popular
        #assume only returning cults with minimum 1 member
        BloodOath.all.group_by{|oath| oath.cult}.min_by{|cult, cult_members| cult_members.count}
    end

    def self.most_common_location
        self.all.group_by{|cult| cult.location}.max_by{|location| location.count}[0]
    end
end