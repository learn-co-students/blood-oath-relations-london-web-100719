class Follower 

    attr_reader :name, :age, :life_motto 

    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self 
    end 

    def bloodoath
        BloodOath.all.select {|bo| bo.follower == self}
    end 

    def cults 
        bloodoath.map {|bo| bo.cult}
    end 

    def join_cult(cult)
        BloodOath.new(Time.new.month, cult, self)
    end 

    def self.all 
        @@all 
    end 

    def self.of_a_certain_age(num)
        self.all.select{|f| f.age >= num}
    end   
end 