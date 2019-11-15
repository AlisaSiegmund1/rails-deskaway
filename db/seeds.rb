# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

User.delete_all
Workspace.delete_all

user = User.create!(
  email: 'user@mail.com',
  password: 'password'
)


# WORKSPACE SEEDS---------------------------------------------------
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
  remote_photo_url: "https://images.unsplash.com/photo-1556761175-4b46a572b786?ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80",
  price_per_hour: 6,
  general_description: "Spaces Herengracht offers private office spaces, flexible workspaces and creative meeting rooms to suit the needs of your business as it grows.!",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Champs-Elysees startup",
  address: "Avenue des Champs-Elysees, Paris",
  capacity: 2,
  company: "Startup",
  remote_photo_url: "https://images.unsplash.com/photo-1559136555-9303baea8ebd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  price_per_hour: 5,
  general_description: "It's is a comfortable table with a nice view, in the best part of paris",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Home Office",
  address: "17 Rue Linné, Paris",
  capacity: 2,
  company: "Personal office",
  remote_photo_url: "https://images.unsplash.com/photo-1526657782461-9fe13402a841?ixlib=rb-1.2.1&auto=format&fit=crop&w=638&q=80",
  price_per_hour: 5,
  general_description: "Great home office, for focused individuals who want a home away from home wokr experience",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Office",
  address: "Chausseestraße 19, 10115 Berlin",
  capacity: 2,
  company: "Personal office",
  remote_photo_url: "https://images.unsplash.com/photo-1497681883844-82b4f0a359a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  price_per_hour: 5,
  general_description: "Great home office, in the tech industry hub of berlin",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Highbury desk",
  address: "12 Highbury Park, Highbury East, London",
  capacity: 2,
  company: "Startup office",
  remote_photo_url: "https://images.unsplash.com/photo-1531482615713-2afd69097998?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  price_per_hour: 10,
  general_description: "Great office, in the tech industry hub of berlin",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Office park",
  address: "Espaço amoreiras, Rua Dom João V 24,Lisbon",
  capacity: 2,
  company: "LEAP",
  remote_photo_url: "https://images.unsplash.com/photo-1554835374-d00937300b17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
  price_per_hour: 10,
  general_description: "LEAP's mission is to contribute positively and decisively to the development of Portuguese SMEs and to leverage entrepreneurship in Portugal.",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Spaces Arroba Office ",
  address: "Pallars 193 Barcelona",
  capacity: 2,
  company: "Spaces Arroba",
  remote_photo_url: "https://images.unsplash.com/photo-1485087322071-235c96bb4297?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1491&q=80",
  price_per_hour: 10,
  general_description: "The innovation center of Barcelona. Located within the innovative 22 @ district, Spaces 22 Arroba is privileged to have an extraordinary urban and metropolitan centrality .",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Spaces Arroba Office ",
  address: "Pallars 193 Barcelona",
  capacity: 2,
  company: "Spaces Arroba",
  remote_photo_url: "https://images.unsplash.com/photo-1485087322071-235c96bb4297?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1491&q=80",
  price_per_hour: 10,
  general_description: "The innovation center of Barcelona. Located within the innovative 22 @ district, Spaces 22 Arroba is privileged to have an extraordinary urban and metropolitan centrality .",
  user: user
  )

#Work spaces created by Siya Ndiki
Workspace.create!(
  name: "Antwerp Office ",
  address: "Lange Gasthuisstraat 29, Antwerpen",
  capacity: 2,
  company: "Startup Village",
  remote_photo_url: "https://businessinantwerp.eu/sites/default/files/styles/large_free/public/2017-06/Centrum_Startupvillage_Jasper_Leonard_foto_2.jpg?itok=Zfhbd_Mm",
  price_per_hour: 10,
  general_description: "StartupVillage is a unique site in the city centre, at the heart of Antwerp’s startup movement. It provides local startups with a 24/7 business environment, affordable office space, and a readily available network of knowledge and business expertise.",
  user: user
  )





# UTILITIY SEEDS---------------------------------------------------
puts "Creating utilities..."
Utility.create!(
  name: "pet friendly",
  description: "Tenant is allowed to bring a dog",
  icon: "fas fa-dog",
  )

Utility.create!(
  name: "provides coffee",
  description: "Workspace owner has a coffee-machine",
  icon: "fas fa-coffee",
  )
Utility.create!(
  name: "fast wifi",
  description: "Workspace is providing fast internet",
  icon: "fas fa-wifi",
  )
Utility.create!(
  name: "provides screens",
  description: "Workspace provides multiple Screens",
  icon: "fas fa-desktop",
  )
Utility.create!(
  name: "provides meeting rooms",
  description: "Workspace has multiple meeting/ conference rooms that can be used by the tenant",
  icon: "fas fa-users",
  )
Utility.create!(
  name: "chatting/ phone calls are allowed",
  description: "Tenant doesnt have to be silent",
  icon:"far fa-comments",
  )
Utility.create!(
  name: "provides canteen or kitchen",
  description: "provides canteen or other convienent food places",
  icon: "fas fa-utensils",
  )
Utility.create!(
  name: "provides flipboards",
  description: "Workspace provides flipboards that can be used by the tenant",
  icon: "far fa-clipboard",
  )
Utility.create!(
  name: "provides office utilties",
  description: "Workspace provides office utilites such as pens, postits etc." ,
  icon: "fas fa-pencil-ruler",
  )
Utility.create!(
  name: "silent working",
  description: "Tenant must be silent!",
  icon: "fas fa-volume-mute",
  )
Utility.create!(
  name:"provides printer",
  description: "Workspace has a printer that can be used by the tenant",
  icon: "fas fa-print",
  )

  puts "created workspace"
  puts "created utilities"

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

