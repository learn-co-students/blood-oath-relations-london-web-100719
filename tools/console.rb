require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "San Fran", 1984, "yes we can")
cult2 = Cult.new("cult2", "San Fran", 1984, "yes we can")
cult3 = Cult.new("cult3", "Mexico", 1984, "yes we can")

follower1 = Follower.new("name1", 25, "no we cant")
follower2 = Follower.new("name2", 26, "no we cant")
follower3 = Follower.new("name3", 27, "no we cant")
follower4 = Follower.new("name4", 27, "no we cant")
follower5 = Follower.new("name5", 25, "no we cant")
follower6 = Follower.new("name6", 26, "no we cant")
follower7 = Follower.new("name7", 27, "no we cant")
follower8 = Follower.new("name8", 27, "no we cant")
follower9 = Follower.new("name9", 25, "no we cant")
follower10 = Follower.new("name10", 26, "no we cant")
follower11 = Follower.new("name11", 27, "no we cant")
follower12 = Follower.new("name12", 27, "no we cant")

follower1.initiation_date = 1991
follower2.initiation_date = 1992
follower3.initiation_date = 1993
follower4.initiation_date = 1994
follower5.initiation_date = 1995
follower6.initiation_date = 1996
follower7.initiation_date = 1997
follower8.initiation_date = 1998
follower9.initiation_date = 1999

bloodoath1 = BloodOath.new(cult1, follower1)
bloodoath2 = BloodOath.new(cult1, follower2)
bloodoath3 = BloodOath.new(cult1, follower3)
bloodoath1 = BloodOath.new(cult2, follower2)
bloodoath2 = BloodOath.new(cult2, follower2)
bloodoath3 = BloodOath.new(cult3, follower3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
