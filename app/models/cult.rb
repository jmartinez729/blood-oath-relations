class Cult
  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower, initiation_date)
    Bloodoath.new(follower, self, initiation_date)
  end

  def cult_population
    population.count
  end

  def population
    Bloodoath.all.select do |bloodoather|
      bloodoather.cult == self
    end
  end

  def followers
    population.map do |bloodoather|
      bloodoather.follower
    end
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    self.all.select do |cult|
      cult.founding_year == founding_year
    end
  end

  def average_age
    combine_age = 0
    followers.each do |follower|
      combine_age += follower.age
    end
    combine_age.to_f / population.count
  end

  def my_followers_mottos
    followers.map { |follower| follower.life_motto }.join(" ~ ")
  end

  def self.least_popular
    # population = nil
    # low_cult = nil
    # self.all.each do |cult|
    #   if population == nil || population > cult.cult_population
    #
    #     population = cult.cult_population
    #     low_cult = cult
    #   end
    # end
    # low_cult
    all.sort_by {|cult| cult.cult_population}.first
  end

  def self.location_hash
    locations_hash = Hash.new(0) #default argument for Hash works instead of nil
    self.all.each do |cult|
      locations_hash[cult.location] += 1 #cult.location = location
    end
    locations_hash
  end

  def self.most_common_location #returns a String that is the location with the most cults
    sorted_location_hash = self.location_hash.sort_by do |location, popularity|
      popularity
    end
    sorted_location_hash.last.first
  end #new york

end #end of Cult class
