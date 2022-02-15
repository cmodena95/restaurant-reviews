require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up DB"
Restaurant.destroy_all
puts "DB is clean"

puts "Creating restaurants"
10.times do 
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    stars: rand(1..5),
    chef_name: ['Gordon Ramsey', 'Antony Bourdain', 'Jamie Oliver'].sample
  )

  puts "#{restaurant.name} was created"
end

puts "Done"