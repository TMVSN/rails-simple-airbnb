# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all

5.times do
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 6),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false),
    price_per_night: rand(25..8000),
    number_of_guest: rand(1..30)
  )
end