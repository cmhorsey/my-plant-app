# db/seeds.rb

# Clear existing data
GardenPlant.delete_all
Garden.delete_all
Plant.delete_all

# Create users
user1 = User.create!(
  email: "user1@example.com",
  password: "password1",
  username: "gardener_jane"
)

user2 = User.create!(
  email: "user2@example.com",
  password: "password2",
  username: "plantlover_john"
)

# Create gardens associated with users
garden1 = Garden.create!(
  name: "Sunny Backyard",
  location: "123 Garden Street",
  notes: "Lots of sunlight, ideal for vegetables.",
  user: user1
)

garden2 = Garden.create!(
  name: "Shady Spot",
  location: "456 Shady Lane",
  notes: "Perfect for shade-loving plants and ferns.",
  user: user2
)

# Create plants associated with users
plant1 = Plant.create!(
  name: "Tomato",
  scientific_name: "Solanum lycopersicum",
  plant_type: "Vegetable",
  edible: true,
  pet_safe: true,
  user: user1
)

plant2 = Plant.create!(
  name: "Basil",
  scientific_name: "Ocimum basilicum",
  plant_type: "Herb",
  edible: true,
  pet_safe: true,
  user: user1
)

plant3 = Plant.create!(
  name: "Fern",
  scientific_name: "Polypodiopsida",
  plant_type: "Indoor Plant",
  edible: false,
  pet_safe: false,
  user: user2
)

# Create garden plants
GardenPlant.create!(
  garden: garden1,
  plant: plant1,
  plant_date: Date.today - 30,
  quantity: 5,
  last_watered: Date.today - 2
)

GardenPlant.create!(
  garden: garden1,
  plant: plant2,
  plant_date: Date.today - 20,
  quantity: 3,
  last_watered: Date.today - 1
)

GardenPlant.create!(
  garden: garden2,
  plant: plant3,
  plant_date: Date.today - 15,
  quantity: 2,
  last_watered: Date.today - 3
)
