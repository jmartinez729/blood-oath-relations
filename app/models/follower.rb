class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto


    @@all << self
  end

  def self.all
    @@all
  end

  def cults #returns all cults Follower belongs to
    Bloodoath.all.select do |bloodoather|
      bloodoather.follower == self
    end
  end

  def join_cult(cult, initiation_date) #takes in argument of Cult instance and adds this follower to the cult's list of followers
    Bloodoath.new(self, cult, initiation_date)
  end

  def self.of_a_certain_age(age)#age from follower
    self.all.select do |follower|
      follower.age >= age
    end
  end



end #end of Follower class
