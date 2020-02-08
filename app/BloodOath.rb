class BloodOath

    attr_reader :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        BloodOath.all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        BloodOath.all.min_by {|oath| oath.initiation_date}.follower
        
    end
    
end