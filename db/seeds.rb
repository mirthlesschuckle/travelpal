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

Destination.create(name: "New York", address: "New York", description: "The city that never sleeps.")
Destination.create(name: "Paris", address: "Paris", description: "The city of love and light.")
Destination.create(name: "Rome", address: "Rome", description: "The city of ancient history.")
Destination.create(name: "Sydney", address: "Sydney", description: "The city of iconic landmarks.")
Destination.create(name: "London", address: "London", description: "The city of royal heritage.")
Destination.create(name: "Tokyo", address: "Tokyo,", description: "The city of technology and tradition.")
Destination.create(name: "Berlin", address: "Berlin", description: "The city of historical events and modern life.")
Destination.create(name: "Bangkok", address: "Bangkok", description: "The city of vibrant culture and delicious food.")
Destination.create(name: "Dubai", address: "Dubai", description: "The city of luxury and innovation.")
Destination.create(name: "Cape Town", address: "Cape Town", description: "The city of natural beauty and adventure.")

puts 'creating activities...'

destinations = Destination.all

destinations.each do |destination|
  Activity.create(name: "Tower Climbing", activity_type: "Adventure", description: "Climb the famous tower.", destination_id: destination.id)
  Activity.create(name: "Guided City Tour", activity_type: "Culture", description: "See all of this amazing city.", destination_id: destination.id)
  Activity.create(name: "Museums", activity_type: "History", description: "Visit famous museums.", destination_id: destination.id)
end

puts 'COMPLETED!'
