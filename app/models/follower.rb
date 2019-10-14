class Follower

    @@all=[]

    attr_reader :name, :age, :life_motto

    @cults = []

    def self.all
        @@all
    end

    def self.of_a_certain_age(age_limit)
        Follower.all.select {|follower| follower.age>=age_limit}
    end

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all <<self
    end

    def join_cult(cult)
        BloodOath.new(cult, self, Time.now)
        @cults << cult
    end




end