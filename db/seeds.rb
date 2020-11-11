# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# name address phone_number category

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Artist.name + "'s",
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  5.times do
    Review.create!(
      restaurant: restaurant,
      content: Faker::Restaurant.review,
      rating: rand(5)
    )
  end
end