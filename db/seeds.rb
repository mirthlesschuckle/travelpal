puts 'cleaning the database...'
ChatRequest.destroy_all
User.destroy_all
Destination.destroy_all
Activity.destroy_all
Trip.destroy_all
Match.destroy_all
Chatroom.destroy_all
Message.destroy_all
Review.destroy_all

puts 'creating users...'

User.create(first_name: "Alex", last_name: "Johnson", email: "alex@gmail.com", password: "123456", bio: "I am a software engineer with a passion for solving complex problems. I have experience working with Ruby on Rails, React, and PostgreSQL. In my free time, I enjoy hiking and trying new restaurants in my city.")
User.create(first_name: "Benjamin", last_name: "Hall", email: "ben@gmail.com", password: "123456", bio: "I am a graphic designer with a keen eye for detail. I have experience working with Adobe Creative Suite and have a strong understanding of typography and color theory. In my free time, I enjoy painting and playing the guitar.")
User.create(first_name: "Jantine", last_name: "Derksen", email: "jantine@gmail.com", password: "123456", bio: "I am a marketing professional with a focus on social media and content marketing. I have experience managing campaigns on multiple platforms, including Instagram, Facebook, and Twitter. In my free time, I enjoy reading and practicing yoga.")
User.create(first_name: "Jianhao", last_name: "Yu", email: "jian@gmail.com", password: "123456", bio: "I am a data scientist with experience in machine learning and statistical analysis. I have a strong background in Python and have worked with libraries such as TensorFlow and PyTorch. In my free time, I enjoy travelling and exploring new places.")
User.create(first_name: "Michael", last_name: "Catania", email: "michael@gmail.com", password: "123456", bio: "I am a product manager with experience in agile methodology and user research. I have worked on projects in various industries, including healthcare and e-commerce. In my free time, I enjoy playing basketball and reading sci-fi novels.")
User.create(first_name: "Taylor", last_name: "Lee", email: "taylor@gmail.com", password: "123456", bio: "I am a freelance writer with experience in copywriting and journalism. I have written for various publications, including the New York Times and the Guardian. In my free time, I enjoy hiking and practicing meditation.")

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
Destination.create(name: "London", country: "United Kingdom", address: "London", description: "The city of iconic landmarks and royal heritage.", image_path: "london.jpg")
Destination.create(name: "Rome", country: "Italy", address: "Rome", description: "The city of ancient ruins and mouth-watering cuisine.", image_path: "rome.jpg")
Destination.create(name: "Barcelona", country: "Spain", address: "Barcelona", description: "The city of art and architecture, with a beach vibe.", image_path: "barcelona.jpg")
Destination.create(name: "Amsterdam", country: "Netherlands", address: "Amsterdam", description: "The city of canals, bicycles and unique cultural experiences.", image_path: "amsterdam.jpg")
Destination.create(name: "Hong Kong", country: "China", address: "Hong Kong", description: "The city of bustling markets, stunning skyline and delicious food.", image_path: "hong-kong.jpg")
Destination.create(name: "Berlin", country: "Germany", address: "Berlin", description: "The city of history, culture and vibrant nightlife.", image_path: "berlin.jpg")
Destination.create(name: "Dublin", country: "Ireland", address: "Dublin", description: "The city of friendly locals, lively pubs and literary heritage.", image_path: "dublin.jpg")
Destination.create(name: "Prague", country: "Czech Republic", address: "Prague", description: "The city of fairy-tale castles, ornate bridges and beer.", image_path: "prague.jpg")
Destination.create(name: "Budapest", country: "Hungary", address: "Budapest", description: "The city of thermal baths, grand architecture and rich history.", image_path: "budapest.jpg")
Destination.create(name: "Venice", country: "Italy", address: "Venice", description: "The city of romantic gondola rides, charming canals and elegant palaces.", image_path: "venice.jpg")
Destination.create(name: "Edinburgh", country: "United Kingdom", address: "Edinburgh", description: "The city of medieval history, stunning scenery and whisky.", image_path: "edinburgh.jpg")
Destination.create(name: "Vienna", country: "Austria", address: "Vienna", description: "The city of classical music, coffee houses and imperial architecture.", image_path: "vienna.jpg")
Destination.create(name: "Seoul", country: "South Korea", address: "Seoul", description: "The city of cutting-edge technology, vibrant street food and ancient palaces.", image_path: "seoul.jpg")
Destination.create(name: "Krakow", country: "Poland", address: "Krakow", description: "The city of historic squares, medieval castles and Polish traditions.", image_path: "krakow.jpg")
Destination.create(name: "Vancouver", country: "Canada", address: "Vancouver", description: "The city of natural beauty, multiculturalism and outdoor adventure.", image_path: "vancouver.jpg")
Destination.create(name: "San Francisco", country: "United States", address: "San Francisco", description: "The city of stunning hills, iconic bridges and diverse culture.", image_path: "san-francisco.jpg")
Destination.create(name: "Copenhagen", country: "Denmark", address: "Copenhagen", description: "The city of Scandinavian design, cycling culture and hygge.", image_path: "copenhagen.jpg")
Destination.create(name: "Beijing", country: "China", address: "Beijing", description: "The city of imperial palaces, the Great Wall and rich history.", image_path: "beijing.jpg")
Destination.create(name: "Hoi An", country: "Vietnam", address: "Hoi An", description: "The city of lanterns and ancient temples.", image_path: "hoi-an.jpg")
Destination.create(name: "Reykjavik", country: "Iceland", address: "Reykjavik", description: "The city of geothermal hot springs and northern lights.", image_path: "reykjavik.jpg")
Destination.create(name: "Zanzibar", country: "Tanzania", address: "Zanzibar", description: "The island of pristine beaches and spice markets.", image_path: "zanzibar.jpg")
Destination.create(name: "Montreal", country: "Canada", address: "Montreal", description: "The city of French-Canadian charm and culinary delights.", image_path: "montreal.jpg")
Destination.create(name: "Cusco", country: "Peru", address: "Cusco", description: "The city of ancient Incan ruins and breathtaking Andean scenery.", image_path: "cusco.jpg")
Destination.create(name: "Sa Pa", country: "Vietnam", address: "Sa Pa", description: "The town of rice terraces and hill tribes.", image_path: "sapa.jpg")
Destination.create(name: "Bali", country: "Indonesia", address: "Denpasar", description: "The island of tropical paradise and Hindu temples.", image_path: "bali.jpg")
Destination.create(name: "Cairo", country: "Egypt", address: "Cairo", description: "The city of pyramids and ancient wonders.", image_path: "cairo.jpg")
Destination.create(name: "Krabi", country: "Thailand", address: "Krabi", description: "The province of stunning limestone cliffs and turquoise waters.", image_path: "krabi.jpg")
Destination.create(name: "Machu Picchu", country: "Peru", address: "Machu Picchu", description: "The ancient Incan citadel in the Andes.", image_path: "machu-picchu.jpg")
Destination.create(name: "Phuket", country: "Thailand", address: "Phuket", description: "The island of beaches and nightlife.", image_path: "phuket.jpg")
Destination.create(name: "Lisbon", country: "Portugal", address: "Lisbon", description: "The city of historic charm and delicious seafood.", image_path: "lisbon.jpg")
Destination.create(name: "Kyoto", country: "Japan", address: "Kyoto", description: "The city of traditional Japanese culture and stunning temples.", image_path: "kyoto.jpg")
Destination.create(name: "San Diego", country: "United States", address: "San Diego", description: "The city of beaches and craft beer.", image_path: "san-diego.jpg")
Destination.create(name: "Queenstown", country: "New Zealand", address: "Queenstown", description: "The town of adventure sports and mountain scenery.", image_path: "queenstown.jpg")
Destination.create(name: "Kruger National Park", country: "South Africa", address: "Kruger National Park", description: "The national park of incredible wildlife and natural beauty.", image_path: "kruger-national-park.jpg")
Destination.create(name: "Florence", country: "Italy", address: "Florence", description: "The city of Renaissance art and architecture.", image_path: "florence.jpg")
Destination.create(name: "Sao Paulo", country: "Brazil", address: "Sao Paulo", description: "The city of vibrant culture and street art.", image_path: "sao-paulo.jpg")
Destination.create(name: "Dubrovnik", country: "Croatia", address: "Dubrovnik", description: "The city of medieval walls and stunning Adriatic Sea views.", image_path: "dubrovnik.jpg")
Destination.create(name: "Munich", country: "Germany", address: "Munich", description: "The city of Oktoberfest and Bavarian charm.", image_path: "munich.jpg")
Destination.create(name: "Cape Verde", country: "Cape Verde", address: "Cape Verde", description: "The island nation of tropical beauty and vibrant culture.", image_path: "cape-verde.jpg")
Destination.create(name: "Banff", country: "Canada", address: "Banff", description: "The town of stunning lakes and majestic mountains.", image_path: "banff.jpg")
Destination.create(name: "Amalfi Coast", country: "Italy", address: "Amalfi", description: "The coastal area of colorful villages and picturesque landscapes.", image_path: "amalfi-coast.jpg")

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
# London
Activity.create(name: "London Eye Ride", activity_type: "Sightseeing", description: "Take a ride on the London Eye, the world's tallest observation wheel, and enjoy breathtaking views of the city.", destination_id: Destination.find_by(name: "London").id)
Activity.create(name: "London Walking Tour", activity_type: "Historical Tour", description: "Explore the historic streets of London on a guided walking tour.", destination_id: Destination.find_by(name: "London").id)
Activity.create(name: "London Pub Crawl", activity_type: "Entertainment", description: "Enjoy a night out in London's lively pub scene with a guided pub crawl.", destination_id: Destination.find_by(name: "London").id)
Activity.create(name: "London Food Tour", activity_type: "Food Tour", description: "Sample some of London's best food on a guided food tour.", destination_id: Destination.find_by(name: "London").id)
# Rome
Activity.create(name: "Colosseum Tour", activity_type: "Historical Tour", description: "Explore the Colosseum, one of the world's most famous landmarks, and learn about its history and architecture.", destination_id: Destination.find_by(name: "Rome").id)
Activity.create(name: "Vatican Museums Tour", activity_type: "Historical Tour", description: "Explore the Vatican Museums, home to some of the world's most famous works of art.", destination_id: Destination.find_by(name: "Rome").id)
Activity.create(name: "Rome Food Tour", activity_type: "Food Tour", description: "Sample some of Rome's best food on a guided food tour.", destination_id: Destination.find_by(name: "Rome").id)
Activity.create(name: "Rome Walking Tour", activity_type: "Historical Tour", description: "Explore the historic streets of Rome on a guided walking tour.", destination_id: Destination.find_by(name: "Rome").id)
# Barcelona
Activity.create(name: "Sagrada Familia", activity_type: "Sightseeing", description: "Visit the awe-inspiring basilica designed by renowned architect Antoni Gaudí.", destination_id: Destination.find_by(name: "Barcelona").id)
Activity.create(name: "Boqueria Market Tour", activity_type: "Food Tour", description: "Experience the sights, smells and tastes of one of Europe's most famous markets.", destination_id: Destination.find_by(name: "Barcelona").id)
Activity.create(name: "Camp Nou Stadium Tour", activity_type: "Sports Tour", description: "Get behind the scenes access to one of the world's most iconic football stadiums.", destination_id: Destination.find_by(name: "Barcelona").id)
Activity.create(name: "Gothic Quarter Walking Tour", activity_type: "Walking Tour", description: "Explore the winding streets of the historic Gothic Quarter and discover the city's medieval past.", destination_id: Destination.find_by(name: "Barcelona").id)
# Amsterdam
Activity.create(name: "Van Gogh Museum", activity_type: "Art Museum", description: "Discover the life and work of one of the world's most famous artists.", destination_id: Destination.find_by(name: "Amsterdam").id)
Activity.create(name: "Canal Cruise", activity_type: "Boat Tour", description: "See Amsterdam from a different perspective on a relaxing canal cruise.", destination_id: Destination.find_by(name: "Amsterdam").id)
Activity.create(name: "Rijksmuseum", activity_type: "Art Museum", description: "Explore the world-class collection of Dutch art and history at the Rijksmuseum.", destination_id: Destination.find_by(name: "Amsterdam").id)
Activity.create(name: "Anne Frank House", activity_type: "Historic Site", description: "Learn about the inspiring story of Anne Frank and her family during World War II.", destination_id: Destination.find_by(name: "Amsterdam").id)
# Hong Kong
Activity.create(name: "Victoria Peak Tram Ride", activity_type: "Sightseeing", description: "Take a scenic tram ride to the top of Victoria Peak for panoramic views of Hong Kong.", destination_id: Destination.find_by(name: "Hong Kong").id)
Activity.create(name: "Tian Tan Buddha", activity_type: "Sightseeing", description: "Visit the impressive bronze statue and spiritual landmark on Lantau Island.", destination_id: Destination.find_by(name: "Hong Kong").id)
Activity.create(name: "Symphony of Lights Show", activity_type: "Entertainment", description: "Watch the spectacular light and sound show over Victoria Harbour.", destination_id: Destination.find_by(name: "Hong Kong").id)
Activity.create(name: "Dim Sum Cooking Class", activity_type: "Cooking Class", description: "Learn how to make the famous Cantonese dish and enjoy a delicious meal.", destination_id: Destination.find_by(name: "Hong Kong").id)
# Berlin
Activity.create(name: "Brandenburg Gate", activity_type: "Sightseeing", description: "Visit the iconic symbol of Germany's reunification.", destination_id: Destination.find_by(name: "Berlin").id)
Activity.create(name: "Berlin Wall Memorial", activity_type: "Historic Site", description: "Explore the history and significance of the Berlin Wall at this poignant memorial.", destination_id: Destination.find_by(name: "Berlin").id)
Activity.create(name: "Pergamon Museum", activity_type: "Art Museum", description: "Discover the impressive collection of ancient artifacts at this world-renowned museum.", destination_id: Destination.find_by(name: "Berlin").id)
Activity.create(name: "Berlin Beer Tour", activity_type: "Food Tour", description: "Sample some of Berlin's finest brews and learn about the city's beer-making traditions.", destination_id: Destination.find_by(name: "Berlin").id)
# Dublin
Activity.create(name: "Guinness Storehouse", activity_type: "Brewery Tour", description: "Learn about the history of Ireland's most famous beer and enjoy a pint with a view.", destination_id: Destination.find_by(name: "Dublin").id)
Activity.create(name: "Trinity College Library", activity_type: "Historic Site", description: "See the stunning Long Room and the famous Book of Kells at this historic library.", destination_id: Destination.find_by(name: "Dublin").id)
Activity.create(name: "Dublin Castle", activity_type: "Historic Site", description: "Explore the centuries-old fortress and learn about Ireland's royal past.", destination_id: Destination.find_by(name: "Dublin").id)
Activity.create(name: "Dublin Literary Pub Crawl", activity_type: "Walking Tour", description: "Follow in the footsteps of famous Irish writers and enjoy a drink or two along the way.", destination_id: Destination.find_by(name: "Dublin").id)
# Prague
Activity.create(name: "Charles Bridge", activity_type: "Sightseeing", description: "Stroll across this historic bridge and enjoy stunning views of the city.", destination_id: Destination.find_by(name: "Prague").id)
Activity.create(name: "Prague Castle", activity_type: "Historic Site", description: "Explore the largest castle complex in the world and marvel at its Gothic and Baroque architecture.", destination_id: Destination.find_by(name: "Prague").id)
Activity.create(name: "Old Town Square", activity_type: "Sightseeing", description: "Admire the stunning architecture and lively atmosphere of this historic square.", destination_id: Destination.find_by(name: "Prague").id)
Activity.create(name: "Prague Beer Tour", activity_type: "Food Tour", description: "Sample some of the city's best brews and learn about the history of Czech beer-making.", destination_id: Destination.find_by(name: "Prague").id)
# Budapest
Activity.create(name: "Buda Castle", activity_type: "Historic Site", description: "Explore the historic castle complex and enjoy breathtaking views of the city.", destination_id: Destination.find_by(name: "Budapest").id)
Activity.create(name: "Chain Bridge", activity_type: "Sightseeing", description: "Cross the iconic suspension bridge and take in the stunning views of the Danube River.", destination_id: Destination.find_by(name: "Budapest").id)
Activity.create(name: "Thermal Bath Experience", activity_type: "Spa Experience", description: "Relax in one of the city's famous thermal baths and soak in the healing mineral waters.", destination_id: Destination.find_by(name: "Budapest").id)
Activity.create(name: "Hungarian Wine Tasting", activity_type: "Food Tour", description: "Sample some of Hungary's finest wines and learn about the country's wine-making traditions.", destination_id: Destination.find_by(name: "Budapest").id)
# Venice
Activity.create(name: "Gondola Ride", activity_type: "Sightseeing", description: "Experience the charm and romance of Venice on a classic gondola ride.", destination_id: Destination.find_by(name: "Venice").id)
Activity.create(name: "St. Mark's Basilica", activity_type: "Historic Site", description: "Admire the stunning mosaics and architecture of this famous cathedral.", destination_id: Destination.find_by(name: "Venice").id)
Activity.create(name: "Rialto Market Tour", activity_type: "Food Tour", description: "Explore the vibrant Rialto Market and sample some of Venice's best seafood and local produce.", destination_id: Destination.find_by(name: "Venice").id)
Activity.create(name: "Murano Glassblowing Experience", activity_type: "Art Experience", description: "Watch skilled artisans create beautiful glass art using traditional techniques on the island of Murano.", destination_id: Destination.find_by(name: "Venice").id)
# Edinburgh
Activity.create(name: "Edinburgh Castle", activity_type: "Historic Site", description: "Explore this iconic castle that has been the site of many important historical events.", destination_id: Destination.find_by(name: "Edinburgh").id)
Activity.create(name: "Whisky Tasting Tour", activity_type: "Food Tour", description: "Sample some of Scotland's finest whiskies and learn about the history of whisky making in Edinburgh.", destination_id: Destination.find_by(name: "Edinburgh").id)
Activity.create(name: "Royal Mile Walking Tour", activity_type: "Sightseeing", description: "Stroll along this historic street and learn about the city's rich history and culture.", destination_id: Destination.find_by(name: "Edinburgh").id)
Activity.create(name: "Arthur's Seat Hike", activity_type: "Outdoor Activity", description: "Enjoy stunning views of the city from the top of this extinct volcano.", destination_id: Destination.find_by(name: "Edinburgh").id)
# Vienna
Activity.create(name: "Schönbrunn Palace", activity_type: "Historic Site", description: "Explore the magnificent summer palace of the Habsburgs and its beautiful gardens.", destination_id: Destination.find_by(name: "Vienna").id)
Activity.create(name: "Vienna State Opera", activity_type: "Entertainment", description: "Experience a world-class opera performance in one of the most famous opera houses in the world.", destination_id: Destination.find_by(name: "Vienna").id)
Activity.create(name: "Viennese Coffeehouse Tour", activity_type: "Food Tour", description: "Indulge in some of the city's best coffee and pastries while learning about Vienna's coffeehouse culture.", destination_id: Destination.find_by(name: "Vienna").id)
Activity.create(name: "Vienna Woods Hike", activity_type: "Outdoor Activity", description: "Escape the city and enjoy a scenic hike through the beautiful Vienna Woods.", destination_id: Destination.find_by(name: "Vienna").id)
# Seoul
Activity.create(name: "Gyeongbokgung Palace", activity_type: "Historic Site", description: "Explore this iconic palace and learn about Korea's rich history and culture.", destination_id: Destination.find_by(name: "Seoul").id)
Activity.create(name: "Street Food Tour", activity_type: "Food Tour", description: "Sample some of the city's best street food and experience the vibrant local food scene.", destination_id: Destination.find_by(name: "Seoul").id)
Activity.create(name: "Namsan Tower", activity_type: "Sightseeing", description: "Take in panoramic views of the city from the top of this iconic tower.", destination_id: Destination.find_by(name: "Seoul").id)
Activity.create(name: "Korean Traditional Music Performance", activity_type: "Entertainment", description: "Experience a mesmerizing performance of traditional Korean music and dance.", destination_id: Destination.find_by(name: "Seoul").id)
# Krakow
Activity.create(name: "Wawel Castle", activity_type: "Historic Site", description: "Explore this beautiful castle that was the seat of Polish royalty for centuries.", destination_id: Destination.find_by(name: "Krakow").id)
Activity.create(name: "Auschwitz-Birkenau Memorial and Museum", activity_type: "Historic Site", description: "Visit the former Nazi concentration camp and pay tribute to the victims of the Holocaust.", destination_id: Destination.find_by(name: "Krakow").id)
Activity.create(name: "Pierogi Making Workshop", activity_type: "Food Tour", description: "Learn how to make traditional Polish dumplings and enjoy a delicious meal.", destination_id: Destination.find_by(name: "Krakow").id)
Activity.create(name: "Wieliczka Salt Mine Tour", activity_type: "Sightseeing", description: "Explore this fascinating underground world and learn about the history of salt mining.", destination_id: Destination.find_by(name: "Krakow").id)
# Vancouver
Activity.create(name: "Stanley Park", activity_type: "Outdoor Activity", description: "Explore this beautiful park that offers stunning views of the city and the sea.", destination_id: Destination.find_by(name: "Vancouver").id)
Activity.create(name: "Granville Island Public Market", activity_type: "Food Tour", description: "Indulge in delicious food and browse through unique artisanal products at this vibrant market.", destination_id: Destination.find_by(name: "Vancouver").id)
Activity.create(name: "Capilano Suspension Bridge", activity_type: "Sightseeing", description: "Cross this thrilling suspension bridge and enjoy breathtaking views of the surrounding nature.", destination_id: Destination.find_by(name: "Vancouver").id)
Activity.create(name: "Whale Watching Tour", activity_type: "Outdoor Activity", description: "Experience the thrill of spotting majestic whales and other marine wildlife in their natural habitat.", destination_id: Destination.find_by(name: "Vancouver").id)
# San Francisco
Activity.create(name: "Golden Gate Bridge", activity_type: "Sightseeing", description: "Take in the iconic views of this famous bridge that spans the Golden Gate strait.", destination_id: Destination.find_by(name: "San Francisco").id)
Activity.create(name: "Alcatraz Island Tour", activity_type: "Historic Site", description: "Visit the infamous prison island that was once home to some of America's most notorious criminals.", destination_id: Destination.find_by(name: "San Francisco").id)
Activity.create(name: "Fisherman's Wharf", activity_type: "Food Tour", description: "Indulge in fresh seafood and explore the lively atmosphere of this popular waterfront district.", destination_id: Destination.find_by(name: "San Francisco").id)
Activity.create(name: "San Francisco Cable Car Ride", activity_type: "Sightseeing", description: "Experience the charm of this historic cable car ride and enjoy panoramic views of the city.", destination_id: Destination.find_by(name: "San Francisco").id)
# Copenhagen
Activity.create(name: "Tivoli Gardens", activity_type: "Amusement Park", description: "Enjoy the rides, attractions and beautiful gardens of this famous amusement park in the heart of Copenhagen.", destination_id: Destination.find_by(name: "Copenhagen").id)
Activity.create(name: "Nyhavn", activity_type: "Sightseeing", description: "Take a stroll along the picturesque harbor, lined with colorful buildings and boats.", destination_id: Destination.find_by(name: "Copenhagen").id)
Activity.create(name: "The Little Mermaid Statue", activity_type: "Sightseeing", description: "Visit the iconic statue inspired by Hans Christian Andersen's fairy tale.", destination_id: Destination.find_by(name: "Copenhagen").id)
Activity.create(name: "Smørrebrød Tasting", activity_type: "Food Tour", description: "Sample the traditional Danish open-faced sandwiches and learn about their history and preparation.", destination_id: Destination.find_by(name: "Copenhagen").id)
# Beijing
Activity.create(name: "Forbidden City", activity_type: "Historic Site", description: "Explore the impressive palace complex that served as the imperial palace for almost 500 years.", destination_id: Destination.find_by(name: "Beijing").id)
Activity.create(name: "Great Wall of China", activity_type: "Sightseeing", description: "Visit one of the world's most iconic landmarks and walk along the ancient wall that stretches for thousands of miles.", destination_id: Destination.find_by(name: "Beijing").id)
Activity.create(name: "Temple of Heaven", activity_type: "Historic Site", description: "Marvel at the beautiful architecture and learn about the religious rituals that took place in this historic temple complex.", destination_id: Destination.find_by(name: "Beijing").id)
Activity.create(name: "Peking Duck Dinner", activity_type: "Food Tour", description: "Taste the famous crispy duck dish that originated in Beijing and enjoy a delicious Chinese feast.", destination_id: Destination.find_by(name: "Beijing").id)
# Hoi An
Activity.create(name: "Lantern-Making Workshop", activity_type: "Art and Crafts", description: "Learn how to make traditional lanterns from bamboo and silk with local artisans in Hoi An.", destination_id: Destination.find_by(name: "Hoi An").id)
Activity.create(name: "Bike Tour", activity_type: "Outdoor", description: "Explore the countryside around Hoi An on a leisurely bike ride, passing by rice paddies, villages, and rivers.", destination_id: Destination.find_by(name: "Hoi An").id)
Activity.create(name: "Cooking Class", activity_type: "Food and Drink", description: "Discover the flavors of Vietnamese cuisine with a hands-on cooking class in Hoi An, using fresh local ingredients.", destination_id: Destination.find_by(name: "Hoi An").id)
Activity.create(name: "My Son Sanctuary Tour", activity_type: "Historical", description: "Visit the ancient ruins of My Son Sanctuary, a UNESCO World Heritage Site dating back to the Cham Empire.", destination_id: Destination.find_by(name: "Hoi An").id)
# Reykjavik
Activity.create(name: "Northern Lights Tour", activity_type: "Nature", description: "Experience the natural wonder of the Aurora Borealis on a guided tour from Reykjavik.", destination_id: Destination.find_by(name: "Reykjavik").id)
Activity.create(name: "Blue Lagoon Spa", activity_type: "Relaxation", description: "Unwind in the geothermal waters of the Blue Lagoon, a luxurious spa set against a stunning volcanic landscape.", destination_id: Destination.find_by(name: "Reykjavik").id)
Activity.create(name: "Whale-Watching Cruise", activity_type: "Wildlife", description: "Get up close to Iceland's majestic marine mammals on a whale-watching excursion from Reykjavik.", destination_id: Destination.find_by(name: "Reykjavik").id)
Activity.create(name: "Golden Circle Tour", activity_type: "Scenic", description: "Explore Iceland's stunning natural beauty on a tour of the Golden Circle, including geysers, waterfalls, and the Thingvellir National Park.", destination_id: Destination.find_by(name: "Reykjavik").id)
# Zanzibar
Activity.create(name: "Spice Tour", activity_type: "Cultural", description: "Discover the island's rich history and cultural heritage on a guided tour of Zanzibar's spice farms.", destination_id: Destination.find_by(name: "Zanzibar").id)
Activity.create(name: "Beach Day", activity_type: "Relaxation", description: "Soak up the sun on one of Zanzibar's pristine beaches, with crystal-clear waters and powder-soft sand.", destination_id: Destination.find_by(name: "Zanzibar").id)
Activity.create(name: "Stone Town Walking Tour", activity_type: "Historical", description: "Explore the winding alleys and historic buildings of Stone Town, a UNESCO World Heritage Site known for its Swahili and Islamic architecture.", destination_id: Destination.find_by(name: "Zanzibar").id)
Activity.create(name: "Dhow Cruise", activity_type: "Boat Tours", description: "Sail on a traditional wooden dhow to a nearby island for a seafood barbecue and snorkeling in the coral reefs.", destination_id: Destination.find_by(name: "Zanzibar").id)
# Montreal
Activity.create(name: "Old Montreal Walking Tour", activity_type: "Historical", description: "Discoverthe history and architecture of Montreal's oldest neighborhood on a guided walking tour of Old Montreal.", destination_id: Destination.find_by(name: "Montreal").id)
Activity.create(name: "Montreal Museum of Fine Arts", activity_type: "Art and Culture", description: "Explore one of Canada's largest art museums, with over 44,000 works of art spanning centuries and continents.", destination_id: Destination.find_by(name: "Montreal").id)
Activity.create(name: "Mount Royal Park Hike", activity_type: "Outdoor", description: "Hike to the top of Mount Royal for stunning views of Montreal's skyline and the St. Lawrence River.", destination_id: Destination.find_by(name: "Montreal").id)
Activity.create(name: "Jean-Talon Market Visit", activity_type: "Food and Drink", description: "Experience Montreal's vibrant food scene at Jean-Talon Market, with over 300 vendors offering fresh produce, baked goods, and more.", destination_id: Destination.find_by(name: "Montreal").id)
# Cusco
Activity.create(name: "Machu Picchu Tour", activity_type: "Historical", description: "Discover the ancient Inca citadel of Machu Picchu, a UNESCO World Heritage Site and one of the world's most iconic destinations.", destination_id: Destination.find_by(name: "Cusco").id)
Activity.create(name: "Rainbow Mountain Hike", activity_type: "Outdoor", description: "Embark on a challenging hike to the colorful Rainbow Mountain, with stunning views of the Andes along the way.", destination_id: Destination.find_by(name: "Cusco").id)
Activity.create(name: "Peruvian Cooking Class", activity_type: "Food and Drink", description: "Learn to cook traditional Peruvian dishes using fresh ingredients at a local cooking school in Cusco.", destination_id: Destination.find_by(name: "Cusco").id)
Activity.create(name: "Sacred Valley Tour", activity_type: "Scenic", description: "Explore the breathtaking landscapes and ancient ruins of the Sacred Valley, a region of fertile farmland and historic sites near Cusco.", destination_id: Destination.find_by(name: "Cusco").id)
# Sa pa
Activity.create(name: "Trekking in Sapa", activity_type: "Outdoor", description: "Embark on a scenic trek through the picturesque hills and rice terraces of Sapa, meeting local ethnic communities along the way.", destination_id: Destination.find_by(name: "Sa Pa").id)
Activity.create(name: "Sapa Market Visit", activity_type: "Cultural", description: "Explore the vibrant local market in Sapa, featuring colorful produce, textiles, and handicrafts made by the Hmong and other ethnic minority groups.", destination_id: Destination.find_by(name: "Sa Pa").id)
Activity.create(name: "Homestay with Locals", activity_type: "Cultural", description: "Experience the warmth and hospitality of local families in Sapa by staying in a traditional homestay, sharing meals and cultural activities with your hosts.", destination_id: Destination.find_by(name: "Sa Pa").id)
Activity.create(name: "Fansipan Mountain Climb", activity_type: "Adventure", description: "Take on the challenge of climbing Fansipan Mountain, the highest peak in Indochina, with stunning views of the surrounding mountains and valleys.", destination_id: Destination.find_by(name: "Sa Pa").id)
# Bali
Activity.create(name: "Surfing Lesson", activity_type: "Outdoor", description: "Learn to ride the waves with a surfing lesson at one of Bali's famous beaches, with experienced instructors and top-notch equipment.", destination_id: Destination.find_by(name: "Bali").id)
Activity.create(name: "Ubud Rice Terraces Tour", activity_type: "Scenic", description: "Discover the natural beauty of Bali's rice terraces on a guided tour of the Ubud region, with stunning views and opportunities for hiking and photography.", destination_id: Destination.find_by(name: "Bali").id)
Activity.create(name: "Cooking Class", activity_type: "Food and Drink", description: "Learn the secrets of Balinese cuisine with a hands-on cooking class, using fresh local ingredients and traditional techniques.", destination_id: Destination.find_by(name: "Bali").id)
Activity.create(name: "Waterfall Adventure", activity_type: "Nature", description: "Explore Bali's stunning waterfalls on a guided trek, including Sekumpul Waterfall, considered one of the most beautiful in Southeast Asia.", destination_id: Destination.find_by(name: "Bali").id)
# Cairo
Activity.create(name: "Pyramids and Sphinx Tour", activity_type: "Historical", description: "Discover the ancient wonders of the Pyramids and Sphinx, the last surviving structures of the original Seven Wonders of the World.", destination_id: Destination.find_by(name: "Cairo").id)
Activity.create(name: "Egyptian Museum Visit", activity_type: "Art and Culture", description: "Explore the treasures of the Egyptian Museum, including artifacts from the pharaohs and the iconic golden mask of King Tutankhamun.", destination_id: Destination.find_by(name: "Cairo").id)
Activity.create(name: "Nile River Cruise", activity_type: "Boat Tours", description: "Experience the romance and mystery of the Nile River on a luxury cruise, with stops at ancient temples, colorful markets, and rural villages.", destination_id: Destination.find_by(name: "Cairo").id)
Activity.create(name: "Islamic Cairo Walking Tour", activity_type: "Cultural", description: "Discover the rich history and architecture of Islamic Cairo on a guided walking tour, including the Khan el-Khalili bazaar and the Al-Azhar Mosque.", destination_id: Destination.find_by(name: "Cairo").id)
# Krabi
Activity.create(name: "Island Hopping Tour", activity_type: "Nature", description: "Explore the stunning islands and beaches around Krabi on a boat tour, including stops at Koh Phi Phi, Railay Beach, and more.", destination_id: Destination.find_by(name: "Krabi").id)
Activity.create(name: "Rock Climbing Adventure", activity_type: "Outdoor", description: "Challenge yourself with a rock climbing excursion on the towering limestone cliffs of Railay Beach, with experienced guides and breathtaking views.", destination_id: Destination.find_by(name: "Krabi").id)
Activity.create(name: "Thai Cooking Class", activity_type: "Food and Drink", description: "Learn to cook delicious Thai dishes with fresh local ingredients at a cooking school in Krabi, with options for vegetarians and other dietary restrictions.", destination_id: Destination.find_by(name: "Krabi").id)
Activity.create(name: "Tiger Cave Temple Visit", activity_type: "Historical", description: "Climb the steep stairs to the Tiger Cave Temple, a Buddhist monastery perched on a hilltop with stunning views of the surrounding landscape.", destination_id: Destination.find_by(name: "Krabi").id)
# Machu Picchu
Activity.create(name: "Inca Trail Trek", activity_type: "Outdoor", description: "Embark on the legendary Inca Trail trek to Machu Picchu, a four-day journey through stunning Andean landscapes, including ancient ruins and mountain passes.", destination_id: Destination.find_by(name: "Machu Picchu").id)
Activity.create(name: "Machu Picchu Sunrise Tour", activity_type: "Historical", description: "Experience the magical sunrise over Machu Picchu, with a guided tour of the ancient citadel and surrounding ruins.", destination_id: Destination.find_by(name: "Machu Picchu").id)
Activity.create(name: "Peruvian Cultural Experience", activity_type: "Cultural", description: "Immerse yourself in the vibrant culture of Peru with a visit to a local community, including demonstrations of traditional weaving, music, and dance.", destination_id: Destination.find_by(name: "Machu Picchu").id)
Activity.create(name: "Amazon Rainforest Excursion", activity_type: "Nature", description: "Explore the incredible biodiversity of the Amazon rainforest with a guided excursion, including opportunities for wildlife viewing, birdwatching, and canoeing.", destination_id: Destination.find_by(name: "Machu Picchu").id)
# Phuket
Activity.create(name: "Phang Nga Bay Tour", activity_type: "Nature", description: "Discover the stunning limestone cliffs and emerald waters of Phang Nga Bay on a boat tour, including a visit to the iconic James Bond Island.", destination_id: Destination.find_by(name: "Phuket").id)
Activity.create(name: "Elephant Sanctuary Visit", activity_type: "Wildlife", description: "Interact with rescued elephants at a sanctuary in Phuket, feeding, bathing, and learning about these gentle giants in a responsible and ethical way.", destination_id: Destination.find_by(name: "Phuket").id)
Activity.create(name: "Muay Thai Boxing Class", activity_type: "Sports", description: "Learn the art of Muay Thai, Thailand's national sport, with a training session at a local gym in Phuket, with experienced instructors and high-quality equipment.", destination_id: Destination.find_by(name: "Phuket").id)
Activity.create(name: "Phuket Night Market Visit", activity_type: "Cultural", description: "Experience the vibrant sights, sounds, and flavors of Phuket's night markets, with street food, local crafts, and live entertainment.", destination_id: Destination.find_by(name: "Phuket").id)
# Lisbon
Activity.create(name: "Sintra Day Trip", activity_type: "Scenic", description: "Explore the fairy-tale castles and lush forests of Sintra, a UNESCO World Heritage Site and one of Portugal's most enchanting destinations.", destination_id: Destination.find_by(name: "Lisbon").id)
Activity.create(name: "Fado Show and Dinner", activity_type: "Entertainment", description: "Experience the soulful sounds of Fado, Portugal's traditional music, with a live performance and dinner at a local restaurant in Lisbon.", destination_id: Destination.find_by(name: "Lisbon").id)
Activity.create(name: "Lisbon City Tour", activity_type: "Historical", description: "Discover the rich history and architecture of Lisbon on a guided walking tour, including the Belem Tower, the Jeronimos Monastery, and the Alfama neighborhood.", destination_id: Destination.find_by(name: "Lisbon").id)
Activity.create(name: "Pasteis de Belem Workshop", activity_type: "Food and Drink", description: "Learn the secrets of Portugal's famous pastries, Pasteis de Belem, at a hands-on workshop in Lisbon, with plenty of samples to enjoy.", destination_id: Destination.find_by(name: "Lisbon").id)
# Kyoto
Activity.create(name: "Arashiyama Bamboo Grove Visit", activity_type: "Nature", description: "Walk through the serene Arashiyama Bamboo Grove, a peaceful oasis just outside Kyoto city center, with stunning views and photo opportunities.", destination_id: Destination.find_by(name: "Kyoto").id)
Activity.create(name: "Kinkaku-ji Temple Tour", activity_type: "Historical", description: "Visit the iconic Kinkaku-ji Temple, also known as the Golden Pavilion, a stunning Buddhist temple covered in gold leaf and surrounded by tranquil gardens.", destination_id: Destination.find_by(name: "Kyoto").id)
Activity.create(name: "Kyoto Tea Ceremony", activity_type: "Cultural", description: "Experience the art and culture of the Japanese tea ceremony, or chanoyu, in a traditional teahouse in Kyoto, with an expert tea master and elegant surroundings.", destination_id: Destination.find_by(name: "Kyoto").id)
Activity.create(name: "Gion Geisha District Walking Tour", activity_type: "Cultural", description: "Discover the fascinating history and traditions of the Gion Geisha District on a guided walking tour, with opportunities to spot geisha and maiko in their elegant attire.", destination_id: Destination.find_by(name: "Kyoto").id)
# San Diego
Activity.create(name: "San Diego Zoo Visit", activity_type: "Wildlife", description: "Explore one of the world's most famous zoos at the San Diego Zoo, with over 3,500 animals and a variety of exhibits and activities for all ages.", destination_id: Destination.find_by(name: "San Diego").id)
Activity.create(name: "Balboa Park Tour", activity_type: "Scenic", description: "Discover the beauty and culture of Balboa Park, a 1,200-acre urban park in San Diego featuring gardens, museums, theaters, and more.", destination_id: Destination.find_by(name: "San Diego").id)
Activity.create(name: "La Jolla Cove Snorkeling", activity_type: "Outdoor", description: "Experience the underwater wonders of La Jolla Cove, one of the best snorkeling spots in San Diego, with clear waters and abundant marine life.", destination_id: Destination.find_by(name: "San Diego").id)
Activity.create(name: "Gaslamp Quarter Food Tour", activity_type: "Food and Drink", description: "Taste the flavors of San Diego's historic Gaslamp Quarter on a guided food tour, sampling dishes from top restaurants and specialty shops.", destination_id: Destination.find_by(name: "San Diego").id)
# Queenstown
Activity.create(name: "Milford Sound Cruise", activity_type: "Nature", description: "Experience the breathtaking beauty of Milford Sound on a boat cruise, with towering mountains, cascading waterfalls, and abundant wildlife.", destination_id: Destination.find_by(name: "Queenstown").id)
Activity.create(name: "Skyline Gondola Ride", activity_type: "Scenic", description: "Take a scenic gondola ride to the top of Bob's Peak in Queenstown, with panoramic views of Lake Wakatipu and the surrounding mountains.", destination_id: Destination.find_by(name: "Queenstown").id)
Activity.create(name: "Bungee Jumping Adventure", activity_type: "Adventure", description: "Get your adrenaline pumping with a bungee jumping excursion in Queenstown, with options for different levels of difficulty and stunning views.", destination_id: Destination.find_by(name: "Queenstown").id)
Activity.create(name: "Wine Tasting Tour", activity_type: "Food and Drink", description: "Explore the famous wineries and vineyards of Central Otago on a guided wine tasting tour from Queenstown, with plenty of opportunities to sample world-class wines.", destination_id: Destination.find_by(name: "Queenstown").id)
# Kruger National Park
Activity.create(name: "Safari Game Drive", activity_type: "Wildlife", description: "Embark on an unforgettable game drive through Kruger National Park, one of the world's top wildlife reserves, with opportunities to spot the Big Five and other iconic African animals.", destination_id: Destination.find_by(name: "Kruger National Park").id)
Activity.create(name: "Bush Walk with Rangers", activity_type: "Outdoor", description: "Explore the natural beauty and diversity of Kruger National Park on a guided bush walk with experienced rangers, learning about the flora and fauna of the region.", destination_id: Destination.find_by(name: "Kruger National Park").id)
Activity.create(name: "Hot Air Balloon Safari", activity_type: "Nature", description: "Experience the thrill of a hot air balloon safari over Kruger National Park, with breathtaking views of the savannah landscape and wildlife below.", destination_id: Destination.find_by(name: "Kruger National Park").id)
Activity.create(name: "Cultural Village Visit", activity_type: "Cultural", description: "Immerse yourself in the rich culture and traditions of the local Shangaan community with a visit to a traditional village in Kruger National Park, including a tour, a performance, and a meal.", destination_id: Destination.find_by(name: "Kruger National Park").id)
# Florence
Activity.create(name: "Uffizi Gallery Tour", activity_type: "Art and Culture", description: "Discover the masterpieces of the Uffizi Gallery, one of the world's top art museums, with works by Michelangelo, Leonardo da Vinci, Botticelli, and more.", destination_id: Destination.find_by(name: "Florence").id)
Activity.create(name: "Cooking Class", activity_type: "Food and Drink", description: "Learn the secrets of Tuscan cuisine with a hands-on cooking class in Florence, using fresh local ingredients and traditional techniques.", destination_id: Destination.find_by(name: "Florence").id)
Activity.create(name: "Duomo and Baptistry Visit", activity_type: "Historical", description: "Visit the stunning Cathedral of Santa Maria del Fiore, also known as the Duomo, and the nearby Baptistry, with their intricate architecture and historical significance.", destination_id: Destination.find_by(name: "Florence").id)
Activity.create(name: "Piazzale Michelangelo Sunset View", activity_type: "Scenic", description: "Enjoy a stunning panoramic view of Florence at sunset from the Piazzale Michelangelo, a scenic lookout on a hilltop overlooking the city.", destination_id: Destination.find_by(name: "Florence").id)
# São Paulo
Activity.create(name: "Street Art Tour", activity_type: "Art and Culture", description: "Explore the vibrant street art scene of São Paulo on a guided walking tour, discovering colorful murals, graffiti, and urban installations.", destination_id: Destination.find_by(name: "Sao Paulo").id)
Activity.create(name: "Football Match Experience", activity_type: "Sports", description: "Experience the passion and excitement of Brazilian football with a visit to a local stadium in São Paulo, cheering on the home team with enthusiastic fans.", destination_id: Destination.find_by(name: "Sao Paulo").id)
Activity.create(name: "São Paulo Museum of Art Visit", activity_type: "Art and Culture", description: "Discover the diverse collections of the São Paulo Museum of Art, including works by Brazilian and international artists, housed in a striking modernist building.", destination_id: Destination.find_by(name: "Sao Paulo").id)
Activity.create(name: "Mercado Municipal Food Tour", activity_type: "Food and Drink", description: "Taste the flavors of São Paulo at the Mercado Municipal, a historic market with over 300 vendors selling a wide variety of local and international foods.", destination_id: Destination.find_by(name: "Sao Paulo").id)
# Dubrovnik
Activity.create(name: "Old Town Walking Tour", activity_type: "Historical", description: "Discover the rich history and culture of Dubrovnik's Old Town on a guided walking tour, including landmarks such as the City Walls, the Rector's Palace, and the Stradun.", destination_id: Destination.find_by(name: "Dubrovnik").id)
Activity.create(name: "Sea Kayaking Adventure", activity_type: "Outdoor", description: "Explore the stunning coastline of Dubrovnik on a sea kayaking excursion, with opportunities to swim, snorkel, and enjoy the scenic views.", destination_id: Destination.find_by(name: "Dubrovnik").id)
Activity.create(name: "Cable Car Ride to Mount Srd", activity_type: "Scenic", description: "Take a cable car ride to the top of Mount Srd for breathtaking views of Dubrovnik and the surrounding Adriatic Sea, with a restaurant and souvenir shop at the summit.", destination_id: Destination.find_by(name: "Dubrovnik").id)
Activity.create(name: "Wine Tasting in Konavle Valley", activity_type: "Food and Drink", description: "Sample the wines of the Konavle Valley, a picturesque wine-growing region near Dubrovnik, with a guided tour and tasting at a local winery.", destination_id: Destination.find_by(name: "Dubrovnik").id)
# Munich
Activity.create(name: "Marienplatz Walking Tour", activity_type: "Historical", description: "Explore Munich's historic city center on a guided walking tour of Marienplatz, including landmarks such as the Old Town Hall, the New Town Hall, and the Frauenkirche.", destination_id: Destination.find_by(name: "Munich").id)
Activity.create(name: "Beer Garden Visit", activity_type: "Food and Drink", description: "Experience the authentic Bavarian beer garden culture with a visit to one of Munich's many beer gardens, enjoying a cold brew and traditional food in a convivial atmosphere.", destination_id: Destination.find_by(name: "Munich").id)
Activity.create(name: "Bavarian Alps Day Trip", activity_type: "Nature", description: "Escape the city and explore the natural beauty of the Bavarian Alps on a day trip from Munich, with stunning scenery, hiking opportunities, and quaint villages.", destination_id: Destination.find_by(name: "Munich").id)
Activity.create(name: "BMW Museum Visit", activity_type: "Art and Culture", description: "Discover the history and innovation of BMW cars at the BMW Museum in Munich, with exhibits and interactive displays showcasing the brand's iconic designs and technologies.", destination_id: Destination.find_by(name: "Munich").id)
# Cape Verde
Activity.create(name: "Sal Island Beach Day", activity_type: "Nature", description: "Relax on the white-sand beaches of Sal Island, one of the most popular destinations in Cape Verde, with turquoise waters, gentle waves, and plenty of sunshine.", destination_id: Destination.find_by(name: "Cape Verde").id)
Activity.create(name: "Cidade Velha Historical Tour", activity_type: "Historical", description: "Explore the historic town of Cidade Velha, a UNESCO World Heritage Site and the former capital of Cape Verde, with landmarks such as the Pillory Square, the Nossa Senhora do Rosário Church, and the Fort Real de São Filipe.", destination_id: Destination.find_by(name: "Cape Verde").id)
Activity.create(name: "Scuba Diving Excursion", activity_type: "Outdoor", description: "Discover the underwater world of Cape Verde with a scuba diving excursion, exploring coral reefs, shipwrecks, and colorful marine life.", destination_id: Destination.find_by(name: "Cape Verde").id)
Activity.create(name: "Fogo Island Volcano Hike", activity_type: "Adventure", description: "Embark on a challenging but rewarding hike to the summit of Fogo Island's active volcano, with stunning views of the landscape and the chance to observe the volcano's activity.", destination_id: Destination.find_by(name: "Cape Verde").id)
# Banff
Activity.create(name: "Rocky Mountains Hike", activity_type: "Adventure", description: "Embark on a hike through the stunning Rocky Mountains, with breathtaking views of the surrounding landscape and a chance to see local wildlife.", destination_id: Destination.find_by(name: "Banff").id)
Activity.create(name: "Canoeing on Lake Louise", activity_type: "Outdoor", description: "Explore the serene waters of Lake Louise by canoe, with stunning views of the surrounding mountains and glaciers.", destination_id: Destination.find_by(name: "Banff").id)
Activity.create(name: "Skiing in Banff National Park", activity_type: "Winter Sports", description: "Hit the slopes at one of Banff's world-renowned ski resorts, with a variety of terrain for skiers and snowboarders of all levels.", destination_id: Destination.find_by(name: "Banff").id)
Activity.create(name: "Banff Gondola Ride", activity_type: "Sightseeing", description: "Take a scenic gondola ride to the top of Sulphur Mountain, with breathtaking views of Banff National Park and the surrounding mountains.", destination_id: Destination.find_by(name: "Banff").id)
# Amalfi
Activity.create(name: "Boat tour of the Amalfi Coast", activity_type: "Sightseeing", description: "Take a boat tour of the Amalfi Coast and enjoy the stunning views of the colorful villages and cliffs from the sea.", destination_id: Destination.find_by(name: "Amalfi Coast").id)
Activity.create(name: "Hiking in Valle delle Ferriere", activity_type: "Adventure", description: "Embark on a beautiful hike in Valle delle Ferriere, a nature reserve in Amalfi with waterfalls, lush vegetation and a variety of bird species.", destination_id: Destination.find_by(name: "Amalfi Coast").id)
Activity.create(name: "Cooking class in Positano", activity_type: "Cultural", description: "Learn to cook traditional Italian dishes in a cooking class in Positano, a charming town on the Amalfi Coast known for its gastronomy.", destination_id: Destination.find_by(name: "Amalfi Coast").id)
Activity.create(name: "Visit to Pompeii and Mount Vesuvius", activity_type: "Historical", description: "Explore the ancient ruins of Pompeii and hike to the summit of Mount Vesuvius, the volcano that famously destroyed the city in 79 AD.", destination_id: Destination.find_by(name: "Amalfi Coast").id)

puts 'creating example trips...'

Trip.create(start_date: Date.new(2023, 4, 2), end_date: Date.new(2023, 4, 29), user_id: 5, destination_id: 33)
Trip.create(start_date: Date.new(2023, 4, 4), end_date: Date.new(2023, 4, 25), user_id: 6, destination_id: 33)
Trip.create(start_date: Date.new(2023, 4, 9), end_date: Date.new(2023, 4, 22), user_id: 3, destination_id: 33)

puts 'creating example matches...'

Match.create(user_id: 5, trip_id: 2)
Match.create(user_id: 5, trip_id: 3)
Match.create(user_id: 6, trip_id: 1)
Match.create(user_id: 6, trip_id: 3)
Match.create(user_id: 3, trip_id: 1)
Match.create(user_id: 3, trip_id: 2)

puts 'creating example chat_requests...'

ChatRequest.create(sender_id: 5, receiver_id: 3, trip_id: 1, status: "pending_approval")
ChatRequest.create(sender_id: 6, receiver_id: 3, trip_id: 2, status: "pending_approval")

puts 'NOT creating example chatrooms...'

puts 'NOT creating example messages...'

puts 'COMPLETED!'
