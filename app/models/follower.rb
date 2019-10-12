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

  def join_cult(cult)
    time = Time.now
    date = "#{time.year}-#{time.month}-#{time.day}"
    BloodOath.new(self, cult, date)
  end

  def cults
    BloodOath.all.select { |oath| oath.follower == self }.
      map {|oath| oath.cult }
  end

  def self.of_a_certain_age(age)
    self.all.select { |follower| follower.age == age }
  end

end