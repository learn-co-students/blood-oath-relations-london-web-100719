class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
  @@all = []

  def initialize(name, location, founding_year, slogan, minimum_age)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = minimum_age
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    if self.minimum_age <= follower.age
      time = Time.now
      date = "#{time.year}-#{time.month}-#{time.day}"
      BloodOath.new(follower, self, date)    
    else
      puts 'You are too young to join.'
    end
  end

  def self.find_by_name(name)
    self.all.select { |cult| cult.name == name }[0]
  end

  def find_by_location(location)
    self.all.select { |cult| cult.location == location }
  end

  def find_by_founding_year(year)
    self.all.select { |cult| cult.founding_year == year }
  end

  def oaths
    BloodOath.all.select { |oath| oath.cult == self }
  end

  def followers
    self.oaths.map { |oath| oath.follower }
  end

  def headcount
    followers.length
  end

  def average_age
    (followers.map { |follower| follower.age }.sum / followers.length).to_f
  end

  def my_followers_mottos
    self.followers.map { |follower| follower.life_motto }
  end

  def self.least_popular
    self.all.sort_by(&:headcount)[0]
  end
  
  def most_common_location
    #max_by! what an enumerable! this bad boy returns the object that gives the maximum value from the given block. In this case, it will look through an array of all cult locations, and return the location which appears most frequently (the maximum value for place.count(place)).
    places = self.all.map{|cult| cult.location }
    places.max_by { |place| place.count(place) }
  end
end