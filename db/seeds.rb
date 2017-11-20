

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating 10 users with a meal and booking"

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

chefs = []
5.times do |i|
  chefs << User.find(i + 1)
end

chefs.each do |chef|
  2.times do
     chef.meals.create(
     name: Faker::Food.dish,
     description: Faker::Coffee.notes,
     photo: "https://source.unsplash.com/collection/140489/200x200",
     category: %w(chinese italian japanese french brazillian).sample,
     price: Faker::Commerce.price,
     city: Faker::Address.city
      )
  end
end


buyers = []
5.times do |i|
  buyers << User.find(i - 1)
end

buyers.each do |buyer|
  buyer.bookings.create(
    date: Faker::Date.forward(23),
    price: Faker::Commerce.price,
    people: (0..10).sample,
    address: Faker::Address.street_address
    )
end



