require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Sum of total annual revenue"
puts Store.sum(:annual_revenue)

puts "Average annual revenue"
puts Store.average(:annual_revenue)

puts "# of stores generating over 1M annually"
puts Store.where("annual_revenue > 1000000").count