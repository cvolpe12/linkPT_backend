# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "begin seed"

chris = Contact.create(
  first_name: "Chris",
  last_name: "Volpe",
  phone: "8455198990",
  email: "christopher.volpe12@gmail.com",
  photo: nil
)

puts "end seed"
