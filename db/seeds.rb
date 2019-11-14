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


puts "Creating workspaces..."

Workspace.create!(
  name: "Workspace in lovely home",
  address: "Sarphatistraat 35, Amsterdam",
  capacity: 2,
  company: "",
  remote_photo_url: "https://images.pexels.com/photos/389818/pexels-photo-389818.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  price_per_hour: 4,
  general_description: "I have an extra spot in my house for someone to work. Its is a comfortable table with a nice view. And most important FREE coffee!",
  user: user
  )

Workspace.create!(
  name: "Workspace in a design hotel",
  address: "Sarphatistraat 47, Amsterdam",
  capacity: 8,
  company: "CitzenM",
  remote_photo_url: "https://images.pexels.com/photos/2041627/pexels-photo-2041627.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500(102 kB)",
  price_per_hour: 5,
  general_description: "Come sit here! Sit together with like-minded people. Very good wifi and lunch",
  user: user
  )

Workspace.create!(
  name: "Workspace modern office place",
  address: "Herengracht 124, Amsterdam",
  capacity: 7,
  company: "Spaces",
  remote_photo_url: "https://images.pexels.com/photos/3182763/pexels-photo-3182763.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  price_per_hour: 6,
  general_description: "Spaces Herengracht offers private office spaces, flexible workspaces and creative meeting rooms to suit the needs of your business as it grows.!",
  user: user
  )





# type = %w[Private Company]
# gd = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec pretium enim, id vulputate ipsum. Praesent faucibus tortor ligula, convallis tristique ante pretium ut. Ut vel rhoncus felis. Praesent quis tellus malesuada diam condimentum porta id in sem. Maecenas at purus magna massa nunc.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut tempor odio. Vivamus ultricies vestibulum magna. Cras sed arcu quis nulla blandit luctus sit amet pellentesque urna. Aenean lobortis vestibulum lorem, eu luctus turpis commodo vel. Aliquam pretium nunc in metus convallis cras amet.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet elit pretium, semper quam ac, dignissim nunc. Maecenas mi elit, imperdiet non tellus et, blandit consequat arcu. Mauris metus."]

# 10.times do
#   Workspace.create!(
#     name: "workspace in #{Faker::Address.community}",
#     address: Faker::Address.street_address,
#     company: Faker::Company.name,
#     type: type.sample
#     price_per_hour: (1..10).to_a.sample,
#     capacity: (1..10).to_a.sample,
#     photo: "https://unsplash.com/photos/Z9Rx4im9qLs",
#     user: user,
#     general_description: gd.sample

#   )
  puts "created workspace"

