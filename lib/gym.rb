class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|mem| mem.gym == self}
  end

  def lifters
    memberships.map{|member| member.lifter}
  end

  def lifters_name
    lifters.name
  end

  def combine_lift
    lifters.map{|a|a.lift_total}.reduce(:+)
  end



end
