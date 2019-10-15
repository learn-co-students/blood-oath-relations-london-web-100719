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

    def cults
        BloodOath.all.select{|oath| oath.follower == self}
    end

    def join_cult(cult)
        BloodOath.new(cult, self, Date.today.to_s)
    end 

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age == age}
    end

    def my_cults_slogans
        cults.map{|cult| cult.cult.slogan}
    end

# Follower.most_active
# returns the Follower instance who has joined the most cults
    def self.most_active
        follower_instances = get_all_follower_instances

        most_active = follower_instances.max_by{|follower|follower_instances.count(follower)}
    end

    def self.get_all_follower_instances
        BloodOath.all.map{|oath|oath.follower}
    end

    def self.top_ten
        follower_instances = self.get_all_follower_instances

        ten_most_active = follower_instances.sort_by{|follower|follower_instances.count(follower)}.uniq.reverse[0..9]

    end

end