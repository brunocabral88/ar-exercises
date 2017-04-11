require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store = Store.find(1)
@store2 = Store.find(2)
@store.update(name: "Toronto")
