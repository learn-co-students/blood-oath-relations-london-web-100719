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

  def cult_count
    cults.length
  end

  def self.of_a_certain_age(age)
    self.all.select { |follower| follower.age == age }
  end

  def my_cults_slogans
    cults.map { |cult| puts cult.slogan }
  end

  def self.most_active
    # Max_by will return the object in the enumerable that gives the maximum value for the block, in this case, the number of cults that follower is in.
    self.all.max_by(&:cult_count)
  end

  def self.top_ten
    self.all.sort_by(&:cult_count)[-10..-1]
  end

end