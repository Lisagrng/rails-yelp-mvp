# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: 123_456_678, category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '5A High St, London E1 6PQ', phone_number: 12_345_678, category: 'italian' }
sushi = { name: 'Sushi', address: '15 oui street, Japan F5 8JU', phone_number: 123_456_678, category: 'japanese' }
ramen = { name: 'Ramen', address: 'Muraille , China G6', phone_number: 123_456_678, category: 'chinese' }
bistrot = { name: 'Bistrot', address: '7 rue de la République, France', phone_number: 12_345_678, category: 'french' }
[dishoom, pizza_east, sushi, ramen, bistrot].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
