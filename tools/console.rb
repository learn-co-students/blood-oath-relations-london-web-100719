require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new("sharks", "NY", 2010, "sloooooogan")
c2 = Cult.new("jets", "London", 2014, "slogaaaaaaaaan")
c3 = Cult.new("dibs", "London", 2022, "saan")

f1 = Follower.new("Tim", 30, "sharks sharks sharks")
f2 = Follower.new("Ryan", 21, "jets4lyfe")
f3 = Follower.new("Tom", 46, "jets")

BloodOath.new(Time.new.month, c1, f1)
BloodOath.new(Time.new.month, c2, f2)
BloodOath.new(Time.new.month, c2, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
