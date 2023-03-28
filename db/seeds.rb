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

puts 'COMPLETED!'
