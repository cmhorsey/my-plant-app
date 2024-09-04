FactoryBot.define do
  factory :plant do
    name { "Rose" }
    scientific_name { "Rosa" }
    plant_type { "Flower" }
    edible { false }
    pet_safe { true }
    description { "A beautiful rose plant." }
  end
end
