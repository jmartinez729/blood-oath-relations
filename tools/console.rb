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

# follower, cult, initiation_date
b1 = Bloodoath.new(f1, c1, 20180730)
b2 = Bloodoath.new(f2, c2, 20180917)
b3 = Bloodoath.new(f1, c2, 20180731)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
