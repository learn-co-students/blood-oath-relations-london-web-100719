require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


f1=Follower.new("John Doe", 34, "wassup")
f2=Follower.new("Mike Man", 44, "yolo")
f3=Follower.new("Lora White", 34, "to be or not to be")
f4=Follower.new("Lora Black", 44, "ja ja")
f5=Follower.new("Lora Snow", 30, "hmmm")


c1=Cult.new("White Tigers", "London", "Don't think twice", 1989)
c2=Cult.new("Brother", "Berlin", "tbc", 2012)
c3=Cult.new("Sisters", "New York", "Old School", 2012)
c4=Cult.new("Little Brothers", "New York", "tbc", 2013)

c2.recruit_follower(f1)
c1.recruit_follower(f2)

c2.recruit_follower(f2)
c2.recruit_follower(f5)
c2.recruit_follower(f3)
c3.recruit_follower(f2)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
