# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning the database...'
User.destroy_all
Destination.destroy_all
Activity.destroy_all

puts 'creating users...'

User.create(first_name: "Michael", last_name: "Catania", email: "michael@gmail.com", password: "123456")
User.create(first_name: "Jantine", last_name: "Derksen", email: "jantine@gmail.com", password: "123456")
User.create(first_name: "Jianhao", last_name: "Yu", email: "jian@gmail.com", password: "123456")
User.create(first_name: "Benjamin", last_name: "Hall", email: "ben@gmail.com", password: "123456")

puts 'creating destinations...'

Destination.create(name: "New York", address: "New York, NY", description: "The city that never sleeps.")
Destination.create(name: "Paris", address: "Paris, France", description: "The city of love and light.")
Destination.create(name: "Rome", address: "Rome, Italy", description: "The city of ancient history.")
Destination.create(name: "Sydney", address: "Sydney, Australia", description: "The city of iconic landmarks.")

puts 'creating activities...'

destinations = Destination.all

destinations.each do |destination|
  Activity.create(name: "Tower Climbing", type: "", description: "Climb the famous tower.", destination_id: destination.id)
  Activity.create(name: "Guided City Tour", type: "", description: "See all of this amazing city.", destination_id: destination.id)
  Activity.create(name: "Museums", type: "", description: "Visit famous museums.", destination_id: destination.id)
end

puts 'COMPLETED!'
