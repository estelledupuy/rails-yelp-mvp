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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
itsu = { name: "Itsu", address: "London Picadilly", category: "japanese"}
bistrot = { name: "Bistrot", address: "Republique", category: "french"}
frites = { name: "Frites", address: "Place de Bruxelles", category: "belgian"}

[dishoom, pizza_east, itsu, bistrot, frites].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


#   validates :name, presence: true
#   validates :address, presence: true
#   validates :category, presence: true
#   validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "Category is not included in the list" }

# t.string "name"
# t.string "address"
# t.string "category"
# t.string "phone_number"
