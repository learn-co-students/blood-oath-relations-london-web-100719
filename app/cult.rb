require 'pry'

class Cult

    attr_reader :name, :founding_year
    attr_accessor :location, :slogan

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

    def recruit_follower(follower)

        BloodOath.new(self, follower)
        
    end

    def self.find_by_name(name)

        Cult.all.select {|cult| cult.name == name}[0]
        
    end

    def self.find_by_location(location)

        Cult.all.select {|cult| cult.location == location}
        
    end

    def self.find_by_founding_year(founding_year)

        Cult.all.select {|cult| cult.founding_year == founding_year}
        
    end

    

end