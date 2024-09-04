# # Clear existing data
GardenPlant.delete_all
Garden.delete_all
User.delete_all
Plant.delete_all

# Create Users
user1 = User.create!(
  email: "alice12@example.com",
  username: "alice",
  password: "password123"
)

user2 = User.create!(
  email: "bob21@example.com",
  username: "bob",
  password: "password456"
)

# Create Gardens
garden1 = Garden.create!(
  name: "Sunny Garden",
  location: "Backyard",
  notes: "Receives full sun throughout the day.",
  user_id: user1.id
)

garden2 = Garden.create!(
  name: "Shady Retreat",
  location: "Side yard",
  notes: "Mostly shaded, suitable for shade-loving plants.",
  user_id: user2.id
)

# Create Plants
plant1 = Plant.create!(
  name: "Tomato",
  scientific_name: "Solanum lycopersicum",
  plant_type: "Vegetable",
  edible: true,
  pet_safe: false,
  description: "A popular edible plant with red fruits."
)

plant2 = Plant.create!(
  name: "Basil",
  scientific_name: "Ocimum basilicum",
  plant_type: "Herb",
  edible: true,
  pet_safe: true,
  description: "A fragrant herb commonly used in cooking."
)

plant3 = Plant.create!(
  name: "Fern",
  scientific_name: "Nephrolepis exaltata",
  plant_type: "Fern",
  edible: false,
  pet_safe: true,
  description: "A lush, green fern ideal for shaded areas."
)

# Create GardenPlants
GardenPlant.create!(
  garden_id: garden1.id,
  plant_id: plant1.id,
  quantity: 5,
  last_watered: Date.today - 2.days
)

GardenPlant.create!(
  garden_id: garden1.id,
  plant_id: plant2.id,
  quantity: 10,
  last_watered: Date.today - 1.day
)

GardenPlant.create!(
  garden_id: garden2.id,
  plant_id: plant3.id,
  quantity: 3,
  last_watered: Date.today - 3.days
)
