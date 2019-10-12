require 'pry'

class Cult

    attr_reader :name, :founding_year, :minimum_age
    attr_accessor :location, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age = 30)

        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age

        Cult.all << self

    end

    def self.all

        @@all

    end

    def followers

        BloodOath.all.select {|oath| oath.cult == self}.map {|oath| oath.person}.uniq
        
    end

    def cult_population

        self.followers.size

    end

    def recruit_follower(follower)

        if self.followers.include?(follower)

            BloodOath.find_by_cult_and_follower(self, follower)
            puts "-----------------------------------------------------"
            puts "#{follower.name} is already a member of cult #{self.name}!"
            puts "-----------------------------------------------------"

        elsif self.minimum_age > follower.age

            puts "-----------------------------------------------------"
            puts "#{follower.name} is too young to join cult #{self.name}!"
            puts "-----------------------------------------------------"
            
        else

            BloodOath.new(self, follower)
            puts "-----------------------------------------------------"
            puts "#{follower.name} is now a proud member of cult #{self.name}!"
            puts "-----------------------------------------------------"
            
        end
        
    end

    def average_age

        self.followers.map {|sheep| sheep.age}.instance_eval { reduce(:+) / size.to_f }.round(2)
        
    end

    def my_follower_mottos

        self.followers.each {|sheep| p sheep.life_motto}.clear

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

    def self.least_popular

        Cult.all.min_by {|cult| cult.followers.size}
        
    end

    def self.most_common_location

        locations = Cult.all.map{|cult| cult.location}
        locations.max_by {|location| locations.count(location)}
        
    end

end