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


c1=Cult.new("White Tigers", "London", "Don't think twice", 1989)
c2=Cult.new("Brother", "Berlin", "tbc", 2012)
c3=Cult.new("Sisters", "New York", "Old School", 2012)
c4=Cult.new("Little Brothers", "Berlin", "tbc", 2013)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
