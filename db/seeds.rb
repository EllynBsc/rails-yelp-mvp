# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
30.times do
  restaurant = Restaurant.new(
    name: Faker::Cat.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(9),
    category: Restaurant::CATEGORIES.sample
    )
  restaurant.save!
end

#  15.times do
#   review = Review.new(
#     content: Faker::Lorem.paragraph,
#     rating: Faker::Number.between(1, 5),
#     restaurant: restaurants.sample
#     )
#   review.save!
# end

# Restaurant.destroy_all
# restaurants_attributes = [
#   {
#     name:         "Epicure au Bristol",
#     address:      "112 rue du Fg St-Honoré 75008 Paris",
#     phone_number: 0607572387,
#     rating:        3
#   },
#   {
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     phone_number: 0607572388,
#     rating:        1
#   },
#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     phone_number: 0607572389,
#     rating:        3
#   }
#   {
#     name:         "Bocuse",
#     address:      "route de Paris 69160 Lyon",
#     phone_number: 0607572380,
#     rating:        4
#   }
#   {
#     name:         "",
#     address:      "route de Paris 69160 Lyon",
#     phone_number: 0607572385,
#     rating:        3
#   }
# ]
# ]
# restaurants_attributes.each { |params| Restaurant.create!(params) }
