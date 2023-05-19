# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0123457867", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0423657889", category: "italian"}
cesar =  {name: "Cesar Restaurant", address: "12 rue de Paris, 73012 Paris", phone_number: "0623657889", category: "french"}
sushi_time =  {name: "Sushi Time", address: "56 Rue High St, 94470 Boissy", phone_number: "0667657889", category: "japanese"}
royal_chinese =  {name: "Royal Chinese", address: "34 rue du Repos, 94100 Saint Maur", phone_number: "0734678990", category: "chinese"}

[dishoom, pizza_east, cesar, sushi_time, royal_chinese].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
