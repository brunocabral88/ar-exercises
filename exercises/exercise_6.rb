require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bruno", last_name: "Farias", hourly_rate: 40)
@store1.employees.create(first_name: "Larry", last_name: "Page", hourly_rate: 30)
@store1.employees.create(first_name: "Xunda", last_name: "Ferry", hourly_rate: 20)

@store2 = Store.find_by(name: "Richmond")
@store2.employees.create(first_name: "Niceman", last_name: "Thompson", hourly_rate: 30)
@store2.employees.create(first_name: "Terry", last_name: "Crews", hourly_rate: 20)
