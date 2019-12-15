class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end

  def memberships
    Membership.all.select{|member| member.lifter == self}
  end

  def gyms
    memberships.map{|mem| mem.gym}
  end

  def self.average_lift
    (self.all.map{|lifter| lifter.lift_total}.reduce(:+).to_f / self.all.count).round(2)
  end

  def total_cost
    memberships.map{|mem| mem.cost}.reduce(:+)
  end

  def sign_up(gym,cost)
    Membership.new(gym,self,cost)
  end
   
  



end
