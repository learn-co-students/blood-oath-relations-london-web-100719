require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("hells angels", "united states", 1972, "let's ride")
c2 = Cult.new("rajneeshi", "united states", 1978, "love is all!")
c3 = Cult.new("midsommar", "sweden", 2019, "neverending day")

f1 = Follower.new("gordy", 28, "are we really doing this?")
f2 = Follower.new("lara", 30, "i am a cat")
f3 = Follower.new("caro", 25, "i accidentally a thing")

b1 = BloodOath.new(f1, c1, 2019-01-01)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
