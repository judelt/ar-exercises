require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Exercise 6: One-to-many association
# Add some data into employees.
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mike", last_name: "Murray", hourly_rate: 40)
@store1.employees.create(first_name: "Dylan", last_name: "Holmes", hourly_rate: 35)
@store2.employees.create(first_name: "Charles", last_name: "Dickens", hourly_rate: 35)
@store2.employees.create(first_name: "Maria", last_name: "Lopez", hourly_rate: 65)
@store2.employees.create(first_name: "Luke", last_name: "M.", hourly_rate: 50)
