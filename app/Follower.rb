class Follower

    attr_accessor  :age, :life_motto, :initiation_date
    attr_reader :name

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        Follower.all << self
    end

    def self.all
        @@all
    end

    def cults
        cultss = BloodOath.all.select {|oath| oath.follower == self}
        cultss.map {|followers_cult| followers_cult.cult}
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def how_many_cults
        cults.size ||= 0
        cults.size
    end

    def self.of_a_certain_age(age)
        Follower.all.select {|follower| follower.age >= age}
    end

    def my_cults_slogans
        cults.map {|cult| cult.slogan}
    end

    def self.most_active
        Follower.all.max_by {|follower| follower.how_many_cults}
    end

    def self.top_ten
        Follower.all.sort_by {|follower| -follower.how_many_cults}.slice(0,10)
        #assuming it asks for the instance
    end

    
    
end