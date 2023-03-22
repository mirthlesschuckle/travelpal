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

Destination.create(name: "New York", country: "United States", address: "New York", description: "The city that never sleeps.", image_path: "new-york.jpg")
Destination.create(name: "Paris", country: "France", address: "Paris", description: "The city of love and light.", image_path: "paris.jpg")
Destination.create(name: "Sydney", country: "Australia", address: "Sydney", description: "The city of iconic landmarks.", image_path: "sydney.jpg")
Destination.create(name: "Istanbul", country: "Turkey", address: "Istanbul", description: "The city of the Bosphorus and the Blue Mosque.", image_path: "istanbul.jpg")
Destination.create(name: "Rio de Janeiro", country: "Brazil", address: "Rio de Janeiro", description: "The city of the Christ the Redeemer Statue and the Sugarloaf Mountain.", image_path: "rio-de-janeiro.jpg")
Destination.create(name: "Tokyo", country: "Japan", address: "Tokyo,", description: "The city of technology and tradition.", image_path: "tokyo.jpg")
Destination.create(name: "Bangkok", country: "Thailand", address: "Bangkok", description: "The city of vibrant culture and delicious food.", image_path: "bangkok.jpg")
Destination.create(name: "Dubai", country: "UAE", address: "Dubai", description: "The city of luxury and innovation.", image_path: "dubai.jpg")
Destination.create(name: "Cape Town", country: "South Africa", address: "Cape Town", description: "The city of natural beauty and adventure.", image_path: "cape-town.jpg")
Destination.create(name: "Havana", country: "Cuba", address: "Havana", description: "The city of vintage cars and vibrant music.", image_path: "havana.jpg")


puts 'creating activities...'

destinations = Destination.all

destinations.each do |destination|
  Activity.create(name: "Tower Climbing", activity_type: "Adventure", description: "Climb the famous tower.", destination_id: destination.id)
  Activity.create(name: "Guided City Tour", activity_type: "Culture", description: "See all of this amazing city.", destination_id: destination.id)
  Activity.create(name: "Museums", activity_type: "History", description: "Visit famous museums.", destination_id: destination.id)
end

puts 'COMPLETED!'
