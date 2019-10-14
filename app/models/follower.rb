class Follower

    @@all=[]

    attr_reader :name, :age, :life_motto


    def self.all
        @@all
    end

    def self.of_a_certain_age(age_limit)
        Follower.all.select {|follower| follower.age>=age_limit}
    end


    def self.most_active
        Follower.all.max_by{|follower|follower.my_cults.size}
    end

    def self.top_three
        Follower.all.sort_by{|follower|follower.my_cults.size}[0..2]
    end


    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all <<self
    end

    def join_cult(cult)
        BloodOath.new(cult, self, Time.now)
    end

    def my_oaths
        BloodOath.all.select {|oath| oath.follower==self}
    end

    def my_cults
        my_oaths.map {|oath|oath.cult}
    end

    def my_cults_slogans
        my_cults.map {|cult| cult.slogan}
    end





end