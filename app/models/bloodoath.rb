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

  def self.first_oath
    self.all.min_by(&:initiation_date)
  end
end