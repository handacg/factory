# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
12.times do
  Assembly.create(name: Faker::Lovecraft.location)
end

rand(2000).times do
  x = Part.new(part_number: (rand(30000000)+10000000).to_s)
  x.assemblies = Assembly.find(rand(14)+1), Assembly.find(rand(14)+1), Assembly.find(rand(14)+1)
  x.save
end