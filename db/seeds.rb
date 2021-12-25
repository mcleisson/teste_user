# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

User.destroy_all
puts "Registros deletados."

rm = RestClient.get 'https://randomuser.me/api/?nat=BR&seed=giga&inc=gender,name,email,picture&results=30&format=json'
rm_array = JSON.parse(rm)["results"]
rm_array1 = JSON.parse(rm)["info"]

rm_array.each do |(u)|
 User.create(
 name: u["first"],
 email: u["email"],
 gender: u["gender"],
 picture_large: u["large"],
 seed: u["seed"],
 nat: u["info.nat"]
 )
end
puts "30 registros inseridos no banco!"