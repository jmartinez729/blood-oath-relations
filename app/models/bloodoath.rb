class Bloodoath
  attr_reader :follower, :cult, :initiation_date

  @@all = []

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = Time.now

    @@all << self
  end

  def self.all
    @@all
  end

end #end of Bloodoath class
