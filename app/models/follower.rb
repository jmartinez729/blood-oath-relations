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
  end #Bloodoath

  def join_cult(cult, initiation_date) #takes in argument of Cult instance and adds this follower to the cult's list of followers
    Bloodoath.new(self, cult, initiation_date)
  end

  def self.of_a_certain_age(age)#age from follower
    self.all.select do |follower|
      follower.age >= age
    end
  end

  def my_cults
    cults.map do |bloodoath|
      bloodoath.cult
    end
  end

  def my_cult_slogans #prints out all slogans for this follower's cult
    self.my_cults.map { |cult| cult.slogan }.join(", ")
  end

  def self.top_ten #returns an Array of followers; they are the ten most active followers
    sorted_followers = self.all.sort_by do |follower|
      follower.my_cults.count
    end #sorting by least active to most active

    sorted_followers[-10..-1]
  end



end #end of Follower class
