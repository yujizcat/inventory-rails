# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seed working"


#Inventory.destroy_all


test_inventory = Inventory.new({
    item: "item2",
    units: rand(1..100),
    price: rand(1..100),
    category: "Book",
    sale: true,
    description: "this is a item2"
})

test_inventory.save

if (test_inventory)
    puts "Inventory create"
end
