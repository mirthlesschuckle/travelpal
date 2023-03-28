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

Destination.create(name: "New York", country: "United States", address: "New York", description: "The city that never sleeps.", image_path: "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
Destination.create(name: "Paris", country: "France", address: "Paris", description: "The city of love and light.", image_path: "https://images.unsplash.com/photo-1550340499-a6c60fc8287c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")

puts 'creating activities...'

# New York
Activity.create(name: "Broadway Show", activity_type: "Entertainment", description: "Experience the excitement of a live Broadway show in the heart of New York City.", destination_id: Destination.find_by(name: "New York").id)
Activity.create(name: "Central Park Bike Tour", activity_type: "Outdoor Activity", description: "Explore the beauty of Central Park on a guided bike tour with stunning views of the city skyline.", destination_id: Destination.find_by(name: "New York").id)
Activity.create(name: "Empire State Building Observation Deck", activity_type: "Sightseeing", description: "Take in panoramic views of the city from the top of the iconic Empire State Building.", destination_id: Destination.find_by(name: "New York").id)
Activity.create(name: "New York Pizza Tour", activity_type: "Food Tour", description: "Indulge in some of the city's most delicious pizza while learning about the history of pizza making in New York.", destination_id: Destination.find_by(name: "New York").id)
# Paris
Activity.create(name: "Louvre Museum Tour", activity_type: "Art and Culture", description: "Explore the world-renowned Louvre Museum and its collection of art and artifacts spanning thousands of years.", destination_id: Destination.find_by(name: "Paris").id)
Activity.create(name: "Seine River Cruise", activity_type: "Sightseeing", description: "Take a leisurely boat ride along the Seine River and enjoy breathtaking views of Paris' iconic landmarks.", destination_id: Destination.find_by(name: "Paris").id)
Activity.create(name: "Montmartre Walking Tour", activity_type: "Historical Tour", description: "Discover the bohemian neighborhood of Montmartre on a guided walking tour, home to many famous artists and writers.", destination_id: Destination.find_by(name: "Paris").id)
Activity.create(name: "French Wine Tasting", activity_type: "Food and Drink", description: "Sample some of France's best wines and learn about the country's rich winemaking history on a guided wine tasting tour.", destination_id: Destination.find_by(name: "Paris").id)

puts 'COMPLETED!'
