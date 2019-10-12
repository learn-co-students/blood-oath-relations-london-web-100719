class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    #     Follower#cults
    # returns an Array of this follower's cults
    def cults
        BloodOath.all.select{|oath| oath.follower == self}
    end

    # Follower#join_cult
    # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
    def join_cult(cult)
        BloodOath.new(cult, self, Date.today.to_s)
    end 

    # Follower.of_a_certain_age
    # takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age == age}
    end
end