class BloodOath
  attr_accessor :follower, :cult, :initiation_date
  @@all = []

  def initialize(follower, cult, date)
    @follower = follower
    @cult = cult
    @initiation_date = date
    @@all << self
  end

  def self.all
    @@all
  end
end