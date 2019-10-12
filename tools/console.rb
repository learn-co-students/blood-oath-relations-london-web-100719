require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "San Fran", 1984, "yes we can")
cult2 = Cult.new("cult2", "San Diego", 1984, "yes we can")
cult3 = Cult.new("cult3", "San Fran", 1984, "yes we can")

follower1 = Follower.new("name1", 25, "no we cant")
follower2 = Follower.new("name2", 26, "no we cant")
follower3 = Follower.new("name3", 27, "no we cant")
follower4 = Follower.new("name4", 27, "no we cant")

bloodoath1 = BloodOath.new(cult1, follower1)
bloodoath2 = BloodOath.new(cult1, follower2)
bloodoath3 = BloodOath.new(cult1, follower3)
bloodoath1 = BloodOath.new(cult2, follower1)
bloodoath2 = BloodOath.new(cult2, follower2)
bloodoath3 = BloodOath.new(cult3, follower3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
