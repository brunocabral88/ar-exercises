require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a store name to save it: "
name = gets.chomp
store = Store.new(name: name)
if (store.save)
  puts "Saved succesfully"
else
  puts store.errors.full_messages
end

