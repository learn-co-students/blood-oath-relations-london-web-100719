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

f1 = Follower.new("John", 20, "I am the best")
f2 = Follower.new("Stve", 25, "I am the worst")

b1 = BloodOath.new(c1, f1, "2019-10-14")
b1 = BloodOath.new(c2, f2, "2019-10-14")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
