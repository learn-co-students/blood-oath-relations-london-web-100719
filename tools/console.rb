require_relative '../config/environment.rb'

require 'Date'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Super Cult", "London", 2000, "Die Die")
c2 = Cult.new("Mega Cult", "London", 2000, "Join or Die")
c3 = Cult.new("Ultra Cult", "New York", 2014, "Begin")


f1 = Follower.new("John", 20, "I am the best")
f2 = Follower.new("Steve", 25, "I am the worst")
f3 = Follower.new("Alan", 40, "I am older")

b1 = BloodOath.new(c1, f1, "2019-10-14")
b2 = BloodOath.new(c2, f2, "2018-10-14")
b3 = BloodOath.new(c1, f3, "2017-10-14")
b4 = BloodOath.new(c2, f1, "2017-10-14")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
