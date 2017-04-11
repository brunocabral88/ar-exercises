require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@s1 = Store.create({ name: "Surrey", annual_revenue: 224000, womens_apparel: true })
@s2 = Store.create({ name: "Whistler", annual_revenue: 1900000, mens_apparel: true })
@s3 = Store.create({ name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true })

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Name: #{store.name}"
  puts "Annual revenue: #{store.annual_revenue}"
end

puts "Stores with womens apparel with annual revenue under 1M"
Store.where(womens_apparel: true).where("annual_revenue < 1000000").find_each do |store|  
  puts "Name: #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
end
