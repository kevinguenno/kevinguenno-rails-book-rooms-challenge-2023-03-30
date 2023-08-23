# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning db"

Booking.destroy_all
Room.destroy_all
Hotel.destroy_all
User.destroy_all

puts "creating user"

user1 = User.create!({
  email: "laeticia.guerin@gmail.com",
  password: "123456"
})

puts "creating hotels"

hotel1 = Hotel.create!({
  name: "Le marabou",
  address: "47 Rue de la Riveterie, Nantes"
})


hotel2 = Hotel.create!({
  name: "Le grand hotel",
  address: "6 rue de la galissonnière, Nantes"
})

hotel3 = Hotel.create!({
  name: "Le petit hotel",
  address: "25 rue copernic, Nantes"
})

hotel4 = Hotel.create!({
  name: "L'hotel pas cher",
  address: "47 rue des ajoncs, Nantes"
})

puts "creating rooms"

room1 = Room.new({
  price_per_night: 49.9,
  capacity: 3
})
room1.hotel = hotel1
room1.save!

room2 = Room.new({
  price_per_night: 39.5,
  capacity: 2
})
room2.hotel = hotel1
room2.save!

room3 = Room.new({
  price_per_night: 69.5,
  capacity: 3
})
room3.hotel = hotel2
room3.save!

room4 = Room.new({
  price_per_night: 39.5,
  capacity: 2
})
room4.hotel = hotel2
room4.save!

room5 = Room.new({
  price_per_night: 25,
  capacity: 1
})
room5.hotel = hotel3
room5.save!

room6 = Room.new({
  price_per_night: 45,
  capacity: 3
})
room6.hotel = hotel3
room6.save!

room7 = Room.new({
  price_per_night: 35,
  capacity: 1
})
room7.hotel = hotel3
room7.save!

room8 = Room.new({
  price_per_night: 38,
  capacity: 2
})
room8.hotel = hotel4
room8.save!

room9 = Room.new({
  price_per_night: 47,
  capacity: 3
})
room9.hotel = hotel4
room9.save!

room10 = Room.new({
  price_per_night: 42,
  capacity: 2
})
room10.hotel = hotel4
room10.save!

puts "done"
