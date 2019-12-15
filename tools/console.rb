# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

ron = Lifter.new("Ron", 80)
al = Lifter.new("Al",96)
she = Lifter.new("Shery",44)



pure = Gym.new("Pure")
dl = Gym.new("David")



mem1 = Membership.new(pure,ron,200)
mem2 = Membership.new(pure,she,200)
mem3 = Membership.new(dl,al,140)
mem4 = Membership.new(dl,ron,140)

binding.pry

puts "Gains!"
