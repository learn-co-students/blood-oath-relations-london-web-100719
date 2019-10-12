require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("GOATs", "London", 1969, "The cake is a lie", 25)
cult2 = Cult.new("Recycling", "London", 2015, "Bottles are just weird buckets", 23)
cult3 = Cult.new("Elon", "LA", 2002, "Colonizing Mars is a great idea", 21)
cult4 = Cult.new("Apple", "Cupertino", 1976, "It's about the ecosystem dude", 50)

sheep1 = Follower.new("John Adams", 21, "I like trains")
sheep2 = Follower.new("Ben Franklin",  53, "I'm woke")
sheep3 = Follower.new("John Cena", 42, "You can't see self")
sheep4 = Follower.new("Abe Lincoln", 66, "Cults of the people, by the people, for the people")
sheep5 = Follower.new("Mike Pence", 34)

oath1 = BloodOath.new(cult1, sheep2)
oath2 = BloodOath.new(cult3, sheep3)
oath3 = BloodOath.new(cult1, sheep4)
# oath4 = BloodOath.new(cult2, sheep1)
oath5 = BloodOath.new(cult3, sheep5)
oath6 = BloodOath.new(cult4, sheep4)
oath7 = BloodOath.new(cult2, sheep3)
oath8 = BloodOath.new(cult3, sheep1)
oath9 = BloodOath.new(cult4, sheep2)
oath10 = BloodOath.new(cult3, sheep3)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 # just in case pry is buggy and exits
