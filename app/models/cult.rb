class Cult
  attr_accessor :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    time = Time.now
    date = "#{time.year}-#{time.month}-#{time.day}"
    BloodOath.new(follower, self, date)    
  end

  def find_by_name(name)
    #output should be instance not array
    self.all.select { |cult| cult.name == name }
  end

  def find_by_location(location)
    self.all.select { |cult| cult.location == location }
  end

  def find_by_founding_year(year)
    self.all.select { |cult| cult.founding_year == year }
  end
end