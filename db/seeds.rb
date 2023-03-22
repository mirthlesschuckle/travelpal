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

Destination.create(name: "New York", country: "United States", address: "New York", description: "The city that never sleeps.")
Destination.create(name: "Miami", country: "United States", address: "Miami", description: "White-sand beaches, warm climate, and delicious cuisine.")
Destination.create(name: "Paris", country: "France", address: "Paris", description: "The city of love and light.")
Destination.create(name: "Marseille", country: "France", address: "Marseille", description: "Home to revered Mediterranean weather and some beautiful natural landmarks and beaches.")
Destination.create(name: "Rome", country: "Italy", address: "Rome", description: "The city of ancient history.")
Destination.create(name: "Venice", country: "Italy", address: "Venice", description: "The city of romantic gondola rides and winding streets.")
Destination.create(name: "Sydney", country: "Australia", address: "Sydney", description: "The city of iconic landmarks.")
Destination.create(name: "Florence", country: "Italy", address: "Florence", description: "The city of Renaissance art and architecture.")
Destination.create(name: "San Francisco", country: "United States", address: "San Francisco", description: "The city of the Golden Gate Bridge and the Bay Area.")
Destination.create(name: "Los Angeles", country: "United States", address: "Los Angeles", description: "The city of Hollywood and the beach.")
Destination.create(name: "Istanbul", country: "Turkey", address: "Istanbul", description: "The city of the Bosphorus and the Blue Mosque.")
Destination.create(name: "Prague", country: "Czech Republic", address: "Prague", description: "The city of the Charles Bridge and the Prague Castle.")
Destination.create(name: "Budapest", country: "Hungary", address: "Budapest", description: "The city of the Danube and the Buda Castle.")
Destination.create(name: "Vienna", country: "Austria", address: "Vienna", description: "The city of the Vienna Opera House and the Schönbrunn Palace.")
Destination.create(name: "Buenos Aires", country: "Argentina", address: "Buenos Aires", description: "The city of the Tango and the Recoleta Cemetery.")
Destination.create(name: "Rio de Janeiro", country: "Brazil", address: "Rio de Janeiro", description: "The city of the Christ the Redeemer Statue and the Sugarloaf Mountain.")
Destination.create(name: "London", country: "United Kingdom", address: "London", description: "The city of royal heritage.")
Destination.create(name: "Tokyo", country: "Japan", address: "Tokyo,", description: "The city of technology and tradition.")
Destination.create(name: "Berlin", country: "Germany", address: "Berlin", description: "The city of historical events and modern life.")
Destination.create(name: "Dresden", country: "Germany", address: "Dresden", description: "The city of the Frauenkirche and the Zwinger Palace.")
Destination.create(name: "Bangkok", country: "Thailand", address: "Bangkok", description: "The city of vibrant culture and delicious food.")
Destination.create(name: "Dubai", country: "UAE", address: "Dubai", description: "The city of luxury and innovation.")
Destination.create(name: "Cape Town", country: "South Africa", address: "Cape Town", description: "The city of natural beauty and adventure.")
Destination.create(name: "Barcelona", country: "Spain", address: "Barcelona", description: "The city of stunning architecture and beaches.")
Destination.create(name: "Madrid", country: "Spain", address: "Madrid", description: "The city of the Royal Palace and the Prado Museum.")
Destination.create(name: "Amsterdam", country: "Netherlands", address: "Amsterdam", description: "The city of canals and vibrant nightlife.")
Destination.create(name: "Seoul", country: "South Korea", address: "Seoul", description: "The city of K-pop and delicious street food.")
Destination.create(name: "Marrakech", country: "Morocco", address: "Marrakech", description: "The city of colorful markets and rich culture.")
Destination.create(name: "Cancun", country: "Mexico", address: "Cancun", description: "The city of white sand beaches and turquoise waters.")
Destination.create(name: "Edinburgh", country: "United Kingdom", address: "Edinburgh", description: "The city of medieval history and stunning castles.")
Destination.create(name: "Havana", country: "Cuba", address: "Havana", description: "The city of vintage cars and vibrant music.")
Destination.create(name: "Santorini", country: "Greece", address: "Santorini", description: "The city of picturesque white-washed buildings and stunning sunsets.")
Destination.create(name: "Athens", country: "Greece", address: "Athens", description: "The city of ancient history and modern life.")
Destination.create(name: "Bima", country: "Indonesia", address: "Bima", description: "The city of traditional markets and beautiful beaches.")
Destination.create(name: "Jakarta", country: "Indonesia", address: "Jakarta", description: "The city of modern skyscrapers and traditional markets.")

puts 'creating activities...'

destinations = Destination.all

destinations.each do |destination|
  Activity.create(name: "Tower Climbing", activity_type: "Adventure", description: "Climb the famous tower.", destination_id: destination.id)
  Activity.create(name: "Guided City Tour", activity_type: "Culture", description: "See all of this amazing city.", destination_id: destination.id)
  Activity.create(name: "Museums", activity_type: "History", description: "Visit famous museums.", destination_id: destination.id)
end

puts 'COMPLETED!'
