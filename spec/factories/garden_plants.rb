FactoryBot.define do
  factory :garden_plant do
    association :garden
    association :plant
    plant_date { Date.today - 10 }
    quantity { 5 }
    last_watered { Date.today - 2 }
  end
end
