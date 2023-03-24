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
Destination.create(name: "Santorini", country: "Greece", address: "Santorini", description: "The island of stunning sunsets and white-washed houses.", image_path: "santorini.jpg")
Destination.create(name: "Marrakech", country: "Morocco", address: "Marrakech", description: "The city of markets and Moroccan architecture.", image_path: "marrakech.jpg")

puts 'creating activities...'

destinations = Destination.all

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
# Sydney
Activity.create(name: "Taronga Zoo", activity_type: "Wildlife Experience", description: "Visit Taronga Zoo and get up close with native Australian wildlife, including kangaroos, koalas and more.", destination_id: Destination.find_by(name: "Sydney").id)
Activity.create(name: "Bondi Beach Surfing Lesson", activity_type: "Outdoor Activity", description: "Learn how to surf on the iconic waves of Bondi Beach with experienced instructors.", destination_id: Destination.find_by(name: "Sydney").id)
Activity.create(name: "Sydney Opera House Tour", activity_type: "Art and Culture", description: "Go behind the scenes of the iconic Sydney Opera House on a guided tour of this architectural masterpiece.", destination_id: Destination.find_by(name: "Sydney").id)
Activity.create(name: "The Rocks Foodie Tour", activity_type: "Food Tour", description: "Explore the historic neighborhood of The Rocks and sample some of Sydney's best food and drink on a walking tour.", destination_id: Destination.find_by(name: "Sydney").id)
# Istanbul
Activity.create(name: "Hagia Sophia Museum Tour", activity_type: "Art and Culture", description: "Discover the history and architecture of the Hagia Sophia, a UNESCO World Heritage site and former church and mosque.", destination_id: Destination.find_by(name: "Istanbul").id)
Activity.create(name: "Take a Turkish Bath", activity_type: "Spa and Wellness", description: "Relax and rejuvenate with a traditional Turkish bath experience, including a massage and steam bath.", destination_id: Destination.find_by(name: "Istanbul").id)
Activity.create(name: "Explore Topkapi Palace", activity_type: "Historical Tour", description: "Step back in time and discover the opulent history of the Ottoman Empire at the Topkapi Palace Museum.", destination_id: Destination.find_by(name: "Istanbul").id)
Activity.create(name: "Sunset Bosphorus Dinner Cruise", activity_type: "Fine Dining", description: "Enjoy a romantic dinner cruise along the Bosphorus Strait, taking in the stunning views of Istanbul at sunset.", destination_id: Destination.find_by(name: "Istanbul").id)
# Rio de Janeiro
Activity.create(name: "Christ the Redeemer Statue Tour", activity_type: "Sightseeing", description: "Visit the iconic Christ the Redeemer Statue and take in breathtaking views of Rio de Janeiro from atop Corcovado Mountain.", destination_id: Destination.find_by(name: "Rio de Janeiro").id)
Activity.create(name: "Rio Carnival Experience", activity_type: "Entertainment", description: "Join the party at the world-famous Rio Carnival, complete with music, dance, and vibrant costumes.", destination_id: Destination.find_by(name: "Rio de Janeiro").id)
Activity.create(name: "Sugarloaf Mountain Cable Car Ride", activity_type: "Sightseeing", description: "Take a thrilling cable car ride to the top of Sugarloaf Mountain for panoramic views of the city and surrounding mountains.", destination_id: Destination.find_by(name: "Rio de Janeiro").id)
Activity.create(name: "Tijuca Forest Jeep Tour", activity_type: "Outdoor Activity", description: "Explore the lush Tijuca Forest in a 4x4 jeep, home to an incredible array of flora and fauna.", destination_id: Destination.find_by(name: "Rio de Janeiro").id)
# Tokyo
Activity.create(name: "Tokyo Tower Observation Deck", activity_type: "Sightseeing", description: "Take in stunning views of Tokyo from the observation deck of the iconic Tokyo Tower.", destination_id: Destination.find_by(name: "Tokyo").id)
Activity.create(name: "Harajuku Fashion Tour", activity_type: "Fashion and Shopping", description: "Explore the trendy neighborhood of Harajuku and discover the latest Japanese fashion trends.", destination_id: Destination.find_by(name: "Tokyo").id)
Activity.create(name: "Tsukiji Fish Market Tour", activity_type: "Food Tour", description: "Experience the world's largest fish market and sample some of Tokyo's freshest seafood on a guided tour.", destination_id: Destination.find_by(name: "Tokyo").id)
Activity.create(name: "Sumo Wrestling Tournament", activity_type: "Sports and Entertainment", description: "Watch the ancient sport of sumo wrestling in action at a live tournament in Tokyo.", destination_id: Destination.find_by(name: "Tokyo").id)
# Bangkok
Activity.create(name: "Wat Phra Kaew and Grand Palace Tour", activity_type: "Historical Tour", description: "Visit the stunning Wat Phra Kaew temple and Grand Palace, home to the Thai royal family.", destination_id: Destination.find_by(name: "Bangkok").id)
Activity.create(name: "Chao Phraya River Cruise", activity_type: "Sightseeing", description: "Take a relaxing boat ride along the Chao Phraya River and soak up the beauty of Bangkok's architecture and skyline.", destination_id: Destination.find_by(name: "Bangkok").id)
Activity.create(name: "Thai Cooking Class", activity_type: "Food and Drink", description: "Learn how to cook delicious Thai dishes from expert chefs and take home the skills to impress your friends and family.", destination_id: Destination.find_by(name: "Bangkok").id)
Activity.create(name: "Chatuchak Weekend Market", activity_type: "Fashion and Shopping", description: "Explore one of the world's largest markets, with thousands of vendors selling everything from clothes to handicrafts to street food.", destination_id: Destination.find_by(name: "Bangkok").id)
# Dubai
Activity.create(name: "Burj Khalifa At The Top", activity_type: "Sightseeing", description: "Take a high-speed elevator to the top of the world's tallest building, the Burj Khalifa, and enjoy breathtaking views of Dubai.", destination_id: Destination.find_by(name: "Dubai").id)
Activity.create(name: "Dubai Desert Safari", activity_type: "Outdoor Activity", description: "Experience the beauty of the Dubai desert with a thrilling 4x4 ride, camel ride, and traditional Bedouin dinner.", destination_id: Destination.find_by(name: "Dubai").id)
Activity.create(name: "Dubai Mall Shopping", activity_type: "Fashion and Shopping", description: "Shop 'til you drop at the Dubai Mall, one of the world's largest malls, with hundreds of stores and restaurants.", destination_id: Destination.find_by(name: "Dubai").id)
Activity.create(name: "Dubai Fountain Show", activity_type: "Entertainment", description: "Experience the world's largest choreographed fountain system, with water jets shooting up to 500 feet high.", destination_id: Destination.find_by(name: "Dubai").id)
# Cape Town
Activity.create(name: "Table Mountain Cable Car Ride", activity_type: "Sightseeing", description: "Take a scenic cable car ride to the top of Table Mountain for breathtaking views of Cape Town and the surrounding ocean.", destination_id: Destination.find_by(name: "Cape Town").id)
Activity.create(name: "Cape Peninsula Tour", activity_type: "Outdoor Activity", description: "Discover the natural beauty of Cape Town's rugged coastline on a guided tour of the Cape Peninsula.", destination_id: Destination.find_by(name: "Cape Town").id)
Activity.create(name: "Wine Tasting in Stellenbosch", activity_type: "Food and Drink", description: "Indulge in some of South Africa's best wines on a guided tasting tour in the picturesque town of Stellenbosch.", destination_id: Destination.find_by(name: "Cape Town").id)
Activity.create(name: "Robben Island Tour", activity_type: "Historical Tour", description: "Visit the former prison on Robben Island, where Nelson Mandela was held for many years, and learn about the country's struggle for democracy.", destination_id: Destination.find_by(name: "Cape Town").id)
# Havana
Activity.create(name: "Vintage Car Tour", activity_type: "Historical Tour", description: "Take a ride in a classic vintage car and explore the historic streets of Havana in style.", destination_id: Destination.find_by(name: "Havana").id)
Activity.create(name: "Cigar Rolling Workshop", activity_type: "Art and Culture", description: "Learn how to roll your own Cuban cigars from expert cigar makers and take home your handmade creations.", destination_id: Destination.find_by(name: "Havana").id)
Activity.create(name: "Havana Music Tour", activity_type: "Entertainment", description: "Experience the vibrant music scene of Havana, with live performances by local musicians in clubs and bars throughout the city.", destination_id: Destination.find_by(name: "Havana").id)
Activity.create(name: "Old Havana Walking Tour", activity_type: "Historical Tour", description: "Discover the rich history of Old Havana on a guided walking tour, with visits to historic sites and landmarks.", destination_id: Destination.find_by(name: "Havana").id)
# Santorini
Activity.create(name: "Santorini Sunset Cruise", activity_type: "Boat Tour", description: "Watch the sunset over the Aegean Sea while cruising along the Santorini coast.", destination_id: Destination.find_by(name: "Santorini").id)
Activity.create(name: "Ancient Thira Ruins Tour", activity_type: "Historical Site", description: "Explore the ruins of Ancient Thira and learn about the island's history and culture.", destination_id: Destination.find_by(name: "Santorini").id)
Activity.create(name: "Wine Tasting Tour", activity_type: "Food Tour", description: "Sample some of Santorini's famous wines while touring the island's wineries.", destination_id: Destination.find_by(name: "Santorini").id)
Activity.create(name: "Black Sand Beach Tour", activity_type: "Outdoor Activity", description: "Relax on the unique black sand beaches of Santorini and take in the stunning volcanic landscapes.", destination_id: Destination.find_by(name: "Santorini").id)
# Marrakech
Activity.create(name: "Marrakech Medina Tour", activity_type: "Sightseeing", description: "Explore the vibrant markets and historical landmarks of Marrakech's Medina.", destination_id: Destination.find_by(name: "Marrakech").id)
Activity.create(name: "Atlas Mountains Hike", activity_type: "Outdoor Activity", description: "Hike through the stunning Atlas Mountains and take in breathtaking views of the surrounding landscape.", destination_id: Destination.find_by(name: "Marrakech").id)
Activity.create(name: "Moroccan Cooking Class", activity_type: "Food Tour", description: "Learn to cook traditional Moroccan dishes with a local chef.", destination_id: Destination.find_by(name: "Marrakech").id)
Activity.create(name: "Jardin Majorelle Visit", activity_type: "Sightseeing", description: "Discover the beautiful Jardin Majorelle and its colorful gardens and buildings.", destination_id: Destination.find_by(name: "Marrakech").id)

puts 'COMPLETED!'
