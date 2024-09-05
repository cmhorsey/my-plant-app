FactoryBot.define do
  factory :garden_plant do
    association :garden
    association :plant
    quantity { 5 }
    last_watered { Date.today - 2 }
  end
end
