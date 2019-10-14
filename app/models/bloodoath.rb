class BloodOath

    @@all=[]

    attr_reader :initiation_date, :cult, :follower

    def self.all
        @@all
    end

    def self.first_oath
        self.all.min_by {|oath| oath.initiation_date}
    end


    def initialize(cult, follower, date)
        
        @cult            = cult
        @follower        = follower
        @initiation_date = date

        @@all << self
    end


end