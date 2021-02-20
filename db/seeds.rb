# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Deleting all properties'
Property.destroy_all

puts 'Creating some properties'


img1 = URI.open('https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
property1 = Property.create(
  address: "Flughafenstraße 21, Berlin",
  sq_meters: 60,
  year: 1972,
  num_of_rooms: 2,
  rent_price: 850,
  type_of_property: "Apartment",
  state: "Good"
  )

property1.image.attach(io: img1, filename:'apt1.jpg', content_type: 'image/jpg')

#Property2
img2 = URI.open('https://images.unsplash.com/photo-1536376072261-38c75010e6c9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2851&q=80')
property2 = Property.create(
  address: "Friedrichstraße 210, Berlin",
  sq_meters: 85,
  year: 2020,
  num_of_rooms: 2,
  rent_price: 1150,
  type_of_property: "Apartment",
  state: "New"
  )

property2.image.attach(io: img2, filename:'apt2.jpg', content_type: 'image/jpg')

#Property 3

img3 = URI.open('https://images.unsplash.com/photo-1572120360610-d971b9d7767c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
property3 = Property.create(
  address: "Ostburger Weg 1, Berlin",
  sq_meters: 134,
  year: 1999,
  num_of_rooms: 4,
  rent_price: 1350,
  type_of_property: "House",
  state: "To be reformed"
  )

property3.image.attach(io: img3, filename:'apt3.jpg', content_type: 'image/jpg')









puts 'Properties created!'
puts "You now have #{Property.count} properties."
