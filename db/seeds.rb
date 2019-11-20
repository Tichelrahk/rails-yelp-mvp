# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
array_of_restos = %w[chinese italian japanese french belgian]
15.times do
  r = Restaurant.new(
    name: Faker::Games::ElderScrolls.city, #=> Solitude
    address: Faker::Games::ElderScrolls.race, #=> "Larkin Fork"
    category: array_of_restos.sample
  )
  r.save
end

puts "Finished #{Restaurant.all.length} times"
