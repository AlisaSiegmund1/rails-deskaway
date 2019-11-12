# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.delete_all
Workspace.delete_all

user = User.create!(
  email: 'user@mail.com',
  password: 'password'
)

10.times do
  Workspace.create!(
    name: "workspace in #{Faker::Address.community}",
    address: Faker::Address.street_address,
    company: Faker::Company.name,
    price_per_hour: (1..10).to_a.sample,
    capacity: (1..10).to_a.sample,
    photo: "https://unsplash.com/photos/Z9Rx4im9qLs",
    user: user
  )
  puts "created workspace"
end
