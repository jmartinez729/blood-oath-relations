require_relative '../config/environment.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/follower.rb'
require_relative '../app/models/bloodoath.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# name, location, founding_year, slogan
c1 = Cult.new("flatiron", "new york", 2012, "code is love")
c2 = Cult.new("cult of khorne", "plane of blood", 2012, "blood for the blood god")
c3 = Cult.new("cult of cthulhu", "new york", 600000, "blub blub")



# name, age, life_motto
f1 = Follower.new("Tony", 29, "I don't know")
f2 = Follower.new("John", 31, "Kill me please")
f3 = Follower.new("Isaac", 85, "I gotta do a thing")
f4 = Follower.new("4", 85, "I gotta do a thing")
f5 = Follower.new("5", 85, "I gotta do a thing")
f6 = Follower.new("6", 85, "I gotta do a thing")
f7 = Follower.new("7", 85, "I gotta do a thing")
f8 = Follower.new("8", 85, "I gotta do a thing")
f9 = Follower.new("9", 85, "I gotta do a thing")
f10 = Follower.new("10", 85, "I gotta do a thing")
f11 = Follower.new("11", 2, "I gotta do a thing")


# follower, cult, initiation_date
b1 = Bloodoath.new(f1, c1)
b2 = Bloodoath.new(f2, c2)
b3 = Bloodoath.new(f3, c2)
b4 = Bloodoath.new(f4, c2)
b5 = Bloodoath.new(f5, c2)
b6 = Bloodoath.new(f6, c2)
b7 = Bloodoath.new(f7, c2)
b8 = Bloodoath.new(f8, c2)
b9 = Bloodoath.new(f9, c2)
b10 = Bloodoath.new(f10, c2)
b11 = Bloodoath.new(f10, c2)
b12 = Bloodoath.new(f10, c2)






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
