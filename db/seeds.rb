puts "Deleting database"

Pooch.destroy_all

puts "Creating pooches..."

Pooch.create!([{
    name: "Luna",
    age: 4,
    keywords: "Toy Poodle, Female, Spayed, Beige/Cream, Brooklyn NY",
    description: "Luna Bell is a Toy Poodle who enjoys cuddles and rubs. She is a sweet soul.",
    image: '/app/assets/images/luna.jpg'
  },
  {
    name: "Goon",
    age: 3,
    keywords: "Female, Brooklyn NY",
    description: "Goon who enjoys michief, lots of toys and rubs.",
  },
  {
    name: "Rex",
    age: 5,
    keywords: "Male, Decatur AL",
    description: "Rex was a stray found in Decatur, Alabama. We are unsure of his neuter status.",
  },
  {
    name: "Skip",
    age: 7,
    keywords: "Male, San Francisco CA",
    description: "Skip likes to skip to the park on weekends. Very agile.",
  },
  {
    name: "Laila",
    age: 3,
    keywords: "Female, Not Spayed, Lisbon Portugal",
    description: "Laila is a protective dog. She needs to be in a household instead of outdoors.",
  },
  {
    name: "Delilah",
    age: 2,
    keywords: "Female, Spayed, Brooklyn NY",
    description: "no description listed",
  },
  {
    name: "Tucker",
    age: 4,
    keywords: "Male, Neutered, Brown, Chester PA",
    description: "Tucker is an active dog. Loves to eat. Deserves a one-story home, since he is afraid of steps.",
  },
  {
    name: "Ace",
    age: 13,
    keywords: "Male, Neutered, Black and White, Washington DC",
    description: "Sweet, protective dog who is elderly and deserves a calm home.",
  },
  {
    name: "Brownie",
    age: 10,
    keywords: "Sweet, protective dog who is elderly and deserves a calm home.",
    description: 1.week.ago
  },
  {
    name: "Soul",
    age: 2,
    keywords: "Male, Not Neutered, Cream, Macon GA",
    description: "Known for chewing toys and personals and snatching souls lol.",
  },
  {
    name: "Sugarfoot",
    age: 3,
    keywords: "Female, Not Spayed, Biloxi MS",
    description: "Got loose on the property",
  },
  {
    name: "Larry",
    age: 4,
    keywords: "Male, Neutered, Cream, Chicago IL",
    description: "No description listed.",
  }])
  
  puts "Created #{Pooch.count} pooches!"
