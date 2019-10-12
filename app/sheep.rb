require 'pry'

class Follower

    attr_reader :name, :age, :life_motto
    attr_accessor :cult

    @@all = []

    def initialize(name, age, life_motto = "Fortnite bad, Minecraft good")

        @name = name
        @age = age
        @life_motto = life_motto

        Follower.all << self

    end

    def self.all

        @@all

    end

    def cults
        
        BloodOath.all.select {|oath| oath.person == self}.map{|oath| oath.cult}.uniq

    end

    def join_cult(cult)

        cult.recruit_follower(self)
        
    end

    def self.of_a_certain_age(age)

        self.all.select {|sheep| sheep.age >= age}
        
    end

    def my_cults_slogan

        Cult.all.select {|cult| cult.followers.include?(self)}.map {|cult| puts cult.slogan}.clear
        
    end

    def self.most_active

        Follower.all.max_by {|sheep| sheep.cults.size}
        
    end

    def self.top_ten

        Follower.all.sort_by! {|sheep| -sheep.cults.size}
        
    end

    def fellow_cult_members

        self.cults.map {|cult| cult.followers}.flatten.uniq

    end

end